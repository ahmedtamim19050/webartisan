@extends('layouts.app')
@section('css')
<style>
    .thankyou-wrapper {
        width: 100%;
        height: auto;
        margin: 30px 0 0 0;
        /* background:#ffffff;  */
        padding: 10px 0px 50px;

    }

    .thankyou-wrapper h1 {
        font: 100px Arial, Helvetica, sans-serif;
        text-align: center;
        color: #333333;
        padding: 0px 10px 10px;
    }

    .thankyou-wrapper p {
        font: 26px Arial, Helvetica, sans-serif;
        text-align: center;
        color: #fff;
        padding: 5px 10px 10px;
    }

    .bts {
        text-align: center;
    }

    @media only screen and (max-width: 600px) {
        .img {
            height: 120px;
        }
    }
</style>

@endsection
@section('content')
<section class="login-main-wrapper">
    <div class="main-container">
        <div class="login-process">
            <div class="login-main-container">
                <div class="thankyou-wrapper">
                    <h1><img class="img" src="http://montco.happeningmag.com/wp-content/uploads/2014/11/thankyou.png" alt="thanks" /></h1>
                    <p>{{ session()->get('thank') }}</p>

                    <div class="bts">

                        <a href="{{route('home')}}" class="btn hover-animated">
                            <span class="circle"><span class="ink" style="height: 156.025px; width: 156.025px; top: -32.0125px; left: 25.15px;"></span></span>
                            <span class="lnk">Back to home</span>
                        </a>
                    </div>

                    <div class="clr"></div>
                </div>
                <div class="clr"></div>
            </div>
        </div>
        <div class="clr"></div>
    </div>
</section>

@endsection