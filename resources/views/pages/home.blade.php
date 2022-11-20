@extends('layouts.app')
@section('content')
<div class="wrapper">	

<!-- Section Started -->
<div class="section started" id="section-started">

    <!-- background -->
    <div class="video-bg jarallax" style="background-image: url({{Voyager::image(setting('hero.thubnail'))}});">
        <div class="video-bg-mask"></div>
        <div class="video-bg-texture" id="grained_container"></div>
    </div>

    <!-- started content -->
    <div class="centrize full-width">
        <div class="vertical-center">
            <div class="started-content">
                <h1 class="h-title">
                {!! setting('hero.hero_subtitle') !!}
                </h1>
                <div class="h-subtitle typing-subtitle">
               {!! setting('hero.hero-title') !!}
                </div>
                <span class="typed-subtitle"></span>
            </div>
        </div>
    </div>

    <!-- mosue button -->
    <a href="#" class="mouse_btn" style="display: none;"><span class="icon fas fa-chevron-down"></span></a>

</div>

<!-- Section About -->
<div class="section about" id="section-about">

    <!-- title -->
    <div class="title">
        <div class="title_inner">About</div>
    </div>

    <div class="content content-box">

        <!-- image -->
        <div class="image">
            <img src="{{Voyager::image(setting('about.image'))}}" alt="" />
        </div>

        <!-- desc -->
        <div class="desc">
            <p>{{setting('about.bio')}}</p>
            <div class="info-list">
                <ul>
                    <li><strong>Age:</strong> {{ setting('about.age') }}</li>
                    <li><strong>Residence:</strong> USA</li>
                    <li><strong>Freelance:</strong>
                    @if(setting('about.freelance')==1)
                    Avaiable
                    @else
                    Unavailable
                    @endif
                    </li>
                    <li><strong>Address:</strong> San Francisco</li>
                    <li><strong>Phone:</strong> +1 256 254 84 56</li>
                    <li><strong>E-mail:</strong> alejandroa@gmail.com</li>
                </ul>
            </div>
            <div class="bts">

                <a href="{{Storage::url(json_decode(setting('about.cv'))[0]->download_link)}}" class="btn hover-animated" download="{{json_decode(setting('about.cv'))[0]->original_name}}">
                    <span class="circle"></span>
                    <span class="lnk">Download CV</span>
                </a>
            </div>
        </div>

        <div class="clear"></div>
    </div>
</div>

<!-- Section Service -->
<div class="section service" id="section-services">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Services</div>
        </div>

        <!-- service items -->
        <div class="service-items">
            @foreach ($services as $service)
            <div class="service-col">
                <div class="service-item content-box">
                    <div class="icon"><span class="{{ $service->icon }}"></span></div>
                    <div class="name">{{ $service->title }}</div>
                    <div class="text">{{ $service->description }}</div>
                </div>
            </div>
            @endforeach
            
            


        </div>

        <div class="clear"></div>
    </div>
</div>

<!-- Section Pricing -->
<div class="section pricing" id="section-pricing">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Pricing Table</div>
        </div>

        <!-- pricing items -->
        <div class="pricing-items">

            <div class="pricing-col">
                <div class="pricing-item content-box">
                    <div class="icon">
                        <span class="fas fa-star"></span>
                    </div>
                    <div class="name">Basic</div>
                    <div class="amount">
                        <span class="number">
                            <span class="dollar">$</span>
                            <span>39</span>
                            <span class="period">hour</span>
                        </span>
                    </div>
                    <div class="feature-list">
                        <ul>
                            <li>Web Development</li>
                            <li>Advetising</li>
                            <li>Game Development</li>
                            <li class="disable">Music Writing</li>
                            <li class="disable">Photography</li>
                        </ul>
                    </div>
                    <div class="bts">
                        <a href="#" class="btn hover-animated">
                            <span class="circle"></span>
                            <span class="lnk">Buy Now</span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="pricing-col">
                <div class="pricing-item content-box">
                    <div class="icon">
                        <span class="fas fa-rocket"></span>
                    </div>
                    <div class="name">Premium</div>
                    <div class="amount">
                        <span class="number">
                            <span class="dollar">$</span>
                            <span>59</span>
                            <span class="period">hour</span>
                        </span>
                    </div>
                    <div class="feature-list">
                        <ul>
                            <li>Web Development</li>
                            <li>Advetising</li>
                            <li>Game Development</li>
                            <li>Music Writing</li>
                            <li>Photography <strong>new</strong></li>
                        </ul>
                    </div>
                    <div class="bts">
                        <a href="#" class="btn hover-animated">
                            <span class="circle"></span>
                            <span class="lnk">Buy Now</span>
                        </a>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>

