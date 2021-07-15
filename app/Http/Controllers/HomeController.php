<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Product;
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

    public function productList(){
        $products = Product::orderByDesc('id')->paginate(20);
        return view('product.list', compact('products'));
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
        // dd($request->all());
        $name =  $request->name;
        $age =  $request->age;
        $gender =  "";
        if($request->gender == 1){
            $gender = "Nam";
        }else if($request->gender == 2){
            $gender = "Nữ";
        }else {
            $gender = "Khác";
        }
        $isMarried =  $request->has('isMarried') ? "Đã lập gia đình" : "Độc thân"; 
        return view('users.show-info', compact('name', 'age', 'gender', 'isMarried'));
    }
}
