<?php
declare(strict_types=1);
namespace GarvinHicking\ValidationDummy\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Style\SymfonyStyle;
use TYPO3\CMS\Core\Database\ConnectionPool;
use TYPO3\CMS\Core\Mail\MailerInterface;
use TYPO3\CMS\Core\Mail\TemplatedEmailFactory;
use TYPO3\CMS\Core\Type\ContextualFeedbackSeverity;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Reports\Service\StatusService;
use TYPO3\CMS\Reports\Status;

#[AsCommand(name: 'system:status', description: 'Show system status')]
final class SystemStatusCommand extends Command
{
    public function __construct(
        private readonly StatusService $statusService,
        private readonly ConnectionPool $connectionPool,
    ) {
        parent::__construct();
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        $systemStatus = $this->statusService->getDetailedSystemStatus();

        /*
        $mailer = GeneralUtility::makeInstance(MailerInterface::class);
        $templatedEmailFactory = GeneralUtility::makeInstance(TemplatedEmailFactory::class);

        // Merge extension-specific paths with global configuration
        $email = $templatedEmailFactory->createWithOverrides(
            templateRootPaths: [9 => 'EXT:gh_validationdummy/Resources/Private/Templates/Email/'],
            layoutRootPaths: [99 => 'EXT:gh_validationdummy/Resources/Private/Layouts/'],
        );
        $email
            ->setTemplate('Default')
            ->to('admin@example.com')
            ->from('system@example.com')
            ->subject('Scheduled Report');

        $mailer->send($email);
        return Command::SUCCESS;
        */

        $flattened = $this->wazzup($systemStatus);

        $io = new SymfonyStyle($input, $output);
        if ($flattened === []) {
            $io->success('Systems are a go.');
            return Command::SUCCESS;
        }

        $io->error(sprintf('🚨 Danger, Will Robinson! (%d actually)', count($flattened)));
        $idx = 0;
        foreach ($flattened as $status) {
            $idx++;
            $io->error(sprintf('Error #%d', $idx));
            $output->writeln($status);
        }
        return Command::FAILURE;
    }

    /**
     * @param array<string, array<string, Status>> $statusCollection An array of Status objects.
     */
    private function wazzup(array $statusCollection): array
    {
        $flattened = [];
        foreach ($statusCollection as $providerStatuses) {
            /** @var  $status */
            foreach ($providerStatuses as $status) {
                if ((int)$status->getSeverity()->value <= 0) {
                    continue;
                }
                $flattened[] = (string)$status . CRLF . $status->getMessage();
            }
        }
        return $flattened;
    }
}
