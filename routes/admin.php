<?php
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
    Route::post('/cap-nhat/{id}', [ProductController::class, 'saveEdit']);
    
});

?>