<!-- Section Resume -->
<div class="section resume" id="section-history">
    <div class="content">
        <div class="cols">

            <div class="col col-md">

                <!-- title -->
                <div class="title">
                    <div class="title_inner">Experience</div>
                </div>
                
                <!-- resume items -->
                <div class="resume-items">
                    
                    <div class="resume-item content-box active">
                        <div class="date">2013 - Present</div>
                        <div class="name">Art Director - Facebook Inc.</div>
                        <div class="text">Collaborate with creative and development teams on the execution of ideas.</div>
                    </div>

                    <div class="resume-item content-box">
                        <div class="date">2011 - 2012</div>
                        <div class="name">Front-End Developer - Google Inc.</div>
                        <div class="text">Monitored technical aspects of the front-end delivery for projects.</div>
                    </div>

                    <div class="resume-item content-box">
                        <div class="date">2009 - 2010</div>
                        <div class="name">Senior Developer - ABC Inc.</div>
                        <div class="text">Optimize your website and apps performance using latest technology.</div>
                    </div>

                </div>

            </div>
            
            <div class="col col-md">

                <!-- title -->
                <div class="title">
                    <div class="title_inner">Education</div>
                </div>
                
                <!-- resume items -->
                <div class="resume-items">

                    <div class="resume-item content-box">
                        <div class="date">2006 - 2008</div>
                        <div class="name">Art University - New York</div>
                        <div class="text">Bachelors Degree in Computer Science ABC Technical Institute, Jefferson, Missouri.</div>
                    </div>

                    <div class="resume-item content-box">
                        <div class="date">2005 - 2006</div>
                        <div class="name">Programming Course - Paris</div>
                        <div class="text">Coursework - Git, WordPress, Javascript, iOS, Android, CSS, and JavaScript.</div>
                    </div>

                    <div class="resume-item content-box">
                        <div class="date">2004 - 2005</div>
                        <div class="name">Web Design Course - London</div>
                        <div class="text">Converted Photoshop layouts to web pages using HTML, CSS, and JavaScript.</div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>

<!-- Section Design Skills -->
<div class="section skills" id="section-skills">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Design Skills</div>
        </div>

        <!-- skills items -->
        <div class="skills percent content-box">
            <ul>
                <li> 
                    <div class="name">Web Design</div>
                    <div class="progress ">
                        <div class="percentage" style="width: 90%;">
                            <span class="percent">90%</span>
                        </div>
                    </div>
                </li>
                <li> 
                    <div class="name">Illustrations</div>
                    <div class="progress ">
                        <div class="percentage" style="width: 70%;">
                            <span class="percent">70%</span>
                        </div>
                    </div>
                </li>
                <li> 
                    <div class="name">Photoshop</div>
                    <div class="progress ">
                        <div class="percentage" style="width: 95%;">
                            <span class="percent">95%</span>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="name">Graphic Design</div>
                    <div class="progress ">
                        <div class="percentage" style="width: 85%;">
                            <span class="percent">85%</span>
                        </div>
                    </div>
                </li>
            </ul>
        </div>

    </div>
</div>

