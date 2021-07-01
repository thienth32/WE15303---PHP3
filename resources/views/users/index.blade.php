<table>
    <thead>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Detail</th>
    </thead>
    <tbody>
        @foreach ($users as $item)
            <tr>
                <td>{{$item->id}}</td>
                <td><?php echo $item->name ?></td>
                <td>{{$item->email}}</td>
                <td>
                    <a href="users/detail/{{$item->id}}">Chi tiết</a>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>