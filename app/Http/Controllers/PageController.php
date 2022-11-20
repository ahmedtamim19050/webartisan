<?php

namespace App\Http\Controllers;

use App\Service;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function home()
    {
        $services=Service::latest()->get();
        return view('pages.home',compact('services'));
    }
}
