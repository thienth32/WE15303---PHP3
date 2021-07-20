<form action="" method="POST" enctype="multipart/form-data">
    @csrf
    <div>
        <label for="">Tên sản phẩm</label>
        <input type="text" name="name">
    </div>
    <div>
        <label for="">Danh mục</label>
        <select name="cate_id" >
            @foreach($cates as $c)
            <option value="{{$c->id}}">{{$c->name}}</option>
            @endforeach
        </select>
    </div>
    <div>
        <label for="">ảnh</label>
        <input type="file" name="file_upload">
    </div>
    <div>
        <label for="">Giá</label>
        <input type="text" name="price">
    </div>
    <div>
        <label for="">Số lượng</label>
        <input type="text" name="quantity">
    </div>
    <div class="">
        <button type="submit">Lưu</button>
    </div>
</form>