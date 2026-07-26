<?php
namespace GarvinHicking\ValidationDummy\Event;

use TYPO3\CMS\Core\Attribute\AsEventListener;
use TYPO3\CMS\Form\Event\AfterFormDefinitionValidationConfigurationIsBuiltEvent;

#[AsEventListener(
    identifier: 'my-extension/after-form-definition-validation-configuration-is-built',
)]
final readonly class Listener
{
    public function __invoke(AfterFormDefinitionValidationConfigurationIsBuiltEvent $event): void
    {
        $configuration = $event->getConfiguration();
        $configuration['formElements']['Text']['additionalPropertyPaths'][]
            = 'properties.my.custom.property';
        $event->setConfiguration($configuration);
    }
}
