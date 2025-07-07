<?php

declare(strict_types=1);

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

namespace TYPO3Tests\BlogExample\Controller;

use Psr\Http\Message\ResponseInterface;
use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;
use TYPO3Tests\BlogExample\Domain\Repository\BlogRepository;

class FrontendController extends ActionController
{
    public function __construct(
        private readonly BlogRepository $blogRepository,
    ) {
    }

    public function listAction(): ResponseInterface
    {
        $blogs = $this->blogRepository->findAll();
        $this->view->assign('blogs', $blogs);
        return $this->htmlResponse();
    }

    public function detailsAction(?Blog $blog = null): ResponseInterface
    {
        return $this->htmlResponse($blog ? $blog->getTitle() : '');
    }

    public function testSingleAction(Blog $blog): ResponseInterface
    {
        return $this->htmlResponse($blog->getTitle());
    }

    public function testFormAction(): ResponseInterface
    {
        return $this->htmlResponse('testFormAction');
    }
}
