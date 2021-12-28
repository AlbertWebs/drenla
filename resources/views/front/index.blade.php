@extends('front.master')
@section('content')
<main>
    <div class="projects-grid">
      <div class="projects-grid__inner container">
        <ul class="projects-grid__list row">
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card" href="projects-detail.html" data-bg="{{asset('theme/img/picture/home-grid/1.jpg')}}">
              <div class="card__content">
                <div class="card__tag">Architecture</div>
                <h3 class="card__heading">House in Forest</h3>
                <div class="card__text">Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007</div>
              </div>
            </a>
          </li>
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card" href="projects-detail.html" data-bg="{{asset('theme/img/picture/home-grid/2.jpg')}}">
              <div class="card__content">
                <div class="card__tag">Architecture</div>
                <h3 class="card__heading">No 202 Apartment</h3>
                <div class="card__text">Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007</div>
              </div>
            </a>
          </li>
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card" href="projects-detail.html" data-bg="{{asset('theme/img/picture/home-grid/3.jpg')}}">
              <div class="card__content">
                <div class="card__tag">Interior</div>
                <h3 class="card__heading">Living Room Interior Design</h3>
                <div class="card__text">Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007</div>
              </div>
            </a>
          </li>
          {{-- About Us --}}
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card card--active" href="{{url('/')}}/about-us" data-bg="{{asset('theme/img/picture/home-grid/1.jpg')}}">
              <div class="card__content fix-overlay">
                <div class="card__tag"> Drenla Hub</div>
                <h3 class="card__heading"> About Us </h3>
                <div class="card__text">Interior Design and Architectural Visualization Hub. To speak for your unbuilt project</div>
              </div>
            </a>
          </li>
          {{-- About Us --}}
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card" href="projects-detail.html" data-bg="{{asset('theme/img/picture/home-grid/5.jpg')}}">
              <div class="card__content">
                <div class="card__tag">Interior</div>
                <h3 class="card__heading">Bauhaus Architecture Studio</h3>
                <div class="card__text">Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007</div>
              </div>
            </a>
          </li>
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card" href="projects-detail.html" data-bg="{{asset('theme/img/picture/home-grid/6.jpg')}}">
              <div class="card__content">
                <div class="card__tag">Architecture</div>
                <h3 class="card__heading">Luthor’s Villa</h3>
                <div class="card__text">Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007</div>
              </div>
            </a>
          </li>
          {{-- Projects --}}
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card" href="{{url('/')}}/projects" data-bg="{{asset('theme/img/picture/home-grid/7.jpg')}}">
              <div class="card__content">
                <div class="card__tag">Drenla Hub</div>
                <h3 class="card__heading">Our Portfolios</h3>
                <div class="card__text">Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007</div>
              </div>
            </a>
          </li>
          {{-- Projects --}}
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card card--active" href="{{url('/')}}/projects" data-bg="{{asset('theme/img/picture/home-grid/1.jpg')}}">
              <div class="card__content fix-overlay">
                <div class="card__tag"> Drenla Hub</div>
                <h3 class="card__heading"> Our Portfolios </h3>
                <div class="card__text">Interior Design and Architectural Visualization Hub. To speak for your unbuilt project</div>
              </div>
            </a>
          </li>
            {{-- Projects --}}
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card" href="projects-detail.html" data-bg="{{asset('theme/img/picture/home-grid/9.jpg')}}">
              <div class="card__content">
                <div class="card__tag">Architecture</div>
                <h3 class="card__heading">Marton Hotel</h3>
                <div class="card__text">Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007</div>
              </div>
            </a>
          </li>
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card" href="projects-detail.html" data-bg="{{asset('theme/img/picture/home-grid/10.jpg')}}">
              <div class="card__content">
                <div class="card__tag">Architecture</div>
                <h3 class="card__heading">Luthor’s Villa</h3>
                <div class="card__text">Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007</div>
              </div>
            </a>
          </li>
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card" href="projects-detail.html" data-bg="{{asset('theme/img/picture/home-grid/11.jpg')}}">
              <div class="card__content">
                <div class="card__tag">Exterior</div>
                <h3 class="card__heading">No 8 Trump Apartment</h3>
                <div class="card__text">Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007</div>
              </div>
            </a>
          </li>
          <li class="projects-grid__item col-md-6 col-lg-4 col-xl-3">
            <a class="card card--transparent __js_home-grid-card card--active" href="{{url('/')}}/contact-us" data-bg="{{asset('theme/img/picture/home-grid/1.jpg')}}">
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