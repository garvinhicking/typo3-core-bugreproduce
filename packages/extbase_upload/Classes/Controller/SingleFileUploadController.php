<?php

declare(strict_types=1);

namespace Garvinhicking\ExtbaseUpload\Controller;

use Garvinhicking\ExtbaseUpload\Domain\Model\Singlefile;
use Garvinhicking\ExtbaseUpload\Domain\Repository\SinglefileRepository;
use Psr\Http\Message\ResponseInterface;
use TYPO3\CMS\Extbase\Annotation\IgnoreValidation;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;
use TYPO3\CMS\Extbase\Annotation\FileUpload;

class SingleFileUploadController extends ActionController
{
    public function __construct(protected readonly SinglefileRepository $singlefileRepository)
    {
    }

    public function listAction(): ResponseInterface
    {
        /*
        $x = new FileUpload();
        \TYPO3\CMS\Extbase\Utility\DebuggerUtility::var_dump($x);
        die('x');
        */
        $this->view->assignMultiple([
            'items' => $this->singlefileRepository->findAll(),
        ]);

        return $this->htmlResponse();
    }

    public function newAction(): ResponseInterface
    {
        $this->view->assignMultiple([
            'item' => GeneralUtility::makeInstance(Singlefile::class),
        ]);

        return $this->htmlResponse();
    }

    public function createAction(Singlefile $item): ResponseInterface
    {
        $item->setPid((int)($this->settings['singleFileUploadPid'] ?? 0));
        $this->singlefileRepository->add($item);

        return $this->redirect('list');
    }

    public function showAction(Singlefile $item): ResponseInterface
    {
        $this->view->assignMultiple([
            'item' => $item,
        ]);

        return $this->htmlResponse();
    }

    /**
     * @IgnoreValidation("item")
     */
    public function editAction(Singlefile $item): ResponseInterface
    {
        $this->view->assignMultiple([
            'item' => $item,
        ]);

        return $this->htmlResponse();
    }

    public function updateAction(Singlefile $item): ResponseInterface
    {
        $this->singlefileRepository->update($item);

        return $this->redirect('list');
    }
}
