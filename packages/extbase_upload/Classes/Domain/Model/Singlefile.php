<?php

declare(strict_types=1);

namespace Garvinhicking\ExtbaseUpload\Domain\Model;

use TYPO3\CMS\Extbase\Annotation\FileUpload;
use TYPO3\CMS\Extbase\Domain\Model\FileReference;
use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;
use TYPO3\CMS\Extbase\Persistence\ObjectStorage;
use Symfony\Component\Validator\Constraints as Assert;

class Singlefile extends AbstractEntity
{
    #[Assert\Iban(message: 'LLL:EXT:core/Resources/Private/Language/locallang_general.xlf:LGL.hidden')]
    protected string $iban = '';

    public function getIban(): string
    {
        return $this->iban;
    }

    public function setIban(string $iban): void
    {
        $this->iban = $iban;
    }

    /*
    #[Assert\Bic(message: 'Please enter a valid BIC.')]
    protected string $bic = '';

    #[Assert\Country(message: 'Please country the country')]
    protected string $country = '';
    */

    #[FileUpload([
        'validation' => [
            'maxFiles' => 1,
        ],
        'uploadFolder' => '1:/user_upload/',
    ])]
    protected ?FileReference $fileUnrestrictedSingle = null;

    #[FileUpload([
        'validation' => [
            'mimeType' => [
                'allowedMimeTypes' => ['image/jpeg'],
            ],
        ],
        'uploadFolder' => '1:/user_upload/',
    ])]
    protected ?FileReference $fileImageSingle = null;

    #[FileUpload([
        'validation' => [
            'mimeType' => [
                'allowedMimeTypes' => ['application/x-dosexec', 'application/x-msdos-program'],
            ],
        ],
        'uploadFolder' => '1:/user_upload/',
    ])]
    protected ?FileReference $fileAppSingle = null;

    #[FileUpload([
        'validation' => [
            'fileExtension' => ['allowedFileExtensions' => ['exe']],
        ],
        'uploadFolder' => '1:/user_upload/',
    ])]
    protected ?FileReference $fileExtensionSingle = null;

    #[FileUpload([
        'validation' => [
            'fileExtension' => ['useStorageDefaults' => true],
        ],
        'uploadFolder' => '1:/user_upload/',
    ])]
    protected ?FileReference $fileExtensionstorageSingle = null;

    #[FileUpload([
        'validation' => [
            'fileExtension' => [
                'allowedFileExtensions' => ['exe'],
                'useStorageDefaults' => true
            ],
        ],
        'uploadFolder' => '1:/user_upload/',
    ])]
    protected ?FileReference $fileExtensionstorageplusSingle = null;

    public function getFileUnrestrictedSingle(): ?FileReference
    {
        return $this->fileUnrestrictedSingle;
    }

    public function setFileUnrestrictedSingle(?FileReference $fileUnrestrictedSingle): void
    {
        $this->fileUnrestrictedSingle = $fileUnrestrictedSingle;
    }

    public function getFileImageSingle(): ?FileReference
    {
        return $this->fileImageSingle;
    }

    public function setFileImageSingle(?FileReference $fileImageSingle): void
    {
        $this->fileImageSingle = $fileImageSingle;
    }

    public function getFileAppSingle(): ?FileReference
    {
        return $this->fileAppSingle;
    }

    public function setFileAppSingle(?FileReference $fileAppSingle): void
    {
        $this->fileAppSingle = $fileAppSingle;
    }

    public function getFileExtensionSingle(): ?FileReference
    {
        return $this->fileExtensionSingle;
    }

    public function setFileExtensionSingle(?FileReference $fileExtensionSingle): void
    {
        $this->fileExtensionSingle = $fileExtensionSingle;
    }

    public function getFileExtensionstorageSingle(): ?FileReference
    {
        return $this->fileExtensionstorageSingle;
    }

    public function setFileExtensionstorageSingle(?FileReference $fileExtensionstorageSingle): void
    {
        $this->fileExtensionstorageSingle = $fileExtensionstorageSingle;
    }

    public function getFileExtensionstorageplusSingle(): ?FileReference
    {
        return $this->fileExtensionstorageplusSingle;
    }

    public function setFileExtensionstorageplusSingle(?FileReference $fileExtensionstorageplusSingle): void
    {
        $this->fileExtensionstorageplusSingle = $fileExtensionstorageplusSingle;
    }

    // ------------------------ MULTI ---------------------------------------
    #[FileUpload([
        'validation' => [
            'maxFiles' => 10,
        ],
        'uploadFolder' => '1:/user_upload/',
    ])]
    /**
     * @var ObjectStorage<FileReference>
     */
    protected ObjectStorage $fileUnrestrictedMulti;

    #[FileUpload([
        'validation' => [
            'maxFiles' => 10,
            'mimeType' => [
                'allowedMimeTypes' => ['image/jpeg'],
            ],
        ],
        'uploadFolder' => '1:/user_upload/',
    ])]
    /**
     * @var ObjectStorage<FileReference>
     */
    protected ObjectStorage $fileImageMulti;

    #[FileUpload([
        'validation' => [
            'maxFiles' => 10,
            'mimeType' => [
                'allowedMimeTypes' => ['application/x-dosexec', 'application/x-msdos-program'],
            ],
        ],
        'uploadFolder' => '1:/user_upload/',
    ])]
    /**
     * @var ObjectStorage<FileReference>
     */
    protected ObjectStorage $fileAppMulti;

    #[FileUpload([
        'validation' => [
            'maxFiles' => 10,
            'fileExtension' => ['allowedFileExtensions' => ['exe']],
        ],
        'uploadFolder' => '1:/user_upload/',
    ])]
    /**
     * @var ObjectStorage<FileReference>
     */
    protected ObjectStorage $fileExtensionMulti;

    #[FileUpload([
        'validation' => [
            'maxFiles' => 10,
            'fileExtension' => ['useStorageDefaults' => true],
        ],
        'uploadFolder' => '1:/user_upload/',
    ])]
    /**
     * @var ObjectStorage<FileReference>
     */
    protected ObjectStorage $fileExtensionstorageMulti;

    #[FileUpload([
        'validation' => [
            'maxFiles' => 10,
            'fileExtension' => [
                'allowedFileExtensions' => ['exe'],
                'useStorageDefaults' => true
            ],
        ],
        'uploadFolder' => '1:/user_upload/',
    ])]
    /**
     * @var ObjectStorage<FileReference>
     */
    protected ObjectStorage $fileExtensionstorageplusMulti;

    public function __construct()
    {
        $this->initializeObject();
    }

    public function initializeObject(): void
    {
        $this->fileUnrestrictedMulti = new ObjectStorage();
        $this->fileImageMulti = new ObjectStorage();
        $this->fileAppMulti = new ObjectStorage();
        $this->fileExtensionMulti = new ObjectStorage();
        $this->fileExtensionstorageMulti = new ObjectStorage();
        $this->fileExtensionstorageplusMulti = new ObjectStorage();
    }

    public function getFileUnrestrictedMulti(): ObjectStorage
    {
        return $this->fileUnrestrictedMulti;
    }

    public function setFileUnrestrictedMulti(ObjectStorage $fileUnrestrictedMulti): void
    {
        $this->fileUnrestrictedMulti = $fileUnrestrictedMulti;
    }

    public function getFileImageMulti(): ObjectStorage
    {
        return $this->fileImageMulti;
    }

    public function setFileImageMulti(ObjectStorage $fileImageMulti): void
    {
        $this->fileImageMulti = $fileImageMulti;
    }

    public function getFileAppMulti(): ObjectStorage
    {
        return $this->fileAppMulti;
    }

    public function setFileAppMulti(ObjectStorage $fileAppMulti): void
    {
        $this->fileAppMulti = $fileAppMulti;
    }

    public function getFileExtensionMulti(): ObjectStorage
    {
        return $this->fileExtensionMulti;
    }

    public function setFileExtensionMulti(ObjectStorage $fileExtensionMulti): void
    {
        $this->fileExtensionMulti = $fileExtensionMulti;
    }

    public function getFileExtensionstorageMulti(): ObjectStorage
    {
        return $this->fileExtensionstorageMulti;
    }

    public function setFileExtensionstorageMulti(ObjectStorage $fileExtensionstorageMulti): void
    {
        $this->fileExtensionstorageMulti = $fileExtensionstorageMulti;
    }

    public function getFileExtensionstorageplusMulti(): ObjectStorage
    {
        return $this->fileExtensionstorageplusMulti;
    }

    public function setFileExtensionstorageplusMulti(ObjectStorage $fileExtensionstorageplusMulti): void
    {
        $this->fileExtensionstorageplusMulti = $fileExtensionstorageplusMulti;
    }


}
