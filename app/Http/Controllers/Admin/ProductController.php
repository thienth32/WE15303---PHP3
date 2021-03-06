<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProductFormRequest;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\ProductTag;
use App\Models\Tag;
use Illuminate\Support\Facades\Auth;

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

        // $productQuery->where('created_by', Auth::id());


        $products = $productQuery->paginate($pagesize);
        $products->load('category', 'tags');
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

    public function editForm($id){
        $product = Product::find($id);
        if(!$product){
            return redirect()->back();
        }
        $cates = Category::all();
        return view('admin.product.edit-form', compact('product', 'cates'));
    }

    public function saveAdd(ProductFormRequest $request){
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

    public function saveEdit($id, ProductFormRequest $request){
        $model = Product::find($id);
        if(!$model){
            return redirect(route('product.index'));
        }
        $model->fill($request->all());
        if($request->hasFile('file_upload')){
            $newFileName = uniqid(). '-' . $request->file_upload->getClientOriginalName();
            $path = $request->file_upload->storeAs('public/uploads/products', $newFileName);
            $model->image = str_replace('public/', '', $path);
        }
        $model->save();
        return redirect(route('product.index'));
    }

    public function demo(){
        $product = Product::find(9);
        
        $tagArr = [1, 3];
        $product->tags()->sync($tagArr);
        return 'done';
        
    }

}
