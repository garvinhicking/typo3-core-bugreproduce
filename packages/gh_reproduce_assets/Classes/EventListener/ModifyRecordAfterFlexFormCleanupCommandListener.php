<?php
declare(strict_types=1);

namespace GarvinHicking\CoreBugReproduceAssets\EventListener;

use TYPO3\CMS\Core\Attribute\AsEventListener;
use TYPO3\CMS\Lowlevel\Event\ModifyRecordAfterFlexFormCleanupCommandEvent;

final class ModifyRecordAfterFlexFormCleanupCommandListener
{
    #[AsEventListener('my-package/modify-record-after-flexform-cleanup')]
    public function __invoke(ModifyRecordAfterFlexFormCleanupCommandEvent $event): void
    {
        if (!$event->isPersistCleanedXml()) {
            // Skip - no changes performed, no need to inspect further for our case.
            return;
        }

        // Disable modifications for specific CType
        if (($event->getRecord()['CType'] ?? '') === 'MyLegacyContentElement') {
            // This state will indicate that the changed XML shall not be persisted:
            $event->setPersistCleanedXml(false);
        }

        // Disable modifications for specifically stored records
        // (hard-coded pid's could be exchanged with rootline checks or site setting
        // variables)
        if (
            $event->getTableName() === 'tt_content' &&
            in_array($event->getRecord()['pid'], [4, 8, 15, 16, 23, 42], true)
        ) {
            $event->setPersistCleanedXml(false);
        }
    }
}
