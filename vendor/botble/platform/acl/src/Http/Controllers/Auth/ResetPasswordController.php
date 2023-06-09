<?php

namespace Botble\ACL\Http\Controllers\Auth;

use Botble\Base\Facades\Assets;
use Botble\Base\Facades\BaseHelper;
use Botble\ACL\Traits\ResetsPasswords;
use Botble\Base\Facades\PageTitle;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;

class ResetPasswordController extends BaseController
{
    use ResetsPasswords;

    protected string $redirectTo = '/';

    public function __construct()
    {
        $this->middleware('guest');
        $this->redirectTo = BaseHelper::getAdminPrefix();
    }

    public function showResetForm(Request $request, $token = null)
    {
        PageTitle::setTitle(trans('core/acl::auth.reset.title'));

        Assets::addScripts(['jquery-validation', 'form-validation'])
            ->addStylesDirectly('vendor/core/core/acl/css/animate.min.css')
            ->addStylesDirectly('vendor/core/core/acl/css/login.css')
            ->removeStyles([
                'select2',
                'fancybox',
                'spectrum',
                'simple-line-icons',
                'custom-scrollbar',
                'datepicker',
            ])
            ->removeScripts([
                'select2',
                'fancybox',
                'cookie',
            ]);

        $email = $request->input('email');

        return view('core/acl::auth.reset', compact('email', 'token'));
    }
}
