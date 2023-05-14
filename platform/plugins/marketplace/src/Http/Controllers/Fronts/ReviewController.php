<?php

namespace Botble\Marketplace\Http\Controllers\Fronts;

use Botble\Base\Facades\Assets;
use Botble\Marketplace\Tables\ReviewTable;
use Botble\Marketplace\Facades\MarketplaceHelper;

class ReviewController
{
    public function index(ReviewTable $table)
    {
        page_title()->setTitle(__('Reviews'));

        Assets::addStylesDirectly('vendor/core/plugins/ecommerce/css/review.css');

        return $table->render(MarketplaceHelper::viewPath('dashboard.table.base'));
    }
}
