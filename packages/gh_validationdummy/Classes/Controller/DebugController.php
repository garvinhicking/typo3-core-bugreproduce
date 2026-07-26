<?php
namespace GarvinHicking\ValidationDummy\Controller;

use GarvinHicking\ValidationDummy\Domain\Repository\PersonRepository;
use Psr\Http\Message\ResponseInterface;
use TYPO3\CMS\Core\Site\Entity\Site;
use TYPO3\CMS\Core\Site\SiteFinder;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;

class DebugController extends ActionController
{
    public function __construct(protected PersonRepository $personRepository)
    {
    }

    public function listAction(): ResponseInterface
    {
        /*
        $persons = $this->personRepository->findAll();
        $this->view->assign('persons', $persons);
        */

        // Please use DI if possible, this is only an example!
        /** @var SiteFinder $siteFinder */
        //$siteFinder = GeneralUtility::makeInstance(\TYPO3\CMS\Core\Site\SiteFinder::class);
        //$conf = $siteFinder->getSiteByIdentifier('commonbase')->getSettings()->get('commonsitepackagePid');
        //\TYPO3\CMS\Extbase\Utility\DebuggerUtility::var_dump($conf);
        //die('x');
        //$pid = $siteFinder->getSiteByIdentifier('commonbase')->getConfiguration()['commonsitepackagePid'];
        //die('PID: ' . $pid);
        /** @var Site $site */
        //$site = $this->request->getAttribute('site');
        //$config = $site->getConfiguration()['commonsitepackagePid'];
        //die($config);*/

        return $this->htmlResponse('PHPTEST');
    }
}
