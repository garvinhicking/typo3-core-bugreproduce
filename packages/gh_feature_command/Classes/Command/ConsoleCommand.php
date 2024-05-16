<?php
namespace GarvinHicking\CoreFeatureCommand\Command;

use Symfony\Component\Console\Command\Command;
use TYPO3\CMS\Core\Attribute\AsConsoleCommand;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

#[AsConsoleCommand(command: 'gh:command', description: 'My description')]
class ConsoleCommand extends Command
    {
    protected function configure(): void
    {
        $this->setHelp('This command does nothing. It always succeeds.');
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        // Do awesome stuff
        echo "YES";
        return Command::SUCCESS;
    }
}