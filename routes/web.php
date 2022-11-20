<?php

use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\PageController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
 Route::get('/',[PageController::class,'home'])->name('home');
 Route::get('/checkout/{pricing}',[CheckoutController::class,'checkout'])->name('checkout');
 Route::get('/thankyou',[CheckoutController::class,'thankyou'])->name('thankyou');
 Route::post('/checkout/store/{pricing}',[CheckoutController::class,'checkoutStore'])->name('checkout.store');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
