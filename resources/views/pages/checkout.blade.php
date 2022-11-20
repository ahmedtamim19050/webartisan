@extends('layouts.app')
@section('content')
@section('css')
<style>
    .section.started.layout-creative {
        padding-top: 10% !important;
    }

    .section.started+.section,
    .section.started.layout-creative+.section {
        margin-top: 10px !important;
    }

    .pricing-item .amount .number .dollar {
        position: absolute !important;
        left: -28px !important;
        top: -5px;
    }

    .section {
        padding-top: 20px;
    }

    .service-items {
        margin-top: 10px !important;
    }

    .service-items .service-col {
        margin-top: 0 !important;
    }
</style>
@endsection
<div class="wrapper">

    <!-- Section Started -->
    <!-- <div class="section started layout-creative" id="section-started">


        <div class="centrize full-width">
            <div class="vertical-center">
                <div class="started-content">
                    <h1 class="h-title">Checkout</h1>
                    <div class="h-subtitles">
                        <div class="h-subtitle typing-bread">
                            <p class="breadcrumbs">
                                <a href="index.html">Home</a> / Checkout
                            </p>
                        </div>
                        <span class="typed-bread"></span>
                    </div>
                </div>
            </div>
        </div>


        <a href="#" class="mouse_btn" style="display: none;"><span class="icon fas fa-chevron-down"></span></a>

    </div> -->

    <!-- Section Contacts Info -->
    <div class="section contacts" id="section-contacts-info">
        <div class="content">


            <div class="title">
                <div class="title_inner">Yours Card</div>
            </div>

            <div class="service-items">

                <div class="service-col">
                    <div class="service-item pricing-item content-box">
                        <div class="icon"><span class="{{$pricing->icon}}"></span></div>
                        <div class="name">{{ $pricing->title }}</div>
                        <div class="amount">
                            <span class="number">
                                <span class="dollar">BDT</span>

                                <span>{{ $pricing->Price }}</span>
                            </span>
                        </div>
                    </div>
                </div>


            </div>

        </div>
    </div>

    <!-- Section Contacts Form -->
    <div class="section contacts" id="section-contacts">
        <div class="content">

            <!-- title -->
            <div class="title">
                <div class="title_inner">Billing address</div>
            </div>

            <!-- form -->
            <div class="contact_form content-box">
                <form id="" method="post" action="{{route('checkout.store',$pricing)}}">
                    @csrf
                    <div class="service-items">
                        <div class="service-col">

                            <input type="text" name="f_name" id="f_name" placeholder="First Name" value="{{old('f_name')}}" required />
                            @error('f_name')
                            <span class="text-danger">
                                {{ $message }}
                            </span>
                            @enderror

                        </div>
                        <div class="service-col">

                            <input type="email" id="l_name" name="l_name" placeholder="Last name" value="{{old('l_name')}}" required />
                            @error('l_name')
                            <span class="text-danger">
                                {{ $message }}
                            </span>
                            @enderror
                        </div>
                    </div>


                    <div class="service-items">
                        <div class="service-col">
                            <input type="text" id="email" name="email" placeholder="Email" value="{{old('email')}}" required />

                            @error('email')
                            <span class="text-danger">
                                {{ $message }}
                            </span>
                            @enderror
                        </div>
                        <div class="service-col">
                            <input type="text" id="phone" name="phone" value="{{old('phone')}}" placeholder="Phone" required />
                            @error('phone')
                            <span class="text-danger">
                                {{ $message }}
                            </span>
                            @enderror
                        </div>
                    </div>
                    <div class="service-items">
                        <div class="service-col">
                            <input type="text" id="city" value="{{old('city')}}" name="city" placeholder="City" required />
                            @error('city')
                            <span class="text-danger">
                                {{ $message }}
                            </span>
                            @enderror
                        </div>
                        <div class="service-col">
                            <input type="text" id="post_code" value="{{old('post_code')}}" name="post_code" placeholder="Post Code" required />
                            @error('post_code')
                            <span class="text-danger">
                                {{ $message }}
                            </span>
                            @enderror
                        </div>
                    </div>
                    <div class="group-val">
                        <input type="text" id="address" name="address" placeholder="Address" value="{{old('address')}}" required />
                        @error('address')
                        <span class="text-danger">
                            {{ $message }}
                        </span>
                        @enderror
                    </div>
                    



                    <div class="group-bts">
                        <button type="submit" class="btn hover-animated">
                            <span class="circle"></span>
                            <span class="lnk">Order</span>
                        </button>
                    </div>
                </form>
                <div class="alert-success">
                    <p>Thanks, your message is sent successfully.</p>
                </div>
            </div>

        </div>
        <div class="clear"></div>
    </div>

</div>

@endsection