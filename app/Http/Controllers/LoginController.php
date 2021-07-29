<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function loginForm(){
        return view('auth.login');
    }

    public function postLogin(Request $request){
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){
            return redirect(route('product.index'));
        }else {
            return redirect()->back()->with('msg', 'Tài khoản/mật khẩu không chính xác');
        }
    }
}
