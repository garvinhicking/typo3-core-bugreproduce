<?php

declare(strict_types=1);

namespace Garvinhicking\ExtbaseUpload\Service;

use TYPO3\CMS\Core\DataHandling\ItemProcessorInterface;
use TYPO3\CMS\Core\Schema\Struct\SelectItem;
use TYPO3\CMS\Core\Site\Entity\SiteInterface;

class ItemProcessor implements ItemProcessorInterface
{
    /**
     * @param SelectItem[] $items
     * @return SelectItem[]
     */
    public function processItems(
        string $table,
        string $field,
        array $row,
        array $items,
        array $fieldConfiguration,
        array $processorParameters,
        int $realPid,
        SiteInterface $site,
        ?array $fieldTSconfig = null,
        ?array $additionalParameters = null,
    ): array {
        $items[] = new SelectItem($fieldConfiguration['type'], 'label1:' . $processorParameters['foo'], 'value1:' .  $processorParameters['foo']);
        return $items;
    }
}
