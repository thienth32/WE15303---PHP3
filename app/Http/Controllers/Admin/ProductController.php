<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;

class ProductController extends Controller
{
    public function index(Request $request){
        $pagesize = config('common.default_page_size');
        // nhận dữ liệu từ form gửi lên & thực hiện filter
        $productQuery = Product::where('name', 'like', "%".$request->keyword."%");

        if($request->has('cate_id') && $request->cate_id > 0){
            $productQuery->where('cate_id', $request->cate_id);
        }
        if($request->has('order_by') && $request->order_by > 0){
            if($request->order_by == 1){
                $productQuery->orderBy('name');
            }else if($request->order_by == 2){
                $productQuery->orderByDesc('name');
            }else if($request->order_by == 3){
                $productQuery->orderBy('price');
            }else if($request->order_by == 4){
                $productQuery->orderByDesc('price');
            }else if($request->order_by == 5){
                $productQuery->orderBy('quantity');
            }else{
                $productQuery->orderByDesc('quantity');
            }
        }
        // 1. dựa vào model Product lấy toàn bộ data trong db
        $cates = Category::all();
        $products = $productQuery->paginate($pagesize);
        $products->appends($request->except('page'));
        // dd($products->currentPage());
        // 2. sinh ra màn hình danh sách với dữ liệu đã lấy đc
        return view('admin.product.index', 
            [
                'product_data' => $products,
                'cates' => $cates,
            ]);
    }

    public function remove($id){
        Product::destroy($id);
        return redirect()->back();
    }

    public function addForm(){
        $cates = Category::all();
        return view('admin.product.add-form', compact('cates'));
    }

    public function saveAdd(Request $request){
        $model = new Product();
        // gán gtri cho các thuộc tính của object sử dụng massassign ($fillable trong model)
        $model->fill($request->all());
        // lưu ảnh
        if($request->hasFile('file_upload')){
            $newFileName = uniqid(). '-' . $request->file_upload->getClientOriginalName();
            $path = $request->file_upload->storeAs('public/uploads/products', $newFileName);
            $model->image = str_replace('public/', '', $path);
        }
        $model->save();
        return redirect(route('product.index'));
        
    }
}
