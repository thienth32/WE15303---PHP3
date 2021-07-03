<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;
use App\Models\User;
use App\Models\Category;

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
    return view('welcome');
});

Route::get('users', [HomeController::class, 'index']);
Route::get('users/detail/{id}', [HomeController::class, 'detail']);


// truyền dữ liệu từ đường dẫn a => đường dẫn b
Route::get('info', [HomeController::class, 'infoForm']);
Route::get('luu-info', [HomeController::class, 'saveInfo'])->name('save.info');
Route::get('test-connection', function(){
    $users = User::all();
    $cates = Category::all();
    dd($cates);
});

/**
 * trong form đc sinh ra từ url: 'info'
 * thêm các field:
 * tuổi
 * giới tính (3 thẻ input radio: value "1" - nam, "2" - nữ, "3" - khác)
 * đã kết hôn hay chưa (1 thẻ input checkbox có value = "1" - nếu tích thì là đã kết hôn rồi, 
 * nếu không tích thì là đang độc thân)
 * sau đó submit form lên đường dẫn 'luu-info' 
 * tại đây sinh ra 1 màn hình hiển thị thông tin dữ liệu của người dùng vừa gửi data ra html
 */