<!-- Section Languages Skills -->
<div class="section skills" id="section-skills-lang">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Languages Skills</div>
        </div>

        <!-- skills items -->
        <div class="skills dotted content-box">
            <ul>
                <li> 
                    <div class="name">English</div>
                    <div class="progress">
                        <div class="percentage" style="width: 90%;">
                            <span class="percent">90%</span>
                        </div>
                    </div>
                </li>
                <li> 
                    <div class="name">German</div>
                    <div class="progress">
                        <div class="percentage" style="width: 70%;">
                            <span class="percent">70%</span>
                        </div>
                    </div>
                </li>
                <li> 
                    <div class="name">Italian</div>
                    <div class="progress">
                        <div class="percentage" style="width: 55%;">
                            <span class="percent">55%</span>
                        </div>
                    </div>
                </li>
                <li> 
                    <div class="name">French</div>
                    <div class="progress">
                        <div class="percentage" style="width: 85%;">
                            <span class="percent">85%</span>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>

</div>

<!-- Section Coding Skills -->
<div class="section skills" id="section-skills-code">
    <div class="content">
        
        <!-- title -->
        <div class="title">
            <div class="title_inner">Coding Skills</div>
        </div>

        <!-- skills items -->
        <div class="skills circles content-box">
            <ul>
                <li> 
                    <div class="name">WordPress</div>
                    <div class="progress p90"> <!-- p90 = 90% circle fill color -->
                        <div class="percentage">
                            <span class="percent">90%</span>
                        </div>
                        <span>90%</span>
                    </div>
                </li>
                <li> 
                    <div class="name">PHP / MYSQL</div>
                    <div class="progress p75"> <!-- p75 = 75% circle fill color -->
                        <div class="percentage">
                            <span class="percent">75%</span>
                        </div>
                        <span>75%</span>
                    </div>
                </li>
                <li> 
                    <div class="name">Angular / JavaScript</div>
                    <div class="progress p85"> <!-- p85 = 85% circle fill color -->
                        <div class="percentage">
                            <span class="percent">85%</span>
                        </div>
                        <span>85%</span>
                    </div>
                </li>
                <li> 
                    <div class="name">HTML / CSS</div>
                    <div class="progress p95"> <!-- p95 = 95% circle fill color -->
                        <div class="percentage">
                            <span class="percent">95%</span>
                        </div>
                        <span>95%</span>
                    </div>
                </li>
            </ul>
        </div>

    </div>
</div>

<!-- Section Knowladge Skills -->
<div class="section skills" id="section-skills-know">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Knowledge</div>
        </div>

        <!-- skills -->
        <div class="skills list content-box">
            <ul>
                <li> 
                    <div class="name">Website hosting</div>
                </li>
                <li> 
                    <div class="name">iOS and android apps</div>
                </li>
                <li> 
                    <div class="name">Create logo design</div>
                </li>
                <li> 
                    <div class="name">Design for print</div>
                </li>
                <li> 
                    <div class="name">Modern and mobile-ready</div>
                </li>
                <li> 
                    <div class="name">Advertising services include</div>
                </li>
                <li> 
                    <div class="name">Graphics and animations</div>
                </li>
                <li> 
                    <div class="name">Search engine marketing</div>
                </li>
            </ul>
        </div>

    </div>
</div>

<!-- Section Interests -->
<div class="section service" id="section-interests">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Interests</div>
        </div>

        <!-- interests items -->
        <div class="service-items">

            <div class="service-col">
                <div class="service-item content-box">
                    <div class="icon"><span class="fas fa-baseball-ball"></span></div>
                    <div class="name">Basketball</div>
                    <div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
                </div>
            </div>

            <div class="service-col">
                <div class="service-item content-box">
                    <div class="icon"><span class="fas fa-campground"></span></div>
                    <div class="name">Camping</div>
                    <div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
                </div>
            </div>

            <div class="service-col">
                <div class="service-item content-box">
                    <div class="icon"><span class="fas fa-chess-knight"></span></div>
                    <div class="name">Chess</div>
                    <div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
                </div>
            </div>

            <div class="service-col">
                <div class="service-item content-box">
                    <div class="icon"><span class="fas fa-headphones"></span></div>
                    <div class="name">Music</div>
                    <div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
                </div>
            </div>

        </div>

        <div class="clear"></div>
    </div>
