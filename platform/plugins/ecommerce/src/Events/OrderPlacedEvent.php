<?php

namespace Botble\Ecommerce\Events;

use Botble\Base\Events\Event;
use Botble\Ecommerce\Models\Order;
use Illuminate\Queue\SerializesModels;

class OrderPlacedEvent extends Event
{
    use SerializesModels;

    public function __construct(public Order $order)
    {
    }
}
