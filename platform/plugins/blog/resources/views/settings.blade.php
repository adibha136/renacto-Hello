<div class="flexbox-annotated-section">
    <div class="flexbox-annotated-section-annotation">
        <div class="annotated-section-title pd-all-20">
            <h2>{{ trans('plugins/blog::base.settings.title') }}</h2>
        </div>
        <div class="annotated-section-description pd-all-20 p-none-t">
            <p class="color-note">{{ trans('plugins/blog::base.settings.description') }}</p>
        </div>
    </div>

    <div class="flexbox-annotated-section-content">
        <div class="wrapper-content pd-all-20">
            <div class="form-group mb-3">
                <div class="form-group mb-3">
                    <input type="hidden" name="blog_post_schema_enabled" value="0">
                    <label>
                        <input type="checkbox" value="1" @if (setting('blog_post_schema_enabled', 1)) checked @endif name="blog_post_schema_enabled">
                        {{ trans('plugins/blog::base.settings.enable_blog_post_schema') }}
                    </label>
                    {!! Form::helper(trans('plugins/blog::base.settings.enable_blog_post_schema_description')) !!}
                </div>
                <div class="form-group">
                    <label class="text-title-field"
                           for="blog_post_schema_type">{{ trans('plugins/blog::base.settings.schema_type') }}
                    </label>
                    {!! Form::customSelect('blog_post_schema_type', ['NewsArticle' => 'NewsArticle', 'News' => 'News', 'Article' => 'Article', 'BlogPosting' => 'BlogPosting'], setting('blog_post_schema_type', 'NewsArticle')) !!}
                </div>
            </div>
        </div>
    </div>
</div>
