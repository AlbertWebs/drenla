@extends('front.master-contact')
@section('content')
<?php
    $Portfolio = DB::table('portfolio')->get();
    $Services = DB::table('services')->get();
?>

<main>
    <article class="article">
      <header class="article__header">
        <div class="container">
          <h1 class="article__heading heading heading--size-large">Projects</h1>
          <!-- Filter projects-->
          <div class="article__filter filter">
            <button class="filter__item filter__item--active __js_filter-btn" type="button" data-filter="*">all</button>
            @foreach ($Services as $ser)
            <button class="filter__item __js_filter-btn" type="button" data-filter=".{{str_replace(' ', '_', $ser->title)}}">{{$ser->title}}</button>
            @endforeach

            {{-- <button class="filter__item __js_filter-btn" type="button" data-filter=".__js_architecture">architecture</button>
            <button class="filter__item __js_filter-btn" type="button" data-filter=".__js_building">building</button>
            <button class="filter__item __js_filter-btn" type="button" data-filter=".__js_exterior">exterior</button> --}}
          </div>
        </div>
      </header>
      <div class="article__main article__main--width-full container">
        <ul class="projects-masonry row __js_projects-grid">

          @foreach ($Portfolio as $folio)
          <li class="projects-masonry__item col-12 col-md-6 col-xl-3 __js_masonry-item {{str_replace(' ', '_', $folio->service)}}">
            <a class="card card--small card--masonry" href="{{url('/')}}/our-portfolio/{{$folio->slug}}">
              <div class="card__image">
                <img src="{{url('/')}}/uploads/portfolio/{{$folio->image_one}}" srcset="{{url('/')}}/uploads/portfolio/{{$folio->image_one}}" width="428" height="428" alt="">
              </div>
              <div class="card__content">
                <h3 class="card__heading">{{$folio->title}}
                </h3>
                <div class="card__text">{{$folio->content}}</div>
                <div class="card__bottom">
                  <span class="card__link">See project
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </span>
                </div>
              </div>
            </a>
          </li>
          @endforeach

          <li class="projects-masonry__item col-12 col-md-6 col-xl-3 __js_masonry-item __js_architecture">
            <a class="card card--small card--masonry" href="{{url('/')}}/our-portfolio/slung">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/projects/grid-2/2.jpg')}}" srcset="{{asset('theme/img/picture/projects/grid-2/2@2x.jpg 2x')}}" width="428" height="428" alt="">
              </div>
              <div class="card__content">
                <h3 class="card__heading">Villa
                  <br>In
                  <br>London
                </h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <span class="card__link">See project
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </span>
                </div>
              </div>
            </a>
          </li>
          <li class="projects-masonry__item col-12 col-md-6 col-xl-3 __js_masonry-item __js_building">
            <a class="card card--small card--masonry" href="{{url('/')}}/our-portfolio/slung">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/projects/grid-2/3.jpg')}}" srcset="{{asset('theme/img/picture/projects/grid-2/3@2x.jpg 2x')}}" width="428" height="428" alt="">
              </div>
              <div class="card__content">
                <h3 class="card__heading">Villa
                  <br>In
                  <br>London
                </h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <span class="card__link">See project
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </span>
                </div>
              </div>
            </a>
          </li>
          <li class="projects-masonry__item col-12 col-md-6 col-xl-3 __js_masonry-item __js_interior">
            <a class="card card--small card--masonry" href="{{url('/')}}/our-portfolio/slung">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/projects/grid-2/4.jpg')}}" srcset="{{asset('theme/img/picture/projects/grid-2/4@2x.jpg 2x')}}" width="428" height="428" alt="">
              </div>
              <div class="card__content">
                <h3 class="card__heading">Villa
                  <br>In
                  <br>London
                </h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <span class="card__link">See project
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </span>
                </div>
              </div>
            </a>
          </li>
          <li class="projects-masonry__item col-12 col-md-6 col-xl-3 __js_masonry-item __js_architecture">
            <a class="card card--small card--masonry" href="{{url('/')}}/our-portfolio/slung">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/projects/grid-2/5.jpg')}}" srcset="{{asset('theme/img/picture/projects/grid-2/5@2x.jpg 2x')}}" width="428" height="428" alt="">
              </div>
              <div class="card__content">
                <h3 class="card__heading">Villa
                  <br>In
                  <br>London
                </h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <span class="card__link">See project
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </span>
                </div>
              </div>
            </a>
          </li>
          <li class="projects-masonry__item col-12 col-md-6 col-xl-3 __js_masonry-item __js_architecture">
            <a class="card card--small card--masonry" href="{{url('/')}}/our-portfolio/slung">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/projects/grid-2/6.jpg')}}" srcset="{{asset('theme/img/picture/projects/grid-2/6@2x.jpg 2x')}}" width="428" height="428" alt="">
              </div>
              <div class="card__content">
                <h3 class="card__heading">Villa
                  <br>In
                  <br>London
                </h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <span class="card__link">See project
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </span>
                </div>
              </div>
            </a>
          </li>
          <li class="projects-masonry__item col-12 col-md-6 col-xl-3 __js_masonry-item __js_interior">
            <a class="card card--small card--masonry" href="{{url('/')}}/our-portfolio/slung">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/projects/grid-2/7.jpg')}}" srcset="{{asset('theme/img/picture/projects/grid-2/7@2x.jpg 2x')}}" width="428" height="428" alt="">
              </div>
              <div class="card__content">
                <h3 class="card__heading">Villa
                  <br>In
                  <br>London
                </h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <span class="card__link">See project
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </span>
                </div>
              </div>
            </a>
          </li>
          <li class="projects-masonry__item col-12 col-md-6 col-xl-3 __js_masonry-item __js_building">
            <a class="card card--small card--masonry" href="{{url('/')}}/our-portfolio/slung">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/projects/grid-2/8.jpg')}}" srcset="{{asset('theme/img/picture/projects/grid-2/8@2x.jpg 2x')}}" width="428" height="428" alt="">
              </div>
              <div class="card__content">
                <h3 class="card__heading">Villa
                  <br>In
                  <br>London
                </h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <span class="card__link">See project
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </span>
                </div>
              </div>
            </a>
          </li>
          <li class="projects-masonry__item col-12 col-md-6 col-xl-3 __js_masonry-item __js_interior">
            <a class="card card--small card--masonry" href="{{url('/')}}/our-portfolio/slung">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/projects/grid-2/9.jpg')}}" srcset="{{asset('theme/img/picture/projects/grid-2/9@2x.jpg 2x')}}" width="428" height="428" alt="">
              </div>
              <div class="card__content">
                <h3 class="card__heading">Villa
                  <br>In
                  <br>London
                </h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <span class="card__link">See project
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </span>
                </div>
              </div>
            </a>
          </li>
          <li class="projects-masonry__item col-12 col-md-6 col-xl-3 __js_masonry-item __js_building">
            <a class="card card--small card--masonry" href="{{url('/')}}/our-portfolio/slung">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/projects/grid-2/10.jpg')}}" srcset="{{asset('theme/img/picture/projects/grid-2/10@2x.jpg 2x')}}" width="428" height="428" alt="">
              </div>
              <div class="card__content">
                <h3 class="card__heading">Villa
                  <br>In
                  <br>London
                </h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <span class="card__link">See project
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </span>
                </div>
              </div>
            </a>
          </li>
          <li class="projects-masonry__item col-12 col-md-6 col-xl-3 __js_masonry-item __js_building">
            <a class="card card--small card--masonry" href="{{url('/')}}/our-portfolio/slung">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/projects/grid-2/11.jpg')}}" srcset="{{asset('theme/img/picture/projects/grid-2/11@2x.jpg 2x')}}" width="428" height="428" alt="">
              </div>
              <div class="card__content">
                <h3 class="card__heading">Villa
                  <br>In
                  <br>London
                </h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <span class="card__link">See project
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </span>
                </div>
              </div>
            </a>
          </li>
          <li class="projects-masonry__item col-12 col-md-6 col-xl-3 __js_masonry-item __js_exterior">
            <a class="card card--small card--masonry" href="{{url('/')}}/our-portfolio/slung">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/projects/grid-2/12.jpg')}}" srcset="{{asset('theme/img/picture/projects/grid-2/12@2x.jpg 2x')}}" width="428" height="428" alt="">
              </div>
              <div class="card__content">
                <h3 class="card__heading">Villa
                  <br>In
                  <br>London
                </h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <span class="card__link">See project
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </span>
                </div>
              </div>
            </a>
          </li>
        </ul>
      </div>
    </article>
  </main>

@endsection
