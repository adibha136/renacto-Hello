<?php

namespace Botble\Location\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Location\Repositories\Interfaces\CountryInterface;
use Botble\Location\Http\Requests\StateRequest;
use Botble\Location\Models\State;

class StateForm extends FormAbstract
{
    public function __construct(protected CountryInterface $countryRepository)
    {
        parent::__construct();
    }

    public function buildForm(): void
    {
        $countries = $this->countryRepository->pluck('countries.name', 'countries.id');

        $this
            ->setupModel(new State())
            ->setValidatorClass(StateRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label' => trans('core/base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'placeholder' => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('abbreviation', 'text', [
                'label' => trans('plugins/location::location.abbreviation'),
                'label_attr' => ['class' => 'control-label'],
                'attr' => [
                    'placeholder' => trans('plugins/location::location.abbreviation_placeholder'),
                    'data-counter' => 10,
                ],
            ])
            ->add('country_id', 'customSelect', [
                'label' => trans('plugins/location::state.country'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'class' => 'select-search-full',
                ],
                'choices' => [0 => trans('plugins/location::state.select_country')] + $countries,
            ])
            ->add('order', 'number', [
                'label' => trans('core/base::forms.order'),
                'label_attr' => ['class' => 'control-label'],
                'attr' => [
                    'placeholder' => trans('core/base::forms.order_by_placeholder'),
                ],
                'default_value' => 0,
            ])
            ->add('is_default', 'onOff', [
                'label' => trans('core/base::forms.is_default'),
                'label_attr' => ['class' => 'control-label'],
                'default_value' => false,
            ])
            ->add('status', 'customSelect', [
                'label' => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'choices' => BaseStatusEnum::labels(),
            ])
            ->setBreakFieldPoint('status');
    }
}
