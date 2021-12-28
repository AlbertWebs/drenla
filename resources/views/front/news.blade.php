@extends('front.master-news')
@section('content')
<main>
    <article class="article article--news">
      <header class="article__header">
        <div class="container">
          <h1 class="article__heading heading heading--size-large">News</h1>
          <!-- Filter projects-->
          <div class="article__filter filter">
            <button class="filter__item filter__item--active __js_filter-btn" type="button" data-filter="*">all</button>
            <button class="filter__item __js_filter-btn" type="button" data-filter=".__js_inspiration">inspiration</button>
            <button class="filter__item __js_filter-btn" type="button" data-filter=".__js_decoration">decoration</button>
            <button class="filter__item __js_filter-btn" type="button" data-filter=".__js_plants">plants</button>
            <button class="filter__item __js_filter-btn" type="button" data-filter=".__js_architecture">architecture</button>
            <button class="filter__item __js_filter-btn" type="button" data-filter=".__js_interior">interior</button>
          </div>
        </div>
      </header>
      <div class="article__main container">
        <ul class="news-listing row __js_news-grid">
          <li class="news-listing__item col-12 col-xl-12 __js_masonry-item __js_interior">
            <div class="card card--small card--masonry card--news">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/news/listing/item-1.jpg')}}" srcset="{{asset('theme/img/picture/news/listing/item-1@2x.jpg')}} 2x" alt="">
              </div>
              <div class="card__content">
                <div class="card__date">Jule 03, 2020</div>
                <h3 class="card__heading">Discover Interior</h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <a class="card__link" href="{{url('/')}}/latest-news/slung">Learn more
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </a>
                </div>
              </div>
            </div>
          </li>
          <li class="news-listing__item col-12 col-xl-12 __js_masonry-item __js_architecture">
            <div class="card card--small card--masonry card--news">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/news/listing/item-2.jpg')}}" srcset="{{asset('theme/img/picture/news/listing/item-2@2x.jpg')}} 2x" alt="">
              </div>
              <div class="card__content">
                <div class="card__date">Jule 03, 2020</div>
                <h3 class="card__heading">Discover Interior</h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <a class="card__link" href="{{url('/')}}/latest-news/slung">Learn more
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </a>
                </div>
              </div>
            </div>
          </li>
          <li class="news-listing__item col-12 col-xl-12 __js_masonry-item __js_plants">
            <div class="card card--small card--masonry card--news">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/news/listing/item-3.jpg')}}" srcset="{{asset('theme/img/picture/news/listing/item-3@2x.jpg')}} 2x" alt="">
              </div>
              <div class="card__content">
                <div class="card__date">Jule 03, 2020</div>
                <h3 class="card__heading">Discover Interior</h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <a class="card__link" href="{{url('/')}}/latest-news/slung">Learn more
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </a>
                </div>
              </div>
            </div>
          </li>
          <li class="news-listing__item col-12 col-xl-12 __js_masonry-item __js_interior">
            <div class="card card--small card--masonry card--news">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/news/listing/item-4.jpg')}}" srcset="{{asset('theme/img/picture/news/listing/item-4@2x.jpg')}} 2x" alt="">
              </div>
              <div class="card__content">
                <div class="card__date">Jule 03, 2020</div>
                <h3 class="card__heading">Discover Interior</h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <a class="card__link" href="{{url('/')}}/latest-news/slung">Learn more
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </a>
                </div>
              </div>
            </div>
          </li>
          <li class="news-listing__item col-12 col-xl-12 __js_masonry-item __js_decoration">
            <div class="card card--small card--masonry card--news">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/news/listing/item-5.jpg')}}" srcset="{{asset('theme/img/picture/news/listing/item-5@2x.jpg')}} 2x" alt="">
              </div>
              <div class="card__content">
                <div class="card__date">Jule 03, 2020</div>
                <h3 class="card__heading">Discover Interior</h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <a class="card__link" href="{{url('/')}}/latest-news/slung">Learn more
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </a>
                </div>
              </div>
            </div>
          </li>
          <li class="news-listing__item col-12 col-xl-12 __js_masonry-item __js_inspiration">
            <div class="card card--small card--masonry card--news">
              <div class="card__image">
                <img src="{{asset('theme/img/picture/news/listing/item-6.jpg')}}" srcset="{{asset('theme/img/picture/news/listing/item-6@2x.jpg')}} 2x" alt="">
              </div>
              <div class="card__content">
                <div class="card__date">Jule 03, 2020</div>
                <h3 class="card__heading">Discover Interior</h3>
                <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                <div class="card__bottom">
                  <a class="card__link" href="{{url('/')}}/latest-news/slung">Learn more
                    <svg width="20" height="20">
                      <use xlink:href="#chevron-right"></use>
                    </svg>
                  </a>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </article>
  </main>
@endsection