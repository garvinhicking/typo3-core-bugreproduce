<?php

/*
 * This file is part of the TYPO3 CMS project.
 *
 * It is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License, either version 2
 * of the License, or any later version.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 *
 * The TYPO3 project - inspiring people to share!
 */

namespace TYPO3Tests\BlogExample\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Style\SymfonyStyle;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3Tests\BlogExample\Domain\Repository\PostRepository;

use TYPO3\CMS\Core\Resource\Processing\LocalCropScaleMaskHelper;
use TYPO3\CMS\Core\Resource\Processing\LocalPreviewHelper;

#[AsCommand('blogxample:listpost', 'List Posts')]
class ListPostCommand extends Command
{
    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        serialize($GLOBALS['TYPO3_CONF_VARS']['SYS']['lang']['parser']);
        serialize($GLOBALS['TYPO3_CONF_VARS']['SYS']['lang']['requireApprovedLocalizations']);
        serialize($GLOBALS['TYPO3_CONF_VARS']['SYS']['lang']['format']);
        serialize($GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['lang']['availableLanguages']);
        serialize($GLOBALS['TYPO3_CONF_VARS']['SYS']['locallangXMLOverride']);

        /*
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['lang']['parser']
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['lang']['requireApprovedLocalizations']
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['lang']['format']
        $GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['lang']['availableLanguages']
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['locallangXMLOverride']
        */

        $io = new SymfonyStyle($input, $output);
        $io->title($this->getDescription());

        $this->content = 'test';
        $repository = GeneralUtility::makeInstance(PostRepository::class);
        $result = [];
        $io->success(sprintf('Found %d posts:', count($repository->findAll())));

        $object = new LocalCropScaleMaskHelper();
        $anotherObject = new LocalPreviewHelper();

        return Command::SUCCESS;
    }
}
