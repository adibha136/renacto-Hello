@extends(BaseHelper::getAdminMasterLayoutTemplate())
@section('content')
    {!! Form::open(['route' => ['slug.settings']]) !!}
        <div class="max-width-1200">
            <div class="flexbox-annotated-section">

                <div class="flexbox-annotated-section-annotation">
                    <div class="annotated-section-title pd-all-20">
                        <h2>{{ trans('packages/slug::slug.settings.title') }}</h2>
                    </div>
                    <div class="annotated-section-description pd-all-20 p-none-t">
                        <p class="color-note">{{ trans('packages/slug::slug.settings.description') }}</p>
                    </div>

                    @if (config('packages.slug.general.enable_slug_translator'))
                        <div class="pd-all-20">
                            <p>{{ trans('packages/slug::slug.settings.available_variables') }}:</p>
                            @foreach(SlugHelper::getTranslator()->getVariables() as $key => $item)
                                <p>
                                    <code class="p-1">
                                        <strong>{{ $key }}</strong> - {{ $item['label'] }}
                                    </code>
                                </p>
                            @endforeach
                        </div>
                    @endif
                </div>

                <div class="flexbox-annotated-section-content">
                    <div class="wrapper-content pd-all-20">
                        @foreach(SlugHelper::supportedModels() as $model => $name)
                            <div class="form-group mb-3">
                                <label class="text-title-field" for="{{ SlugHelper::getPermalinkSettingKey($model) }}">{{ trans('packages/slug::slug.prefix_for', ['name' => $name]) }}</label>
                                <input
                                    type="text"
                                    @class(['next-input form-control', 'is-invalid' => $errors->has(SlugHelper::getPermalinkSettingKey($model))])
                                    name="{{ SlugHelper::getPermalinkSettingKey($model) }}"
                                    id="{{ SlugHelper::getPermalinkSettingKey($model) }}"
                                    value="{{ ltrim(rtrim(old(SlugHelper::getPermalinkSettingKey($model), SlugHelper::getPrefix($model, '', false)), '/'), '/') }}"
                                >
                                <input type="hidden" name="{{ SlugHelper::getPermalinkSettingKey($model) }}-model-key" value="{{ $model }}">
                                @if ($errors->has(SlugHelper::getPermalinkSettingKey($model)))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first(SlugHelper::getPermalinkSettingKey($model)) }}</strong>
                                    </span>
                                @endif
                                {!! Form::helper(trans('packages/slug::slug.settings.preview') . ': <a href="javascript:void(0)">' . url((string)SlugHelper::getPrefix($model)) . '/' . Str::slug('your url here'). '</a>') !!}
                            </div>
                        @endforeach

                        <hr>

                        <div class="form-group mb-3">
                            <label class="text-title-field"
                                   for="slug_turn_off_automatic_url_translation_into_latin">{{ trans('packages/slug::slug.settings.turn_off_automatic_url_translation_into_latin') }}
                            </label>
                            <label class="me-2">
                                <input type="radio" name="slug_turn_off_automatic_url_translation_into_latin"
                                       value="1"
                                       @if (SlugHelper::turnOffAutomaticUrlTranslationIntoLatin()) checked @endif>{{ trans('core/setting::setting.general.yes') }}
                            </label>
                            <label>
                                <input type="radio" name="slug_turn_off_automatic_url_translation_into_latin"
                                       value="0"
                                       @if (!SlugHelper::turnOffAutomaticUrlTranslationIntoLatin()) checked @endif>{{ trans('core/setting::setting.general.no') }}
                            </label>
                        </div>
                    </div>
                </div>

            </div>

            <div class="flexbox-annotated-section" style="border: none">
                <div class="flexbox-annotated-section-annotation">
                    &nbsp;
                </div>
                <div class="flexbox-annotated-section-content">
                    <button class="btn btn-info" type="submit">{{ trans('core/setting::setting.save_settings') }}</button>
                </div>
            </div>
        </div>
    {!! Form::close() !!}
@endsection
