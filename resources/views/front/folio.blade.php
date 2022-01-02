@extends('front.master-contact')
@section('content')

<main>
    <article class="article">
      <header class="article__header">
        <div class="container">
          <h1 class="article__heading heading heading--size-large">Residence in Forest</h1>
          <div class="article__header-text">“Totally focused on tools to enhance and help your content shine. We have created this theme thinking only in options helpfully for the daily needs in a creative environment like an agency,”</div>
        </div>
      </header>
      <div class="article__projects-slider projects-slider swiper-container __js_projects-slider">
        <div class="swiper-wrapper">
          <div class="projects-slider__item swiper-slide">
            <img src="{{asset('theme/img/picture/projects/detail/1.jpg')}}" srcset="{{asset('theme/img/picture/projects/detail/1@2x.jpg 2x')}}" width="1111" height="768" alt="">
          </div>
          <div class="projects-slider__item swiper-slide">
            <img src="{{asset('theme/img/picture/projects/detail/2.jpg')}}" srcset="{{asset('theme/img/picture/projects/detail/2@2x.jpg 2x')}}" width="1111" height="768" alt="">
          </div>
          <div class="projects-slider__item swiper-slide">
            <img src="{{asset('theme/img/picture/projects/detail/3.jpg')}}" srcset="{{asset('theme/img/picture/projects/detail/3@2x.jpg 2x')}}" width="1111" height="768" alt="">
          </div>
        </div>
        <div class="projects-slider__navigation">
          <button class="projects-slider__next" type="button" aria-label="next">
            <svg width="64" height="64">
              <use xlink:href="#chevron-right"></use>
            </svg>
          </button>
          <button class="projects-slider__prev" type="button" aria-label="prev">
            <svg width="64" height="64">
              <use xlink:href="#chevron-left"></use>
            </svg>
          </button>
        </div>
      </div>
      <div class="article__main container">
        <ul class="article__project-meta project-meta" data-aos="fade">
          <li class="project-meta__item">
            <div class="project-meta__item-title">Client</div>
            <div class="project-meta__item-text">Richard Hunt</div>
          </li>
          <li class="project-meta__item">
            <div class="project-meta__item-title">Completion</div>
            <div class="project-meta__item-text">February 5th, 2017</div>
          </li>
          <li class="project-meta__item">
            <div class="project-meta__item-title">Project type</div>
            <div class="project-meta__item-text">Villar, Residence</div>
          </li>
          <li class="project-meta__item">
            <div class="project-meta__item-title">Designer</div>
            <div class="project-meta__item-text">Samuel</div>
          </li>
        </ul>
       
        <div class="process">
           <div class="process__text" data-aos="fade">Totally focused on tools to enhance and help your content shine. We have created this theme thinking only in options helpfully for the daily needs in a creative environment like an agency, a small studio.</div>
        </div>
      </div>
    </article>
  </main>

@endsection