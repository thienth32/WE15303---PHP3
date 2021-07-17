<fieldset>
    <legend>Tìm kiếm</legend>
    <form action="" method="get">
        <label for="">Tên sp:</label>
        <input type="text" name="keyword">
        <br>
        <label for="">Danh mục:</label>
        <select name="cate_id" id="">
            <option value="">Tất cả</option>
            @foreach($cates as $c)
            <option value="{{$c->id}}">{{$c->name}}</option>
            @endforeach
        </select>
        <br>
        <label for="">Sắp xếp theo</label>
        <select name="order_by" id="">
            <option value="">Mặc định</option>
            @foreach(config('common.product_order_by') as $k => $val)
            <option value="{{$k}}">{{$val}}</option>
            @endforeach
        </select>
        <br>
        <button type="submit">Tìm kiếm</button>
    </form>
</fieldset>

<table>
    <thead>
        <th>STT</th>
        <th>Tên SP</th>
        <th>Ảnh</th>
        <th>Danh mục</th>
        <th>Giá</th>
        <th>Số lượng</th>
        <th>

        </th>
    </thead>
    <tbody>
        @foreach($product_data as $p)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$p->name}}</td>
            <td>
                <img src="{{asset('storage/' . $p->image)}}" width="70">
            </td>
            <td>{{$p->cate_id}}</td>
            <td>{{$p->price}}</td>
            <td>{{$p->quantity}}</td>
            <td>

            </td>
        </tr>
        @endforeach
    </tbody>
</table>