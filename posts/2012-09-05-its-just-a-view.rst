It's just a view. And it's just a configuration
===============================================

Recently I've been working on improving an old data gathering project. The analys was
visiting the client, gathering the data and inserting it to the application. The data was
then presented in a HTML table layout with a possibility to export it in PDF or Excel file
format.

The client has requested a possibility to modifiy the colum names. Here's how it looked
like::

    --------------------------------------
    | id | question | response | comment |
    |----|----------|----------|---------|

Which was written as a standard combination of tr, tds and some text inside.

Then I looked into the Excel file and I've seen another combination of tr and tds and text
inside (which was not exactly the same event if it was meant to be).

Here's a sample::

    <?php

    class ExcelCreator
    {
        /* ... */

        private function createHeader()
        {
            $this->excel->getActiveSheet()->setCellValue('A1', 'Id');
            $this->excel->getActiveSheet()->setCellValue('B1', 'Question');
            $this->excel->getActiveSheet()->setCellValue('C1', 'Response');
            $this->excel->getActiveSheet()->setCellValue('D1', 'Note');
        }

        private function populateRows()
        {
            /* ... */
        }

    }

After that a loop populated other rows.

So need to display the same data, but in two completly different views and interfaces,
with two completly different interfaces. How could we refactor that, keeping it simple, to
avoid repeating ouerselves (and let client configure each colum name)?

Lets do the obvious and modify the HTML by passing an array of items to it::

    <?php
    $columnNames = array('id', 'question', 'response', 'comment');

    echo '<tr>';
    foreach ($columnNames as $name) {
        echo '<td>' . $name . '</td>';
    }
    echo '</tr>';

Then I put the array in a Project object, accessible in both the Excel generator and the
html template. Next, I slightly modified the excel generation (I pass over the getCellIds()
method impelementation details, but it uses range('A', 'Z') if you have to ask)::

    <?php

    class ExcelCreator
    {
        /* ... */

        private function createHeader($columnNames)
        {
            $columnNumber = count($columnNames);
            $cellIds = $this->getCellIds('1', $columnNumber);

            for ($i = 0; $i < $columnNumber; $i++)
            {
                $this->excel->getActiveSheet()
                    ->setCellValue($cellIds[$i], $columnNames[$i]);
            }
        }

        private function populateRows()
        {
            /* ... */
        }

        private function getCellIds($row, $lenght, $offset = null)
        {
            /* ... */
        }
    }

As you can see, both these implementations have a side effect - they allow specyfing a
different number of columns, what makes them more generic. I'm happy with that because now
another problem arises - sometimes we need to show all the columns and sometimes only few
of them. So I need to modify those foreach loops that were displaying all four properties
from my objects in collection and make them configurable. And, because I cannot forget
about the DRY rule - I need the same configuration for my header generation.

Lets do it on populateRows() method::

    <?php

    class ExcelCreator
    {
        /* ... */
        private function populateRows()
        {
            $results = $this->getResults();

            $worksheet = $this->excel->getActiveSheet()
            foreach ($results as $key => $result) {
                $worksheet->setCellValueByColumnAndRow(0, $key + 1, $result->getId());
                $worksheet->setCellValueByColumnAndRow(1, $key + 1, $result->getQuestion());
                $worksheet->setCellValueByColumnAndRow(2, $key + 1, $result->getResponse());
                $worksheet->setCellValueByColumnAndRow(3, $key + 1, $result->getComment());
            }
        }
    }

By converting the previous $columNames array to a multidimensional $columnConfiguration array I can get the following code::
    
    <?php

    class ExcelCreator
    {
        /* ... */

        /**
         * $columnConfiguration now contains a set of arrays with 'name' and 'getter' keys
         */
        private function populateRows($columnConfiguration)
        {
            $results = $this->getResults();

            $worksheet = $this->excel->getActiveSheet()
            foreach ($results as $key => $result) {
                foreach ($columnConfiguration as $columnNumber => $columnDef) {
                    $worksheet->setCellValueByColumnAndRow($columnNumber, $key + 1, $result->{$columnDef['getter']}());
                }
            }
        }
    }

Now we can also use the 'name' element to generate column names. In a later refactoring,
the $columnConfiguration array is a good candidate for an object - but we will focus on
other more important things. This can be done when some more complex configuration options
will be needed.

The client is now perfectly happy - the code is flexible enough to allow configuring a
column name and changing displayed columns. And that would be the end of the story -
because we need to keep the code simple and avoid over-refactoring and
over-architecturization. Acutally that's the code the client got. 

But there's still one theoretical problem left, so we can try to solve it. Lets see the
final implementation for row creation in the Excel and HTML view::

    <?php

    // HTML
    foreach ($rows as $key => $result) {
        echo '<tr>';
        foreach ($columnConfiguration as $columnNumber => $columnDef) {
            echo '<td>' . $result->{$columnDef['getter']}() . '</td>';
        }
        echo '</tr>';
    }

    // Excel
    foreach ($results as $key => $result) {
        foreach ($columnConfiguration as $columnNumber => $columnDef) {
            $worksheet->setCellValueByColumnAndRow($columnNumber, $key + 1, $result->{$columnDef['getter']}());
        }
    }

This is a clear duplication of logic - event if it's just few lines. Imagine that we
rename the 'getter' key in column definition, or we want to pass a parameter to this
function - we would have to modify it in two places. Or what if we wanted to give a grey
background to every second row?

To fix this, we need a simple data formatter. The best way to treat a tabular data is on a
per-row basis, so we'll focus on this. That's the main difference, between the two code
samples. Lets see the easiest way to implement a per-row display function for both cases::

    <?php

    class HTMLRowWriterClass
    {
        public static function displayRow($data) {
            echo '<tr>';
            foreach ($data as $value) {
                echo '<td>' . $value . '</td>';
            }
            echo '</tr>';
        }
    }

    class ExcelRowWriterClass
    {
        public static function ($data, $worksheet, $rowNumber) {
            foreach ($data as $columnNumber => $value) {
                $worksheet->setCellValueByColumnAndRow($columnNumber, $rowNumber, $value);
            }
        }
    }

The Excel implementation needs some additional data, like the current worksheet and the
row number. But both those informations can be stored in the class itself - the worksheet
will not change between addRow calls - a table is displayed on one sheet only. And the row
number depends on how many times the function has already been called. To acheive this we
need to drop the "static" keyword (`static is bad`_, anyway) and deal with some full-fledged
objects::

    <?php

    class ExcelRowWriterClass
    {
        private $excelWriter;
        private $currentRow = 0;
        private $curretnColumn = 0;

        public function __construct($excelWriter)
        {
            $this->excelWriter = $excelWriter;
        }

        protected function addRow(array $cellValues)
        {
            $row = $this->getNextRow();
            $worksheet = $this->excelWriter->getActiveSheet();

            foreach ($cellValues as $value) {
                $worksheet->setCellValueByColumnAndRow($this->getNextColumn(), $row, $value);
            }
        }
        
        private function getNextColumn()
        {
            return $this->currentRow++;
        }

        private function getNextRow()
        {
            return $this->getNextRow++;
        }
    }
    
The last thing to do, is to put all of this together, with some nice abstract class
grouping the common methods. See this gist_ for complete implementation.

.. _gist: https://gist.github.com/3710733
.. _`static is bad`: http://kore-nordmann.de/blog/0103_static_considered_harmful.html
