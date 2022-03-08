<div id="left" >
            <div class="media user-media well-small">
                <a class="user-link" href="{{url('/admin')}}/editAdmin/{{Auth::user()->id}}">
                    <img width="64" height="64" class="media-object img-thumbnail user-img" alt="{{Auth::user()->name}}" src="{{url('/')}}/favicons/apple-icon-180x180.png" />
                </a>
                <br />
                <div class="media-body">
                    <h5 class="media-heading"><small><b> {{Auth::user()->name}}</b></small> </h5>
                    <ul class="list-unstyled user-info">

                        <li>
                             <a href="{{url('/admin')}}/editdashboard/{{Auth::user()->id}}" class="btn btn-success btn-xs btn-circle" style="width: 10px;height: 12px;"></a> Online

                        </li>

                    </ul>
                </div>
                <br />
            </div>

            <ul id="menu" class="collapse">


                <li class="panel active">
                    <a href="{{url('/admin')}}" >
                        <i class="icon-home"></i> Dashboard


                    </a>
                </li>


                <li class="panel">
                    <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#error-nav">
                        <i class="icon-folder-open"></i>  Home Links

                        <span class="pull-right">
                            <i class="icon-angle-left"></i>
                        </span>
                        <?php $Page = DB::table('links')->whereNotNull('image')->get(); ?>
                          &nbsp; <span class="label label-success"><?php echo count($Page) ?></span>&nbsp;
                    </a>
                    <ul class="collapse" id="error-nav">

                        @foreach($Page as $page)
                        <?php $Portfolio = \App\Models\Portfolio::find($page->portfolio_id); ?>
                        <li><a href="{{url('/admin/')}}/editLinks/{{$page->id}}"><i class="icon-angle-right"></i> Grid - {{$page->grid}} </a></li>
                        @endforeach

                        <center>&nbsp;</center>
                        {{-- <li><a href="{{url('/admin/about')}}"><i class="icon-angle-right"></i> About  </a></li>
                        <li><a href="{{url('/admin/privacy')}}"><i class="icon-angle-right"></i> Privacy  </a></li>
                        <li><a href="{{url('/admin/terms')}}"><i class="icon-angle-right"></i> Terms  </a></li>
                        <li><a href="{{url('/admin/copyright')}}"><i class="icon-angle-right"></i> Copyright  </a></li> --}}

                    </ul>
                </li>


                <li><a href="{{url('admin/addService')}}"><i class="icon-plus"></i>  <i class="icon-user-md"></i> Add Product & Services </a></li>
                <li><a href="{{url('admin/addPortfolio')}}"><i class="icon-plus"></i>  <i class="icon-thumbs-up-alt"></i> Add Portfolio </a></li>
                <li><a href="{{url('admin/addBlog')}}"><i class="icon-plus"></i>  <i class="icon-thumbs-up-alt"></i> Add News & Blog </a></li>

                <!-- <li><a href="{{url('admin/addCategory')}}"><i class="icon-plus"></i>  <i class="icon-user-md"></i> Add Category </a></li> -->


                {{-- <li><a href="{{url('admin/addTestimonial')}}"><i class="icon-plus"></i>  <i class="icon-thumbs-up-alt"></i> Add Testimonial </a></li> --}}


                <li><a href="{{url('admin/addAdmin')}}"><i class="icon-plus"></i>  <i class="icon-user-md"></i> Add Admin & Team  </a></li>
                {{-- <li><a href="{{url('admin/why')}}"><i class="icon-cog"></i> Why Choose Us </a></li> --}}
                <li><a href="{{url('admin/sitesettings')}}"><i class="icon-cog"></i> Site Settings </a></li>
                <!-- <li><a href="{{url('admin/seosettings')}}"><i class="icon-cog"></i> SEO Settings </a></li> -->
                <li><a href="{{url('admin/logout')}}"><i class="icon-signin"></i> Log Out </a></li>






            </ul>

        </div>
