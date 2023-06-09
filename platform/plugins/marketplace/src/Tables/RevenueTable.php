<?php

namespace Botble\Marketplace\Tables;

use Botble\Base\Facades\BaseHelper;
use Botble\Marketplace\Repositories\Interfaces\RevenueInterface;
use Botble\Table\Abstracts\TableAbstract;
use Collective\Html\HtmlFacade as Html;
use Illuminate\Contracts\Routing\UrlGenerator;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Database\Query\Builder as QueryBuilder;
use Illuminate\Http\JsonResponse;
use Yajra\DataTables\DataTables;

class RevenueTable extends TableAbstract
{
    protected $hasFilter = true;

    protected $hasOperations = false;

    protected $hasCheckbox = false;

    public function __construct(DataTables $table, UrlGenerator $urlGenerator, RevenueInterface $revenueRepository)
    {
        $this->repository = $revenueRepository;
        parent::__construct($table, $urlGenerator);
    }

    public function ajax(): JsonResponse
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('current_balance', function ($item) {
                return format_price($item->current_balance);
            })
            ->editColumn('amount', function ($item) {
                return format_price($item->amount) . $item->description_tooltip;
            })
            ->editColumn('sub_amount', function ($item) {
                return format_price($item->sub_amount) . $item->description_tooltip;
            })
            ->editColumn('fee', function ($item) {
                return format_price($item->fee);
            })
            ->editColumn('order_id', function ($item) {
                if (! $item->order->id) {
                    return '&mdash;';
                }

                return Html::link(
                    route('marketplace.vendor.orders.edit', $item->order->id),
                    $item->order->code,
                    ['target' => '_blank']
                );
            })
            ->editColumn('created_at', function ($item) {
                return BaseHelper::formatDate($item->created_at);
            });

        return $this->toJson($data);
    }

    public function query(): Relation|Builder|QueryBuilder
    {
        $query = $this->repository->getModel()
            ->select([
                'id',
                'sub_amount',
                'fee',
                'amount',
                'current_balance',
                'currency',
                'order_id',
                'created_at',
                'type',
                'description',
            ])
            ->with(['order'])
            ->where('customer_id', auth('customer')->id());

        return $this->applyScopes($query);
    }

    public function columns(): array
    {
        return [
            'id' => [
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
                'class' => 'text-start',
            ],
            'order_id' => [
                'title' => trans('plugins/ecommerce::order.order'),
                'class' => 'text-center',
            ],
            'sub_amount' => [
                'title' => trans('plugins/ecommerce::order.sub_amount'),
                'class' => 'text-center',
            ],
            'fee' => [
                'title' => trans('plugins/ecommerce::shipping.fee'),
                'class' => 'text-center',
            ],
            'amount' => [
                'title' => trans('plugins/ecommerce::order.amount'),
                'class' => 'text-center',
            ],
            'currency' => [
                'title' => trans('plugins/ecommerce::payment.currency'),
                'class' => 'text-center',
            ],
            'current_balance' => [
                'title' => trans('plugins/marketplace::marketplace.current_balance'),
                'class' => 'text-center',
            ],
            'created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'class' => 'text-center',
            ],
        ];
    }

    public function getDefaultButtons(): array
    {
        return [
            'export',
            'reload',
        ];
    }
}
