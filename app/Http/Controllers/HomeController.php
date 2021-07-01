<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        // lấy toàn bộ dữ liệu trong bảng users gán cho biến $users
        $users = User::all();
        // hiển thị giao diện trong thư mục views/users/index.blade.php
        // truyền biến $users ra ngoài views
        return view('users.index', compact('users'));
    }

    public function detail($thienth){
        dd($thienth);
        // $user = User::find($thienth);
        // dd($user);
    }

    public function infoForm(){
        return view('users.info_form');
    }

    public function saveInfo(Request $request){
        $name =  $request->name;
        $age =  $request->age;
        dd($name, $age);
    }
}