</div>

<!-- Section Team -->
<div class="section team" id="section-team">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Our Team</div>
        </div>

        <!-- team items -->
        <div class="team-items">

            <div class="team-col">
                <div class="team-item content-box">
                    <div class="image">
                        <img src="{{asset('assets/images/team1.jpg')}}" alt="" />
                    </div>
                    <div class="desc">
                        <div class="name">Alejandro Abeyta</div>
                        <div class="category">Web Developer</div>
                        <div class="soc">
                            <a target="_blank" href="https://www.pinterest.com/">
                                <span class="icon fab fa-pinterest"></span>
                            </a>
                            <a target="_blank" href="https://www.instagram.com/">
                                <span class="icon fab fa-instagram"></span>
                            </a>
                            <a target="_blank" href="https://dribbble.com/">
                                <span class="icon fab fa-dribbble"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="team-col">
                <div class="team-item content-box">
                    <div class="image">
                        <img src="{{asset('assets/images/team2.jpg')}}" alt="" />
                    </div>
                    <div class="desc">
                        <div class="name">Peter Green</div>
                        <div class="category">Back-end Developer</div>
                        <div class="soc">
                            <a target="_blank" href="https://www.pinterest.com/">
                                <span class="icon fab fa-pinterest"></span>
                            </a>
                            <a target="_blank" href="https://www.instagram.com/">
                                <span class="icon fab fa-instagram"></span>
                            </a>
                            <a target="_blank" href="https://dribbble.com/">
                                <span class="icon fab fa-dribbble"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        
    </div>
</div>

<!-- Section Testimonials -->
<div class="section testimonials" id="section-testimonials">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Testimonials</div>
        </div>

        <!-- testimonials items -->
        <div class="reviews-carousel">
            <div class="swiper-container">
                <div class="swiper-wrapper">

                    <div class="swiper-slide">
                        <div class="reviews-item content-box">
                            <div class="image">
                                <img src="{{asset('assets/images/rev1.jpg')}}" alt="">
                            </div>
                            <div class="info">
                                <div class="name">Helen Floyd</div>
                                <div class="company">Art Director</div>
                            </div>
                            <div class="text">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="reviews-item content-box">
                            <div class="image">
                                <img src="{{asset('assets/images/rev1.jpg')}}" alt="">
                            </div>
                            <div class="info">
                                <div class="name">Helen Floyd</div>
                                <div class="company">Art Director</div>
                            </div>
                            <div class="text">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <!-- navigation -->
            <div class="swiper-nav">
                <a class="prev swiper-button-prev fas fa-long-arrow-alt-left"></a>
                <a class="next swiper-button-next fas fa-long-arrow-alt-right"></a>
            </div>

        </div>
        
    </div>
</div>

<!-- Section Clients -->
<div class="section clients" id="section-clients">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Clients</div>
        </div>

        <!-- clients items -->
        <div class="content-box">
            <div class="clients-items">

                <div class="clients-col">
                    <div class="clients-item">
                        <a target="_blank" href="#">
                            <img src="{{asset('assets/images/client1.png')}}" alt="" />
                        </a>
                    </div>
                </div>

                <div class="clients-col">
                    <div class="clients-item">
                        <a target="_blank" href="#">
                            <img src="{{asset('assets/images/client3.png')}}" alt="" />
                        </a>
                    </div>
                </div>

                <div class="clients-col">
                    <div class="clients-item">
                        <a target="_blank" href="#">
                            <img src="{{asset('assets/images/client2.png')}}" alt="" />
                        </a>
                    </div>
                </div>

                <div class="clients-col">
                    <div class="clients-item">
                        <a target="_blank" href="#">
                            <img src="{{asset('assets/images/client4.png')}}" alt="" />
                        </a>
                    </div>
                </div>

            </div>
        </div>
        
        <div class="clear"></div>
    </div>
