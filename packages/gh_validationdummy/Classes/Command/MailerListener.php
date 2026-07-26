<?php
declare(strict_types=1);

namespace GarvinHicking\ValidationDummy\Command;

use TYPO3\CMS\Backend\Event\AddUserSettingsJavaScriptModulesEvent;
use TYPO3\CMS\Core\Attribute\AsEventListener;
use TYPO3\CMS\Core\Mail\Event\BeforeMailerSentMessageEvent;
use TYPO3\CMS\Core\Page\PageRenderer;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Setup\Event\AddJavaScriptModulesEvent;

final class MailerListener
{
    #[AsEventListener('my-package/mymailer')]
    public function __invoke(BeforeMailerSentMessageEvent $event): void
    {
        $message = $event->getMessage();
        $message->from('customized@example.com');
        $message->assign('myvariable', 'anything');
        $event->setMessage($message);
    }

    #[AsEventListener('my-package/mymoduleevent')]
    public function __jsinvoke(AddJavaScriptModulesEvent $event): void
    {
        $pageRenderer = GeneralUtility::makeInstance(PageRenderer::class);
        $pageRenderer->addCssFile(
            'EXT:gh_validationdummy/Resources/Public/Css/style.css',
            'stylesheet',
            'all',
            'blarg',
            inline: true,
        );
        return;
        static $count = 0;
        $count++;
        header('X-Listener1-' . $count . ': true');
        $event->addJavaScriptModule('@garvin/jsdebug/Testing/test1.js');
    }

    #[AsEventListener('my-package/mymoduleevent2')]
    public function __jsinvoke2(AddUserSettingsJavaScriptModulesEvent $event): void
    {
        return;
        $pageRenderer = GeneralUtility::makeInstance(PageRenderer::class);
        $pageRenderer->addCssFile(
            'EXT:gh_validationdummy/Resources/Public/Css/style.css',
            'stylesheet',
            'all',
            'blarg',
            inline: true,
        );

        static $count = 0;
        $count++;
        header('X-Listener2-' . $count . ': true');
        $event->addJavaScriptModule('@garvin/jsdebug/Testing/test2.js');
    }

}
