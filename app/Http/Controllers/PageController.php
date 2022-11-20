<?php

namespace App\Http\Controllers;

use App\Pricing;
use App\Service;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function home()
    {
        $services=Service::latest()->get();
        $pricings=Pricing::all();
        return view('pages.home',compact('services','pricings'));
    }
}
