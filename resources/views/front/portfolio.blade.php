@extends('front.master')
@section('content')
<main>
    <div class="projects-grid">
      <div class="projects-grid__inner container">
        <ul class="projects-grid__list row">
          {{-- A1 --}}

            <?php $Portfolio = DB::table('portfolio')->get() ?>
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

        </ul>
      </div>
      <div class="projects-grid__bg __js_projects-grid-bg"></div>
    </div>
  </main>
@endsection
