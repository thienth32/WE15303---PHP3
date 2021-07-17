<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;

class ProductController extends Controller
{
    public function index(Request $request){
        // nhận dữ liệu từ form gửi lên & thực hiện filter
        $productQuery = Product::where('name', 'like', "%".$request->keyword."%");
        if($request->has('cate_id') && $request->cate_id > 0){
            $productQuery = $productQuery->where('cate_id', $request->cate_id);
        }
        if($request->has('order_by') && $request->order_by > 0){
            if($request->order_by == 1){
                $productQuery = $productQuery->orderBy('name');
            }else if($request->order_by == 2){
                $productQuery = $productQuery->orderByDesc('name');
            }else if($request->order_by == 3){
                $productQuery = $productQuery->orderBy('price');
            }else if($request->order_by == 4){
                $productQuery = $productQuery->orderByDesc('price');
            }else if($request->order_by == 5){
                $productQuery = $productQuery->orderBy('quantity');
            }else{
                $productQuery = $productQuery->orderByDesc('quantity');
            }
        }
        // 1. dựa vào model Product lấy toàn bộ data trong db
        $cates = Category::all();
        $products = $productQuery->get();
        // 2. sinh ra màn hình danh sách với dữ liệu đã lấy đc
        return view('admin.product.index', 
            [
                'product_data' => $products,
                'cates' => $cates,
            ]);
    }
}
