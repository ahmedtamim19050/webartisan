<?php

namespace App\Http\Controllers;

use App\Client;
use App\Education;
use App\Experience;
use App\Knowledge;
use App\Pricing;
use App\Service;
use App\Skill;
use App\Team;
use App\Testimonial;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function home()
    {
        $services=Service::latest()->get();
        $pricings=Pricing::all();
        $expriences=Experience::latest()->get();
        $educations=Education::all();
        $skills=Skill::all();
        $knoledges=Knowledge::latest()->get();
        $teams=Team::latest()->get();
        $testimonials=Testimonial::latest()->get();
        $clients=Client::latest()->get();
   
        return view('pages.home',compact('services','pricings','expriences','educations','skills','knoledges','teams','testimonials','clients'));
    }
}
