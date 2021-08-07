<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;
use App\Models\Product;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

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

Route::get('dang-nhap', [LoginController::class, 'loginForm'])->name('login');
Route::post('dang-nhap', [LoginController::class, 'postLogin']);

Route::get('dang-xuat', function(){
    Auth::logout();
    return redirect(route('homepage'));
})->name('login');

Route::get('fake-password/{mk?}', function($mk = '123456'){
    return Hash::make($mk);
});
Route::get('demo-name/{id}', function($id){
    return $id;
})->middleware(['auth'])->name('demo_route');

Route::get('demo-phan-quyen', function(){
    $admin = User::find(4);
    $thienth = User::find(5);

    $admin->givePermissionTo('show product');
    $admin->givePermissionTo('remove user');

    $thienth->givePermissionTo('show product');
    $thienth->givePermissionTo('add product');
    $thienth->givePermissionTo('edit product');
    $thienth->givePermissionTo('remove product');
    
});