@extends('front.master-news')
@section('content')
<main>
    <article class="article article--news">
      <header class="article__header">
        <div class="container">
          <a class="article__tag" href="#" target="_blank">interior</a>
          <h1 class="article__heading heading heading--size-large">House, Near Wrocklow</h1>
        </div>
      </header>
      <div class="post-sb-page__main-pic">
        <img src="{{asset('theme/img/picture/news/single-post/bg-post.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/bg-post@2x.jpg')}} 2x" alt="">
      </div>
      <div class="post-sb-page__wrapper">
        <!-- Post-->
        <section class="post-sb">
          <div class="article__main container">
            <div class="post-sb__wrapper">
              <div class="post-sb__content">
                <div class="post-sb__date">
                  <a href="#" class="author">Admin</a> on Jule 3, 2020
                </div>
                <div class="post-sb__title">To mark the first UK show of artist Henri Barande, graphic <a href="#">designer Paul</a>
                </div>
                <div class="post-sb__text">
                  <p>
                    This response is important for our ability to learn from mistakes, but it alsogives rise to self-criticism, because it is part of the threat-protection system. In other words, what keeps us safe can go too far, and keep us too safe. In fact it can trigger self-censoring.</p>
                  <p>
                    One touch of a red-hot stove is usually all we need to avoid that kind of discomfort in the future. The same is true as we experience the emotional sensation of stress from our first instances of social rejection or ridicule. We quickly learn to fear and thus
                    automatically avoid potentially stressful situations of all kinds, including the most common of all:
                  </p>
                </div>
                <div class="post-sb__content-pic">
                  <img src="{{asset('theme/img/picture/news/single-post/item-1.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/item-1@2x.jpg')}} 2x" alt="">
                </div>
                <div class="post-sb__subtitle">Methods for Everyone</div>
                <div class="post-sb__text">
                  <p>
                    Everything along the way, to and from, fascinated her: every pebble, ant, stick, leaf, blade of grass, and crack in the sidewalk was something to be picked up, looked at, tasted, smelled, and shaken. Everything was interesting to her. She knew nothing. I knew
                    everything…been there, done that. She was in the moment, I was in the past. She was mindful. I was mindless.
                  </p>
                  <p>
                    One touch of a red-hot stove is usually all we need to avoid that kind of discomfort in the future. The same is true as we experience the emotional sensation of stress from our first instances of social rejection or ridicule. We quickly learn to fear and thus
                    automatically avoid potentially stressful situations of all kinds, including the most common of all: making mistakes.
                  </p>
                </div>
                <!-- Quote-->
                <blockquote class="quote">
                  <p>Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time. emotional sensation of stress from our firs</p>
                  <cite>
                    <span class="quote__name">Paul</span>
                    <span class="quote__position">Elite Author</span>
                  </cite>
                </blockquote>
                <div class="post-sb__gallery">
                  <div class="post-sb__gallery-col col-12 col-md-6">
                    <img class="small" src="{{asset('theme/img/picture/news/single-post/item-2.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/item-2@2x.jpg')}} 2x" alt="">
                    <img class="small" src="{{asset('theme/img/picture/news/single-post/item-3.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/item-3@2x.jpg')}} 2x" alt="">
                  </div>
                  <div class="post-sb__gallery-col col-12 col-md-6">
                    <img src="{{asset('theme/img/picture/news/single-post/item-4.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/item-4@2x.jpg')}} 2x" alt="">
                  </div>
                </div>
                <div class="post-sb__subtitle">Challenge</div>
                <div class="post-sb__text">
                  <p>
                    Everything along the way, to and from, fascinated her: every pebble, ant, stick, leaf, blade of grass, and crack in the sidewalk was something to be picked up, looked at, tasted, smelled, and shaken. Everything was interesting to her. She knew nothing. I knew
                    everything…been there, done that. She was in the moment, I was in the past. She was mindful. I was mindless.
                  </p>
                  <p>
                    One touch of a red-hot stove is usually all we need to avoid that kind of discomfort in the future. The same is true as we experience the emotional sensation of stress from our first instances of social rejection or ridicule. We quickly learn to fear and thus
                    automatically avoid potentially stressful situations of all kinds, including the most common of all: making mistakes.
                  </p>
                </div>
                <div class="post-sb__bottom">
                  <!-- Tags-->
                  <div class="post-sb__tags">
                    <span>Tags:</span>
                    <a href="#" target="_blank">Inspiration</a>, <a href="#" target="_blank">Workspace</a>, <a href="#" target="_blank">Minimal</a>, <a href="#" target="_blank">Decoation</a>
                  </div>
                  <!-- Social-->
                  <div class="post-sb__socials">
                    <span>Share:</span>
                    <ul class="social post-sb__social">
                      <li class="social__item">
                        <a class="social__link" href="#" target="_blank">
                          <svg width="18" height="21">
                            <use xlink:href="#facebook"></use>
                          </svg>
                        </a>
                      </li>
                      <li class="social__item">
                        <a class="social__link" href="#" target="_blank">
                          <svg width="23" height="21">
                            <use xlink:href="#twitter"></use>
                          </svg>
                        </a>
                      </li>
                      <li class="social__item">
                        <a class="social__link" href="#" target="_blank">
                          <svg width="23" height="21">
                            <use xlink:href="#pinterest"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <!-- Sidebar-->
              <section class="sidebar">
                <div class="sidebar__block">
                  <input type="search" name="search" placeholder="Search" />
                </div>
                <div class="sidebar__block">
                  <p>Related posts</p>
                  <div class="sidebar__popular-posts-wrapper">
                    <a class="sidebar__related-post" href="single-post.html" target="_blank">
                      <figure>
                        <img src="{{asset('theme/img/picture/news/single-post/sidebar-1.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/sidebar-1@2x.jpg')}} 2x" alt="">
                        <div class="sidebar__related-post-content">
                          <p class="title">Horizontal Building</p>
                          <p class="date">Feb, 24th, 2017</p>
                        </div>
                      </figure>
                    </a>
                    <a class="sidebar__related-post" href="single-post.html" target="_blank">
                      <figure>
                        <img src="{{asset('theme/img/picture/news/single-post/sidebar-2.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/sidebar-2@2x.jpg')}} 2x" alt="">
                        <div class="sidebar__related-post-content">
                          <p class="title">House Near Wrocklow</p>
                          <p class="date">Feb, 24th, 2017</p>
                        </div>
                      </figure>
                    </a>
                    <a class="sidebar__related-post" href="single-post.html" target="_blank">
                      <figure>
                        <img src="{{asset('theme/img/picture/news/single-post/sidebar-3.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/sidebar-3@2x.jpg')}} 2x" alt="">
                        <div class="sidebar__related-post-content">
                          <p class="title">Horizontal Building</p>
                          <p class="date">Feb, 24th, 2017</p>
                        </div>
                      </figure>
                    </a>
                  </div>
                </div>
                <div class="sidebar__block">
                  <p>Categories</p>
                  <div class="sidebar__categories">
                    <div class="sidebar__categories-item">
                      <div class="sidebar__categories-name">Architecture</div>
                      <div class="sidebar__categories-num">(05)</div>
                    </div>
                    <div class="sidebar__categories-item">
                      <div class="sidebar__categories-name">Interior</div>
                      <div class="sidebar__categories-num">(02)</div>
                    </div>
                    <div class="sidebar__categories-item">
                      <div class="sidebar__categories-name">Decoration</div>
                      <div class="sidebar__categories-num">(12)</div>
                    </div>
                    <div class="sidebar__categories-item">
                      <div class="sidebar__categories-name">Plants</div>
                      <div class="sidebar__categories-num">(03)</div>
                    </div>
                  </div>
                </div>
                <div class="sidebar__block">
                  <p>Archives</p>
                  <div class="sidebar__categories">
                    <div class="sidebar__categories-item">
                      <div class="sidebar__categories-name">January 2020</div>
                    </div>
                    <div class="sidebar__categories-item">
                      <div class="sidebar__categories-name">December 2019</div>
                    </div>
                    <div class="sidebar__categories-item">
                      <div class="sidebar__categories-name">June 2018</div>
                    </div>
                    <div class="sidebar__categories-item">
                      <div class="sidebar__categories-name">Jule 2017</div>
                    </div>
                  </div>
                </div>
                <div class="sidebar__block">
                  <p>Popular Tags</p>
                  <div class="sidebar__tags">
                    <a class="sidebar__tag-item" href="#" target="_blank">inspiration</a>
                    <a class="sidebar__tag-item" href="#" target="_blank">interior</a>
                    <a class="sidebar__tag-item" href="#" target="_blank">exterior</a>
                    <a class="sidebar__tag-item" href="#" target="_blank">decoration</a>
                    <a class="sidebar__tag-item" href="#" target="_blank">architecture</a>
                  </div>
                </div>
              </section>
            </div>
          </div>
          <!-- Related posts-->
          <section class="post-related post-sb__related">
            <div class="post-related__container container">
              <div class="post-related__title">
                <span>Related posts</span>
                <a href="#" target="_blank">View all news
                  <svg width="20" height="20">
                    <use xlink:href="#chevron-right"></use>
                  </svg>
                </a>
              </div>
              <div class="post-related__wrapper row">
                <div class="post-related__item col-12 col-md-4">
                  <div class="card card--small card--masonry card--news">
                    <div class="card__image">
                      <img src="{{asset('theme/img/picture/news/single-post/related-4.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/related-4@2x.jpg')}} 2x" alt="">
                    </div>
                    <div class="card__content">
                      <div class="card__date">Jule 03, 2020</div>
                      <h3 class="card__heading">Discover Architecture</h3>
                      <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                      <div class="card__bottom">
                        <a class="card__link" href="projects-detail-dark.html">Learn more
                          <svg width="20" height="20">
                            <use xlink:href="#chevron-right"></use>
                          </svg>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="post-related__item col-12 col-md-4">
                  <div class="card card--small card--masonry card--news">
                    <div class="card__image">
                      <img src="{{asset('theme/img/picture/news/single-post/related-5.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/related-5@2x.jpg')}} 2x" alt="">
                    </div>
                    <div class="card__content">
                      <div class="card__date">Jule 03, 2020</div>
                      <h3 class="card__heading">Discover Architecture</h3>
                      <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                      <div class="card__bottom">
                        <a class="card__link" href="projects-detail-dark.html">Learn more
                          <svg width="20" height="20">
                            <use xlink:href="#chevron-right"></use>
                          </svg>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="post-related__item col-12 col-md-4">
                  <div class="card card--small card--masonry card--news">
                    <div class="card__image">
                      <img src="{{asset('theme/img/picture/news/single-post/related-6.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/related-6@2x.jpg')}} 2x" alt="">
                    </div>
                    <div class="card__content">
                      <div class="card__date">Jule 03, 2020</div>
                      <h3 class="card__heading">Discover Architecture</h3>
                      <div class="card__text">Projects for many large domestic and foreign corporations, enterprises in many elds such</div>
                      <div class="card__bottom">
                        <a class="card__link" href="projects-detail-dark.html">Learn more
                          <svg width="20" height="20">
                            <use xlink:href="#chevron-right"></use>
                          </svg>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <div class="article__main container">
            <!-- Comments-->
            <section class="comment post-sb__comment">
              <div class="comment__title">Comments</div>
              <div class="comment__wrapper">
                <div class="comment-item">
                  <div class="comment-item__photo">
                    <img src="{{asset('theme/img/picture/news/single-post/comment-1.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/comment-1@2x.jpg')}} 2x" alt="">
                  </div>
                  <div class="comment-item__content">
                    <div class="comment-item__top">
                      <div class="comment-item__name">Hayley</div>
                      <div class="comment-item__sent">Jul 03, 2020 at 15 hours ago</div>
                    </div>
                    <div class="comment-item__text">Everything along the way, to and from, fascinated her: every pebble, ant, stick, leaf, blade of grass, and crack in the sidewalk was something to be picked up</div>
                    <button class="comment-item__reply">Reply</button>
                  </div>
                </div>
                <div class="comment-item comment-item--replyed">
                  <div class="comment-item__photo">
                    <img src="{{asset('theme/img/picture/news/single-post/comment-2.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/comment-2@2x.jpg')}} 2x" alt="">
                  </div>
                  <div class="comment-item__content">
                    <div class="comment-item__top">
                      <div class="comment-item__name">Denzel</div>
                      <div class="comment-item__sent">Jul 03, 2020 at 15 hours ago</div>
                    </div>
                    <div class="comment-item__text">Everything along the way, to and from, fascinated her: every pebble, ant, stick, leaf, blade of grass</div>
                    <button class="comment-item__reply">Reply</button>
                  </div>
                </div>
                <div class="comment-item">
                  <div class="comment-item__photo">
                    <img src="{{asset('theme/img/picture/news/single-post/comment-3.jpg')}}" srcset="{{asset('theme/img/picture/news/single-post/comment-3@2x.jpg')}} 2x" alt="">
                  </div>
                  <div class="comment-item__content">
                    <div class="comment-item__top">
                      <div class="comment-item__name">Amanda</div>
                      <div class="comment-item__sent">Jul 03, 2020 at 15 hours ago</div>
                    </div>
                    <div class="comment-item__text">Everything along the way, to and from, fascinated her: every pebble, ant, stick, leaf, blade of grass, and crack in the sidewalk was something to be picked up</div>
                    <button class="comment-item__reply">Reply</button>
                  </div>
                </div>
              </div>
            </section>
            <!-- Send comment-->
            <form class="post-sb__comment-form comment-form js-form-validate" action="https://ultimatewebsolutions.net/larson/php/mail.php" method="POST">
              <div class="comment-form__title">Post a comment</div>
              <div class="comment-form__inputs-group"> 
                <div class="comment-form__field-wrapper">
                  <label class="field comment-form__field">
                    <input type="text" name="name" placeholder="Name">
                  </label>
                  <div class="field-error" style="display: none"></div>
                </div>
                <div class="comment-form__field-wrapper">
                  <label class="field comment-form__field">
                    <input type="email" name="email" placeholder="Email *" required>
                  </label>
                  <div class="field-error" style="display: none"></div>
                </div>
              </div>
              <label class="field comment-form__field">
                <textarea name="message" placeholder="Message *" required></textarea>
              </label>
              <div class="field-error" style="display: none"></div>
              <button class="btn comment-form__btn" type="submit">post comment</button>
            </form>
          </div>
        </section>
      </div>
    </article>
  </main>
@endsection