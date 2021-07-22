<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Product extends Model
{
    use HasFactory;
    protected $table = 'products';

    public $fillable = [
        'name', 'cate_id', 'price', 'quantity'
    ];

    public function quantities(){
        return $this->hasMany(ProductQuantity::class, 'product_id');
    }

    public function getQuantity(){
        return DB::table('products')->
            select(
                "products.id as product_id",
                "products.name as product_name",
                "sizes.id as size_id",
                "sizes.name as size_name",
                "colors.id as color_id",
                "colors.name as color_name",
                "product_quantities.amount as amount"
            )
            ->join('product_quantities', 'product_quantities.product_id', '=', 'products.id')
            ->join('colors', 'product_quantities.color_id', '=', 'colors.id')
            ->join('sizes', 'product_quantities.size_id', '=', 'sizes.id')
            ->where('products.id', $this->id)
            ->get()
            ->toArray();
    }
}
