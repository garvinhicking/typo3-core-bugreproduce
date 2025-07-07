<?php

declare(strict_types=1);

namespace GarvinHicking\TcaCountryExample\Domain\Model\Enum;

enum AvailableCountries: string
{
    case DE = 'DE';
    case AT = 'AT';
    case CH = 'CH';
    case FR = 'FR';
    case IT = 'IT';
}
