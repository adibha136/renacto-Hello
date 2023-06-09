<?php

namespace Botble\Base\Forms\Fields;

use Botble\Base\Facades\Assets;
use Kris\LaravelFormBuilder\Fields\FormField;

class TimeField extends FormField
{
    protected function getTemplate(): string
    {
        Assets::addScripts(['timepicker'])
            ->addStyles(['timepicker']);

        return 'core/base::forms.fields.time';
    }
}
