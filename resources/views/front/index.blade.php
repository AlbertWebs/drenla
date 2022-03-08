@extends('front.master')
@section('content')
<main>
    <div class="projects-grid">
      <div class="projects-grid__inner container">
        <ul class="projects-grid__list row">

          <?php $Links = DB::table('links')->where('grid','About')->get(); ?>
           @foreach ($Links as $link)


                 <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                     <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/about-us/" data-bg="{{url('/')}}/uploads/links/{{$link->image}}">
                     <div class="card__content">
                        <div class="card__tag"> Drenla Hub</div>
                        <h3 class="card__heading"> About Us </h3>
                        <div class="card__text">Interior Design and Architectural Visualization Hub. To speak for your unbuilt project</div>
                     </div>
                     </a>
                 </li>

           @endforeach
          {{-- About Us --}}


          <?php $Links = DB::table('links')->where('grid','Services')->get(); ?>
          @foreach ($Links as $link)


                <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                    <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/about-us/" data-bg="{{url('/')}}/uploads/links/{{$link->image}}">
                    <div class="card__content ">
                        <div class="card__tag"> Drenla Hub</div>
                        <h3 class="card__heading"> Services </h3>
                        <div class="card__text">Interior Design and Architectural Visualization Hub. To speak for your unbuilt project</div>
                    </div>
                    </a>
                </li>

          @endforeach

          <?php $Links = DB::table('links')->where('grid','Portfolio')->get(); ?>
          @foreach ($Links as $link)


                <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                    <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/about-us/" data-bg="{{url('/')}}/uploads/links/{{$link->image}}">
                    <div class="card__content">
                        <div class="card__tag">Drenla Hub</div>
                        <h3 class="card__heading">Our Portfolios</h3>
                        <div class="card__text">Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007</div>
                    </div>
                    </a>
                </li>

          @endforeach


          {{-- Projects --}}


          <?php $Links = DB::table('links')->where('grid','Portfolio')->get(); ?>
          @foreach ($Links as $link)


                <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
                    <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/about-us/" data-bg="{{url('/')}}/uploads/links/{{$link->image}}">
                    <div class="card__content">
                        <div class="card__tag"> Drenla Hub</div>
                        <h3 class="card__heading"> Contact Us </h3>
                        <div class="card__text">Interior Design and Architectural Visualization Hub. To speak for your unbuilt project</div>
                    </div>
                    </a>
                </li>

          @endforeach


        </ul>
      </div>
      <div class="projects-grid__bg __js_projects-grid-bg"></div>
    </div>
  </main>
@endsection