</div>

<!-- Section Custom Text -->
<div class="section custom-text" id="section-custom-text">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Custom Text</div>
        </div>

        <!-- clients items -->
        <div class="content-box">
            <div class="single-post-text">
                <p>
                    Now there is more fashion. There is no so-called trends. Now chase after anything not necessary — nor for fashionable color nor the shape, nor for style. Think about the content that you want to invest in a created object, and only then will form. The thing is your spirit. A spirit unlike forms hard copy.
                </p>
                <p>
                    Here choose yourself like that, without any looking back, do your personal, home, small fashion, and all will be well.
                </p>
            </div>
        </div>
        
        <div class="clear"></div>
    </div>
</div>

<!-- Works -->
<div class="section works" id="section-portfolio">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Portfolio</div>
        </div>
    
        <!-- portfolio filter -->
        <div class="filter-menu content-box">
            <div class="filters">
                <div class="btn-group">
                    <label data-text="All" class="glitch-effect"><input type="radio" name="fl_radio" value=".box-item" />All</label>
                </div>
                <div class="btn-group">
                    <label data-text="Video"><input type="radio" name="fl_radio" value=".f-video" />Video</label>
                </div>
                <div class="btn-group">
                    <label data-text="Music"><input type="radio" name="fl_radio" value=".f-music" />Music</label>
                </div>
                <div class="btn-group">
                    <label data-text="Links"><input type="radio" name="fl_radio" value=".f-links" />Links</label>
                </div>
                <div class="btn-group">
                    <label data-text="Image"><input type="radio" name="fl_radio" value=".f-image" />Image</label>
                </div>
                <div class="btn-group">
                    <label data-text="Gallery"><input type="radio" name="fl_radio" value=".f-gallery" />Gallery</label>
                </div>
                <div class="btn-group">
                    <label data-text="Content"><input type="radio" name="fl_radio" value=".f-content" />Content</label>
                </div>
            </div>
        </div>
        
        <!-- portfolio items -->
        <div class="box-items portfolio-items">

            <div class="box-item f-gallery">
                <div class="image">
                    <a href="#gallery-1" class="has-popup-gallery hover-animated">
                        <img src="{{asset('assets/images/work1.jpg')}}" class="wp-post-image" alt="" />
                        <span class="info circle">
                            <span class="centrize full-width">
                                <span class="vertical-center">
                                    <span class="icon fas fa-images"></span>
                                    <span class="desc">
                                        <span class="category">Gallery</span>
                                        <span class="name">Shot in Iceland</span>
                                    </span>
                                </span>
                            </span>
                        </span>
                    </a>
                    <div id="gallery-1" class="mfp-hide">
                        <a href="{{asset('assets/images/work1.jpg')}}"></a>
                        <a href="{{asset('assets/images/work2.jpg')}}"></a>
                        <a href="{{asset('assets/images/work3.jpg')}}"></a>
                        <a href="{{asset('assets/images/work4.jpg')}}"></a>
                    </div>	
                </div>
            </div>

            <div class="box-item f-links"> <!-- add class "animate-to-page" if need animated transition to page and delete target="_blank" -->
                <div class="image">
                    <a href="https://google.com/" class="has-popup-link hover-animated" target="_blank">
                        <img src="{{asset('assets/images/work3.jpg')}}" class="wp-post-image" alt="" />
                        <span class="info circle">
                            <span class="centrize full-width">
                                <span class="vertical-center">
                                    <span class="icon fas fa-link"></span>
                                    <span class="desc">
                                        <span class="category">Links</span>
                                        <span class="name">Nike Red</span>
                                    </span>
                                </span>
                            </span>
                        </span>
                    </a>	
                </div>
            </div>

            <div class="box-item f-video">
                <div class="image">
                    <a href="https://youtu.be/S4L8T2kFFck" class="has-popup-video hover-animated">
                        <img src="{{asset('assets/images/work2.jpg')}}" class="wp-post-image" alt="" />
                        <span class="info circle">
                            <span class="centrize full-width">
                                <span class="vertical-center">
                                    <span class="icon fas fa-video"></span>
                                    <span class="desc">
                                        <span class="category">Video</span>
                                        <span class="name">Fertility of Some Plants</span>
                                    </span>
                                </span>
                            </span>
                        </span>
                    </a>
                </div>
            </div>

            <div class="box-item f-image">
                <div class="image">
                    <a href="{{asset('assets/images/work4.jpg')}}" class="has-popup-image hover-animated">
                        <img src="{{asset('assets/images/work4.jpg')}}" class="wp-post-image" alt="" />
                        <span class="info circle">
                            <span class="centrize full-width">
                                <span class="vertical-center">
                                    <span class="icon fas fa-image"></span>
                                    <span class="desc">
                                        <span class="category">Image</span>
                                        <span class="name">Inspiration in Cap Haitian</span>
                                    </span>
                                </span>
                            </span>
                        </span>
                    </a>
                </div>
            </div>

            <div class="box-item f-image">
                <div class="image">
                    <a href="{{asset('assets/images/work7.jpg')}}" class="has-popup-image hover-animated">
                        <img src="{{asset('assets/images/work7.jpg')}}" class="wp-post-image" alt="" />
                        <span class="info circle">
                            <span class="centrize full-width">
                                <span class="vertical-center">
                                    <span class="icon fas fa-image"></span>
                                    <span class="desc">
                                        <span class="category">Image</span>
                                        <span class="name">Water and Shore</span>
                                    </span>
                                </span>
                            </span>
                        </span>
                    </a>
                </div>
            </div>

            <div class="box-item f-music">
                <div class="image">
                    <a href="https://w.soundcloud.com/player/?visual=true&amp;url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F221650664&amp;show_artwork=true" class="has-popup-music hover-animated">
                        <img src="{{asset('assets/images/work6.jpg')}}" class="wp-post-image" alt="" />
                        <span class="info circle">
                            <span class="centrize full-width">
                                <span class="vertical-center">
                                    <span class="icon fas fa-music"></span>
                                    <span class="desc">
                                        <span class="category">Music</span>
                                        <span class="name">Dark Bike</span>
                                    </span>
                                </span>
                            </span>
                        </span>
                    </a>
                </div>
            </div>

            <div class="box-item f-gallery">
                <div class="image">
                    <a href="#gallery-2" class="has-popup-gallery hover-animated">
                        <img src="{{asset('assets/images/work5.jpg')}}" class="wp-post-image" alt="" />
                        <span class="info circle">
                            <span class="centrize full-width">
                                <span class="vertical-center">
                                    <span class="icon fas fa-images"></span>
                                    <span class="desc">
                                        <span class="category">Gallery</span>
                                        <span class="name">Undulating Space</span>
                                    </span>
                                </span>
                            </span>
                        </span>
                    </a>
                    <div id="gallery-2" class="mfp-hide">
                        <a href="{{asset('assets/images/work5.jpg')}}"></a>
                        <a href="{{asset('assets/images/work1.jpg')}}"></a>
                        <a href="{{asset('assets/images/work2.jpg')}}"></a>
                        <a href="{{asset('assets/images/work3.jpg')}}"></a>
                    </div>
                </div>
            </div>

            <div class="box-item f-content">
                <div class="image">
                    <a href="#popup-1" class="has-popup-media hover-animated">
                        <img src="{{asset('assets/images/work8.jpg')}}" class="wp-post-image" alt="" />
                        <span class="info circle">
                            <span class="centrize full-width">
                                <span class="vertical-center">
                                    <span class="icon fas fa-plus"></span>
                                    <span class="desc">
                                        <span class="category">Content</span>
                                        <span class="name">Curved Ceiling Ribs</span>
                                    </span>
                                </span>
                            </span>
                        </span>
                    </a>
                </div>
                <div id="popup-1" class="popup-box mfp-fade mfp-hide">
                    <div class="content">
                        <div class="image" style="background-image: url({{asset('assets/images/work8.jpg')}});"></div>
                        <div class="desc single-post-text">
                            <div class="category">Content</div>
                            <h4>Hand holding pyramid painting</h4>
                            <p>
                                Now there is more fashion. There is no so-called trends. Now chase after anything not necessary — nor for fashionable color nor the shape, nor for style. Think about the content that you want to invest in a created object, and only then will form. The thing is your spirit. A spirit unlike forms hard copy.
                            </p>
                            <ul>
                                <li>Now there is more fashion. There is no so-called trends.</li>
                                <li>Now chase after anything not necessary — nor for fashionable color nor the shape, nor for style.</li>
                                <li>Think about the content that you want to invest in a created object, and only then will form.</li>
                                <li>The thing is your spirit. A spirit unlike forms hard copy.</li>
                            </ul>
                            <p>
                                Now there is more fashion. There is no so-called trends. Now chase after anything not necessary — nor for fashionable color nor the shape, nor for style. Think about the content that you want to invest in a created object, and only then will form. The thing is your spirit. A spirit unlike forms hard copy.
                            </p>
                            <a href="works_single_1.html" class="btn hover-animated">
                                <span class="circle"></span>
                                <span class="lnk">View Project</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="clear"></div>
    </div>
