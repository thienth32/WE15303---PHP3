<ul>
    @foreach($products as $p)
    <li>{{(($products->currentPage()-1)*20)+$loop->iteration}} - {{$p->name}}</li>
    @endforeach
</ul>
{{$products->links()}}