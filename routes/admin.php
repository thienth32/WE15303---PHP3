<?php

use App\Http\Controllers\Admin\CategoryController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\ProductController;


Route::get('dashboard', function(){
    return "Admin Dashboard";
});

Route::prefix('san-pham')->group(function () {
    Route::get('/', [ProductController::class, 'index'])->name('product.index');
    Route::get('/xoa/{id}', [ProductController::class, 'remove'])->name('product.remove');
    Route::get('/tao-moi', [ProductController::class, 'addForm'])->name('product.add');
    Route::post('/tao-moi', [ProductController::class, 'saveAdd']);
    Route::get('/cap-nhat/{id}', [ProductController::class, 'editForm'])->name('product.edit');
    
    Route::post('/cap-nhat/{id}', 
                    [ProductController::class, 'saveEdit'])->middleware('log_edit_product');
                    
    Route::get('demo-product-tag', [ProductController::class, 'demo']);
});
Route::prefix('danh-muc')->group(function(){
    Route::get('/', [CategoryController::class, 'index'])->name('cate.index');
});


Route::view('demo', 'admin.layouts.main');

?>