<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;
use App\Models\User;
use App\Models\Category;
use App\Models\Product;
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
Route::get('fake-password/{mk?}', function($mk = '123456'){
    return Hash::make($mk);
});
Route::get('demo-name/{id}', function($id){
    return $id;
})->middleware(['auth'])->name('demo_route');