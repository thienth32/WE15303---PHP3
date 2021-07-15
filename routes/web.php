<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;
use App\Models\User;
use App\Models\Category;
use App\Models\Product;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {

    $products = Product::all();
    return view('welcome', compact('products'));
})->name('homepage');

Route::get('products', [HomeController::class, 'productList']);

Route::get('users/{name}/{age?}', function($name, $age = 1){
    return route('demo_route', ['id' => 100]);
});

Route::get('dang-nhap', function(){
    return "trang đăng nhập";
})->name('login');

Route::get('demo-name/{id}', function($id){
    return $id;
})->middleware(['auth'])->name('demo_route');