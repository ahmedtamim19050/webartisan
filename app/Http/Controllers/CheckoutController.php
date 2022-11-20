<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Pricing;
use Illuminate\Http\Request;

class CheckoutController extends Controller
{
      public function checkout(Pricing $pricing)
      {
        
         return view('pages.checkout',compact('pricing'));
      }
      public function checkoutStore(Request $request,Pricing $pricing)
      {
            $request->validate([
                  'f_name' => 'required|string',
                  'l_name' => 'required|string',
                  'email' => 'required|string',
                  'phone' => 'required|string',
                  'city' => 'required|string',
                  'post_code' => 'required|string',
                  'address' => 'required|string',
            ]);
            $order=Order::create([
                  'f_name'=>$request->f_name,
                  'l_name'=>$request->l_name,
                  'email'=>$request->email,
                  'phone'=>$request->phone,
                  'city'=>$request->city,
                  'post_code'=>$request->post_code,
                  'address'=>$request->address,
                  'total'=>$pricing->Price,
                  'pricing_id'=>$pricing->id,
            ]);
            return redirect()->route('thankyou')->with('thank','Your Order Placed Successfully ! As soon as possible. I contact with you.');
      }
      public function thankyou()
      {
            // if (!session()->has('thank')) {
            //       return redirect('/');
            //   }
             
            return view('pages.thankyou');
      }
}