</div>

<!-- Section Contacts Info -->
<div class="section contacts" id="section-contacts">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Contacts</div>
        </div>

        <!-- contacts items -->
        <div class="service-items">

            <div class="service-col">
                <div class="service-item content-box">
                    <div class="icon"><span class="fas fa-phone"></span></div>
                    <div class="name">Phone</div>
                    <div class="text">+ (231) 456 67 89</div>
                </div>
            </div>
            
            <div class="service-col">
                <div class="service-item content-box">
                    <div class="icon"><span class="fas fa-envelope"></span></div>
                    <div class="name">Email</div>
                    <div class="text"><a href="mailto:steve-pearson@gmail.com">steve-pearson@gmail.com</a></div>
                </div>
            </div>

            <div class="service-col">
                <div class="service-item content-box">
                    <div class="icon"><span class="fas fa-map-marker-alt"></span></div>
                    <div class="name">Address</div>
                    <div class="text">2621 W Pico Blvd, Los Angeles</div>
                </div>
            </div>

            <div class="service-col">
                <div class="service-item content-box">
                    <div class="icon"><span class="fas fa-user-tie"></span></div>
                    <div class="name">Freelance Available</div>
                    <div class="text">I am available for Freelance hire</div>
                </div>
            </div>

        </div>

        <div class="clear"></div>
    </div>
</div>

<!-- Section Contacts Form -->
<div class="section contacts" id="section-contacts-form">
    <div class="content">

        <!-- title -->
        <div class="title">
            <div class="title_inner">Hire Me</div>
        </div>

        <!-- form -->
        <div class="contact_form content-box">
            <form id="cform" method="post">
                <div class="group-val">
                       <input type="text" name="name" placeholder="Name" />
                </div>
                <div class="group-val">
                    <input type="email" name="email" placeholder="Email" />
                </div>
                <div class="group-val ct-gr">
                    <textarea name="message" placeholder="Message"></textarea>
                </div>
                <div class="group-bts">
                    <button type="submit" class="btn hover-animated">
                        <span class="circle"></span>
                        <span class="lnk">Send Message</span>
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

<!-- Section Started -->
<div class="section started section-title" id="section-map">

    <!-- background -->
    <div class="video-bg">
        <div class="map" id="map"></div>
        <div class="video-bg-mask"></div>
        <div class="video-bg-texture" id="grained_container"></div>
    </div>

</div>

</div>

@endsection