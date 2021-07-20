<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Products;
use App\ProductsCategory;
use App\ProductsFeature;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    public function __construct()
    {
    }

    public function updateProduct(Request $request, $product_id)
    {
        $product = Products::where('id', $product_id)->first();
        if (!$product) {
            return response()->json(['error' => 'Not found'], 404);
        }
        $product->update($request->only(['name', 'summary', 'amount']));
        if ($request->avatar) {
            if (file_exists(public_path($product->avatar))) {
                unlink(public_path($product->avatar));
            }
            $filePath = 'upload/avatar/' . time() . '.png';
            Storage::disk('upload')->put($filePath, base64_decode($request->avatar));
            $product->update(['avatar' => $filePath]);
        }

        ProductsFeature::where('products_id', $product->id)->delete();
        if ($request->addons) {
            foreach ($request->addons as $item) {
                ProductsFeature::create([
                    'name' => $item['name'],
                    'amount' => $item['amount'],
                    'level' => 1,
                    'products_id' => $product->id
                ]);
            }
        }
        if ($request->sub_categories) {
            ProductsCategory::where('products_id', $product->id)->delete();
            foreach ($request->sub_categories as $v) {
                ProductsCategory::create([
                    'products_id' => $product->id,
                    'sub_category_id' => $v
                ]);
            }
        }
        return response()->json($product);
    }

    public function resetProductAvatar(Request $request, $product_id)
    {
        $product = Products::where('id', $product_id)->first();
        if (!$product) {
            return response()->json(['error' => 'Not found'], 404);
        }
        if (!$product->content) {
            return response()->json(['error' => 'Already reset'], 419);
        }
        $filePath = 'upload/avatar/product_' . $product_id . '_avatar.png';
        Storage::disk('upload')->put($filePath, base64_decode($product->content));
        $product->update(['avatar' => $filePath, 'content' => null]);

        return response()->json($product);
    }

    public function deleteProduct(Request $request, $product_id)
    {
        $product = Products::where('id', $product_id)->first();
        if (!$product) {
            return response()->json(['error' => 'Not found']);
        }
        if (file_exists(public_path($product->avatar))) {
            unlink(public_path($product->avatar));
        }
        ProductsFeature::where('products_id', $product->id)->delete();
        ProductsCategory::where('products_id', $product->id)->delete();
        $product->delete();

        return response()->json(['success' => 'Deleted successfully']);
    }
}
