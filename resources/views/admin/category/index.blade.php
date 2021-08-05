@extends('admin.layouts.main')
@section('content')
<table class="table table-hover">
    <thead>
        <th>STT</th>
        <th>Tên</th>
        <th>Số lượng sản phẩm</th>
        <th>
            <a href="" class="btn btn-sm btn-success">Tạo mới</a>
        </th>
    </thead>
    <tbody>
        @foreach ($cates as $c)
            <tr>
                <td>{{$loop->iteration}}</td>
                <td>{{$c->name}}</td>
                <td>{{count($c->products)}}</td>
                <td>
                    <a href="" class="btn btn-sm btn-info">Sửa</a>
                    <a href="" class="btn btn-sm btn-danger">Xóa</a>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>
    
@endsection