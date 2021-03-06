@extends('front.master-contact')
@section('content')

<main>
    <article class="article">
      <header class="article__header">
        <div class="container">
          <h1 class="article__heading heading heading--size-large">Strategy-led
            <br>
            <span class="color-yellow">design</span> in every detail
          </h1>
        </div>
      </header>
      <div class="article__about-hero container">
        <img src="{{asset('theme/img/picture/about/hero.jpg')}}" width="1800" height="768" alt="">
      </div>
      <section class="webpage__about-block about-block about-block--columns">
        <div class="about-block__inner container" data-number="01.">
          <header class="about-block__header" data-aos="fade">
            <h2 class="about-block__heading heading">A few words About us</h2>
          </header>
          <div class="about-block__main">
            <div class="about-block__text" data-aos="fade">
              <p>Totally focused on tools to enhance and help your content shine. We have created this theme thinking only in options helpfully for the daily needs in a creative environment like an agency, a small studio.</p>
              <p>As a result working with hundred of creatives all these past years, we are now delivering a theme that will be part of your toolset.</p>
            </div>
            <blockquote class="about-block__quote" data-aos="fade">I knew everything…been there, done that. She was in the moment,
              <br>I was in the past. She was mindful. I was mindless.
            </blockquote>
          </div>
        </div>
      </section>
      <section class="webpage__about-block about-block">
        <div class="about-block__inner container" data-number="02.">
          <header class="about-block__header" data-aos="fade">
            <h2 class="about-block__heading heading">Our Team</h2>
          </header>
          <div class="about-block__main">
            <ul class="about-block__team team-list row">
              <li class="team-list__item col-12 col-md-6 col-lg-4" data-aos="fade" data-aos-delay="0">
                <div class="card card--team" tabindex="0">
                  <div class="card__image">
                    <img src="{{asset('theme/img/picture/team/1.jpg')}}" srcset="{{asset('theme/img/picture/team/1@2x.jpg')}}" width="350" height="530" alt="">
                  </div>
                  <div class="card__content">
                    <h3 class="card__heading">Jack WIlshere</h3>
                    <div class="card__text">CEO / Founder</div>
                    <div class="card__bottom">
                      <!-- Social-->
                      <ul class="card__social social">
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="facebook icon">
                              <use xlink:href="#facebook"></use>
                            </svg>
                            <span class="visually-hidden">facebook</span>
                          </a>
                        </li>
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="twitter icon">
                              <use xlink:href="#twitter"></use>
                            </svg>
                            <span class="visually-hidden">twitter</span>
                          </a>
                        </li>
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="linkedin-original icon">
                              <use xlink:href="#linkedin-original"></use>
                            </svg>
                            <span class="visually-hidden">linkedin-original</span>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </li>
              <li class="team-list__item col-12 col-md-6 col-lg-4" data-aos="fade" data-aos-delay="200">
                <div class="card card--team" tabindex="0">
                  <div class="card__image">
                    <img src="{{asset('theme/img/picture/team/2.jpg')}}" srcset="{{asset('theme/img/picture/team/2@2x.jpg')}}" width="350" height="530" alt="">
                  </div>
                  <div class="card__content">
                    <h3 class="card__heading">Jack WIlshere</h3>
                    <div class="card__text">CEO / Founder</div>
                    <div class="card__bottom">
                      <!-- Social-->
                      <ul class="card__social social">
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="facebook icon">
                              <use xlink:href="#facebook"></use>
                            </svg>
                            <span class="visually-hidden">facebook</span>
                          </a>
                        </li>
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="twitter icon">
                              <use xlink:href="#twitter"></use>
                            </svg>
                            <span class="visually-hidden">twitter</span>
                          </a>
                        </li>
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="linkedin-original icon">
                              <use xlink:href="#linkedin-original"></use>
                            </svg>
                            <span class="visually-hidden">linkedin-original</span>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </li>
              <li class="team-list__item col-12 col-md-6 col-lg-4" data-aos="fade" data-aos-delay="400">
                <div class="card card--team" tabindex="0">
                  <div class="card__image">
                    <img src="{{asset('theme/img/picture/team/3.jpg')}}" srcset="{{asset('theme/img/picture/team/3@2x.jpg')}}" width="350" height="530" alt="">
                  </div>
                  <div class="card__content">
                    <h3 class="card__heading">Jack WIlshere</h3>
                    <div class="card__text">CEO / Founder</div>
                    <div class="card__bottom">
                      <!-- Social-->
                      <ul class="card__social social">
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="facebook icon">
                              <use xlink:href="#facebook"></use>
                            </svg>
                            <span class="visually-hidden">facebook</span>
                          </a>
                        </li>
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="twitter icon">
                              <use xlink:href="#twitter"></use>
                            </svg>
                            <span class="visually-hidden">twitter</span>
                          </a>
                        </li>
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="linkedin-original icon">
                              <use xlink:href="#linkedin-original"></use>
                            </svg>
                            <span class="visually-hidden">linkedin-original</span>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </li>
              <li class="team-list__item col-12 col-md-6 col-lg-4" data-aos="fade" data-aos-delay="0">
                <div class="card card--team" tabindex="0">
                  <div class="card__image">
                    <img src="{{asset('theme/img/picture/team/4.jpg')}}" srcset="{{asset('theme/img/picture/team/4@2x.jpg')}}" width="350" height="530" alt="">
                  </div>
                  <div class="card__content">
                    <h3 class="card__heading">Jack WIlshere</h3>
                    <div class="card__text">CEO / Founder</div>
                    <div class="card__bottom">
                      <!-- Social-->
                      <ul class="card__social social">
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="facebook icon">
                              <use xlink:href="#facebook"></use>
                            </svg>
                            <span class="visually-hidden">facebook</span>
                          </a>
                        </li>
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="twitter icon">
                              <use xlink:href="#twitter"></use>
                            </svg>
                            <span class="visually-hidden">twitter</span>
                          </a>
                        </li>
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="linkedin-original icon">
                              <use xlink:href="#linkedin-original"></use>
                            </svg>
                            <span class="visually-hidden">linkedin-original</span>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </li>
              <li class="team-list__item col-12 col-md-6 col-lg-4" data-aos="fade" data-aos-delay="200">
                <div class="card card--team" tabindex="0">
                  <div class="card__image">
                    <img src="{{asset('theme/img/picture/team/5.jpg')}}" srcset="{{asset('theme/img/picture/team/5@2x.jpg')}}" width="350" height="530" alt="">
                  </div>
                  <div class="card__content">
                    <h3 class="card__heading">Jack WIlshere</h3>
                    <div class="card__text">CEO / Founder</div>
                    <div class="card__bottom">
                      <!-- Social-->
                      <ul class="card__social social">
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="facebook icon">
                              <use xlink:href="#facebook"></use>
                            </svg>
                            <span class="visually-hidden">facebook</span>
                          </a>
                        </li>
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="twitter icon">
                              <use xlink:href="#twitter"></use>
                            </svg>
                            <span class="visually-hidden">twitter</span>
                          </a>
                        </li>
                        <li class="social__item">
                          <a class="social__link" href="#" target="_blank">
                            <svg width="20" height="20" aria-label="linkedin-original icon">
                              <use xlink:href="#linkedin-original"></use>
                            </svg>
                            <span class="visually-hidden">linkedin-original</span>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </li>
              <li class="team-list__item col-12 col-md-6 col-lg-4" data-aos="fade" data-aos-delay="400">
                <a class="card card--send" href="#">
                  <div class="card__send-text">submit your resume</div>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </section>
      <section class="webpage__about-block about-block">
        <div class="about-block__inner container" data-number="03.">
          <header class="about-block__header" data-aos="fade">
            <h2 class="about-block__heading heading">Services</h2>
          </header>
          <div class="about-block__main services-provided">
            <div class="row">
              <div class="services-provided__column col-12 col-md" data-aos="fade">
                <div class="services-provided__icon">
                  <svg width="58" height="61">
                    <use xlink:href="#apartment"></use>
                  </svg>
                </div>
                <h3 class="services-provided__column-heading">Apartment</h3>
                <div class="services-provided__column-text">Projects for many large domestic and foreign corporations, enProjects for many large domestic and foreign corporations, enterprises in many elds such as nance, banking, F&B, education, communication.terprises in many elds such as nance, banking, F&B, education, communication.</div>
                <a class="services-provided__link" href="single-services.html">Read more
                  <svg width="20" height="20">
                    <use xlink:href="#chevron-right"></use>
                  </svg>
                </a>
              </div>
              <div class="services-provided__column col-12 col-md" data-aos="fade" data-aos-delay="200">
                <div class="services-provided__icon">
                  <svg width="52" height="61">
                    <use xlink:href="#building"></use>
                  </svg>
                </div>
                <h3 class="services-provided__column-heading">Building</h3>
                <div class="services-provided__column-text">Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007, Sparch is specializing in providing innovative services such as website design, brand identity and marketinge design, brand identity and marketing</div>
              </div>
              <div class="services-provided__column col-12 col-md" data-aos="fade" data-aos-delay="400">
                <div class="services-provided__icon">
                  <svg width="58" height="52">
                    <use xlink:href="#roller"></use>
                  </svg>
                </div>
                <h3 class="services-provided__column-heading">Interior</h3>
                <div class="services-provided__column-text">Projects for many large domestic and foreign corporations, enProjects for many large domestic and foreign corporations, enterprises in many elds such as nance, banking, F&B, education, communication.terprises in many elds such as nance, banking, F&B, education, communication.</div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="webpage__about-block about-block">
        <div class="about-block__inner container" data-number="04.">
          <header class="about-block__header" data-aos="fade">
            <h2 class="about-block__heading heading">Testimonials</h2>
          </header>
          <div class="about-block__main reviews-carousel" data-aos="fade">
            <div class="swiper-container __js_review-carousel">
              <div class="swiper-wrapper">
                <div class="reviews-carousel__item review-card swiper-slide">
                  <div class="review-card__image">
                    <img src="{{asset('theme/img/picture/avatar-paul.png')}}" srcset="{{asset('theme/img/picture/avatar-paul@2x.png 2x')}}" width="112" height="112" alt="">
                  </div>
                  <div class="review-card__name">Paul</div>
                  <div class="review-card__post">Designer in <span>Paul.com</span>
                  </div>
                  <div class="review-card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such as nance, banking, F&B, education, communication.</div>
                </div>
                <div class="reviews-carousel__item review-card swiper-slide">
                  <div class="review-card__image">
                    <img src="{{asset('theme/img/picture/avatar-robert.png')}}" srcset="{{asset('theme/img/picture/avatar-robert@2x.png 2x')}}" width="112" height="112" alt="">
                  </div>
                  <div class="review-card__name">Robert</div>
                  <div class="review-card__post">Founder in <span>Apple inc.</span>
                  </div>
                  <div class="review-card__text">Founded in 2007, Sparch is specializing in providing innovative services such as website design, brand identity and marketing</div>
                </div>
                <div class="reviews-carousel__item review-card swiper-slide">
                  <div class="review-card__image">
                    <img src="{{asset('theme/img/picture/avatar-robert.png')}}" srcset="{{asset('theme/img/picture/avatar-robert@2x.png 2x')}}" width="112" height="112" alt="">
                  </div>
                  <div class="review-card__name">Robert</div>
                  <div class="review-card__post">Founder in <span>Apple inc.</span>
                  </div>
                  <div class="review-card__text">Founded in 2007, Sparch is specializing in providing innovative services such as website design, brand identity and marketing</div>
                </div>
                <div class="reviews-carousel__item review-card swiper-slide">
                  <div class="review-card__image">
                    <img src="{{asset('theme/img/picture/avatar-robert.png')}}" srcset="{{asset('theme/img/picture/avatar-robert@2x.png 2x')}}" width="112" height="112" alt="">
                  </div>
                  <div class="review-card__name">Robert</div>
                  <div class="review-card__post">Founder in <span>Apple inc.</span>
                  </div>
                  <div class="review-card__text">Founded in 2007, Sparch is specializing in providing innovative services such as website design, brand identity and marketing</div>
                </div>
              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>
        </div>
      </section>
      <div class="partners" style="background-color:#ffffff; padding:100px">
        <div class="partners__inner container" >
          <ul class="partners__list">
            <li class="partners__item" data-aos="fade" data-aos-delay="0">
              <img src="{{asset('theme/img/picture/partners/1.png')}}" srcset="{{asset('theme/img/picture/partners/1@2x.png 2x')}}" width="117" height="47" alt="behr handelsagentur">
            </li>
            <li class="partners__item" data-aos="fade" data-aos-delay="200">
              <img src="{{asset('theme/img/picture/partners/2.png')}}" srcset="{{asset('theme/img/picture/partners/2@2x.png 2x')}}" width="139" height="68" alt="christopher willis">
            </li>
            <li class="partners__item" data-aos="fade" data-aos-delay="400">
              <img src="{{asset('theme/img/picture/partners/3.png')}}" srcset="{{asset('theme/img/picture/partners/3@2x.png 2x')}}" width="150" height="45" alt="artchive crafts gallery">
            </li>
            <li class="partners__item" data-aos="fade" data-aos-delay="600">
              <img src="{{asset('theme/img/picture/partners/4.png')}}" srcset="{{asset('theme/img/picture/partners/4@2x.png 2x')}}" width="125" height="32" alt="artchive crasfts gallery">
            </li>
          </ul>
        </div>
      </div>
    </article>
  </main>

@endsection