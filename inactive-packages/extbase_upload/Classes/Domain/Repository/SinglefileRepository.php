<?php

declare(strict_types=1);

namespace Derhansen\ExtbaseUpload\Domain\Repository;

use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Persistence\Generic\Typo3QuerySettings;
use TYPO3\CMS\Extbase\Persistence\Repository;

class SinglefileRepository extends Repository
{
    public function initializeObject(): void
    {
        $this->defaultQuerySettings = GeneralUtility::makeInstance(Typo3QuerySettings::class);
        $this->defaultQuerySettings->setRespectStoragePage(false);
    }

    public function findAllNotInline()
    {
        $query = $this->createQuery();
        $query->matching($query->equals('inlinetest', 0));
        return $query->execute();
    }
}
