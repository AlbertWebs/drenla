@extends('front.master')
@section('content')
<main>
    <div class="projects-grid">
      <div class="projects-grid__inner container">
        <ul class="projects-grid__list row">
          {{-- A1 --}}
          <?php $Links = DB::table('links')->where('grid','A1')->get(); ?>
          @foreach ($Links as $link)
            <?php $Portfolio = DB::table('portfolio')->where('id',$link->portfolio_id)->get() ?>
            @foreach ($Portfolio as $portfolio)
                <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                    <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/our-portfolio/{{$portfolio->slug}}" data-bg="{{url('/')}}/uploads/portfolio/{{$portfolio->image_one}}">
                    <div class="card__content">
                        <div class="card__tag">{{$portfolio->service}}</div>
                        <h3 class="card__heading">{{$portfolio->title}}</h3>
                        <div class="card__text">{{$portfolio->content}}</div>
                    </div>
                    </a>
                </li>
            @endforeach
          @endforeach
         {{-- A2 --}}
         <?php $Links = DB::table('links')->where('grid','A2')->get(); ?>
         @foreach ($Links as $link)
           <?php $Portfolio = DB::table('portfolio')->where('id',$link->portfolio_id)->get() ?>
           @foreach ($Portfolio as $portfolio)
               <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                   <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/our-portfolio/{{$portfolio->slug}}" data-bg="{{url('/')}}/uploads/portfolio/{{$portfolio->image_one}}">
                   <div class="card__content">
                       <div class="card__tag">{{$portfolio->service}}</div>
                       <h3 class="card__heading">{{$portfolio->title}}</h3>
                       <div class="card__text">{{$portfolio->content}}</div>
                   </div>
                   </a>
               </li>
           @endforeach
         @endforeach
          {{-- A3 --}}
          <?php $Links = DB::table('links')->where('grid','A3')->get(); ?>
          @foreach ($Links as $link)
            <?php $Portfolio = DB::table('portfolio')->where('id',$link->portfolio_id)->get() ?>
            @foreach ($Portfolio as $portfolio)
                <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                    <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/our-portfolio/{{$portfolio->slug}}" data-bg="{{url('/')}}/uploads/portfolio/{{$portfolio->image_one}}">
                    <div class="card__content">
                        <div class="card__tag">{{$portfolio->service}}</div>
                        <h3 class="card__heading">{{$portfolio->title}}</h3>
                        <div class="card__text">{{$portfolio->content}}</div>
                    </div>
                    </a>
                </li>
            @endforeach
          @endforeach


          {{-- About Us --}}
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card card--active" href="{{url('/')}}/about-us" data-bg="{{asset('theme/img/picture/home/b1.jpg')}}">
              <div class="card__content fix-overlay">
                <div class="card__tag"> Drenla Hub</div>
                <h3 class="card__heading"> About Us </h3>
                <div class="card__text">Interior Design and Architectural Visualization Hub. To speak for your unbuilt project</div>
              </div>
            </a>
          </li>
          {{-- About Us --}}


           {{-- B1 --}}
           <?php $Links = DB::table('links')->where('grid','B1')->get(); ?>
           @foreach ($Links as $link)
             <?php $Portfolio = DB::table('portfolio')->where('id',$link->portfolio_id)->get() ?>
             @foreach ($Portfolio as $portfolio)
                 <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                     <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/our-portfolio/{{$portfolio->slug}}" data-bg="{{url('/')}}/uploads/portfolio/{{$portfolio->image_one}}">
                     <div class="card__content">
                         <div class="card__tag">{{$portfolio->service}}</div>
                         <h3 class="card__heading">{{$portfolio->title}}</h3>
                         <div class="card__text">{{$portfolio->content}}</div>
                     </div>
                     </a>
                 </li>
             @endforeach
           @endforeach

           {{-- A5 --}}
           <?php $Links = DB::table('links')->where('grid','B2')->get(); ?>
           @foreach ($Links as $link)
             <?php $Portfolio = DB::table('portfolio')->where('id',$link->portfolio_id)->get() ?>
             @foreach ($Portfolio as $portfolio)
                 <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                     <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/our-portfolio/{{$portfolio->slug}}" data-bg="{{url('/')}}/uploads/portfolio/{{$portfolio->image_one}}">
                     <div class="card__content">
                         <div class="card__tag">{{$portfolio->service}}</div>
                         <h3 class="card__heading">{{$portfolio->title}}</h3>
                         <div class="card__text">{{$portfolio->content}}</div>
                     </div>
                     </a>
                 </li>
             @endforeach
           @endforeach


           <?php $Links = DB::table('links')->where('grid','B3')->get(); ?>
           @foreach ($Links as $link)
             <?php $Portfolio = DB::table('portfolio')->where('id',$link->portfolio_id)->get() ?>
             @foreach ($Portfolio as $portfolio)
                 <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                     <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/our-portfolio/{{$portfolio->slug}}" data-bg="{{url('/')}}/uploads/portfolio/{{$portfolio->image_one}}">
                     <div class="card__content">
                         <div class="card__tag">{{$portfolio->service}}</div>
                         <h3 class="card__heading">{{$portfolio->title}}</h3>
                         <div class="card__text">{{$portfolio->content}}</div>
                     </div>
                     </a>
                 </li>
             @endforeach
           @endforeach


          {{-- Projects --}}
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/our-portfolio" data-bg="{{asset('theme/img/picture/home/b7.jpg')}}">
              <div class="card__content">
                <div class="card__tag">Drenla Hub</div>
                <h3 class="card__heading">Our Portfolios</h3>
                <div class="card__text">Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007</div>
              </div>
            </a>
          </li>
          {{-- Projects --}}

           {{-- A6 --}}
           <?php $Links = DB::table('links')->where('grid','C1')->get(); ?>
           @foreach ($Links as $link)
             <?php $Portfolio = DB::table('portfolio')->where('id',$link->portfolio_id)->get() ?>
             @foreach ($Portfolio as $portfolio)
                 <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                     <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/our-portfolio/{{$portfolio->slug}}" data-bg="{{url('/')}}/uploads/portfolio/{{$portfolio->image_one}}">
                     <div class="card__content">
                         <div class="card__tag">{{$portfolio->service}}</div>
                         <h3 class="card__heading">{{$portfolio->title}}</h3>
                         <div class="card__text">{{$portfolio->content}}</div>
                     </div>
                     </a>
                 </li>
             @endforeach
           @endforeach


          {{-- A7 --}}
          <?php $Links = DB::table('links')->where('grid','C2')->get(); ?>
          @foreach ($Links as $link)
            <?php $Portfolio = DB::table('portfolio')->where('id',$link->portfolio_id)->get() ?>
            @foreach ($Portfolio as $portfolio)
                <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                    <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/our-portfolio/{{$portfolio->slug}}" data-bg="{{url('/')}}/uploads/portfolio/{{$portfolio->image_one}}">
                    <div class="card__content">
                        <div class="card__tag">{{$portfolio->service}}</div>
                        <h3 class="card__heading">{{$portfolio->title}}</h3>
                        <div class="card__text">{{$portfolio->content}}</div>
                    </div>
                    </a>
                </li>
            @endforeach
          @endforeach


           {{-- A8 --}}
           <?php $Links = DB::table('links')->where('grid','C3')->get(); ?>
           @foreach ($Links as $link)
             <?php $Portfolio = DB::table('portfolio')->where('id',$link->portfolio_id)->get() ?>
             @foreach ($Portfolio as $portfolio)
                 <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                     <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/our-portfolio/{{$portfolio->slug}}" data-bg="{{url('/')}}/uploads/portfolio/{{$portfolio->image_one}}">
                     <div class="card__content">
                         <div class="card__tag">{{$portfolio->service}}</div>
                         <h3 class="card__heading">{{$portfolio->title}}</h3>
                         <div class="card__text">{{$portfolio->content}}</div>
                     </div>
                     </a>
                 </li>
             @endforeach
           @endforeach



          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card card--active" href="{{url('/')}}/contact-us" data-bg="{{asset('theme/img/picture/home/b1.jpg')}}">
              <div class="card__content fix-overlay">
                <div class="card__tag"> Drenla Hub</div>
                <h3 class="card__heading"> Contact Us </h3>
                <div class="card__text">Interior Design and Architectural Visualization Hub. To speak for your unbuilt project</div>
              </div>
            </a>
          </li>
        </ul>
      </div>
      <div class="projects-grid__bg __js_projects-grid-bg"></div>
    </div>
  </main>
@endsection
