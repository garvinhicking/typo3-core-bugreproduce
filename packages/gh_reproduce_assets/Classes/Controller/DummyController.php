<?php
namespace GarvinHicking\CoreBugReproduceAssets\Controller;

use Psr\Http\Message\ResponseInterface;
use TYPO3\CMS\Core\EventDispatcher\EventDispatcher;

class DummyController extends \TYPO3\CMS\Extbase\Mvc\Controller\ActionController
{
    public function listAction(): ResponseInterface
    {
        return $this->htmlResponse();
    }
}
