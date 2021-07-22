<form action="" method="POST" enctype="multipart/form-data">
    @csrf
    <div>
        <label for="">Tên sản phẩm</label>
        <input type="text" name="name" value="{{$product->name}}">
    </div>
    <div>
        <label for="">Danh mục</label>
        <select name="cate_id" >
            @foreach($cates as $c)
            <option 
                @if($c->id == $product->cate_id)
                selected
                @endif
            value="{{$c->id}}">{{$c->name}}</option>
            @endforeach
        </select>
    </div>
    <div>
        <label for="">ảnh</label>
        <input type="file" name="file_upload">
    </div>
    <div>
        <label for="">Giá</label>
        <input type="text" name="price" value="{{$product->price}}">
    </div>
    <div>
        <label for="">Số lượng</label>
        <input type="text" name="quantity" value="{{$product->quantity}}">
    </div>
    <div class="">
        <button type="submit">Lưu</button>
    </div>
</form>