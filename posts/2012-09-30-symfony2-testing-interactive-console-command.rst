Symfony2: testing interactive console command
=============================================

When writing console applications, you often need to ask the user a question. To achieve
this in a Symfony2 console command, you can use the dialog helper. Let's see how do to use
it::

    class MyCommand extends Command
    {
        protected function execute(InputInterface $input, OutputInterface $output)
        {
            $directory = $input->getArgument('directory');

            if (is_dir($directory) && !is_writable($directory)) {
                $output->writeln(sprintf('The "%s" directory is not writable', $directory));
                return;
            }

            if (!is_dir($directory)) {
                $dialog = $this->getHelperSet()->get('dialog');

                if (!$dialog->askConfirmation($output, '<question>Directory doesn\'t exist. Would you like to try to create it?</question>')) {
                    return;
                }

                @mkdir($directory);
                if (!is_dir($directory)) {
                    $output->writeln('<error>Couldn\'t create directory.</error>');
                    return;
                }
            }

            $output->writeln('Directory created');

            /* ... */
        }
    }

The $dialog variable, an instance of DialogHelper class is what allows you to interact
with the user. This cool feature is obviously hardly testable - providing input
when running a PHPUnit test suite may be a little tricky. However, you can easily mock the
helper with PHPUnit's Mock Framework, defining the input before it is called in the test::


    class MyCommand test extends \PHPUnit_Framework_TestCase
    {
        public function testCreateDirectory()
        {
            $app = new Application();
            $app->add(new CreateProjectCommand());
            $command = $app->find('create-directory');

            $command = $this->getCommand();

            // We mock the DialogHelper
            $dialog = $this->getMock('Symfony\Component\Console\Helper\DialogHelper', array('askConfirmation'));
            $dialog->expects($this->at(0))
                ->method('askConfirmation')
                ->will($this->returnValue(true)); // The user confirms

            // We override the standard helper with our mock
            $command->getHelperSet()->set($dialog, 'dialog');

            $tester = new CommandTester($command);
            $tester->execute(array(
                'command' => $command->getName(),
                'directory' => __DIR__ . self::TEST_DIR . '/test',
            ));

            $this->assertNotRegexp('/Directory created/', $tester->getDisplay());
        }
    }

