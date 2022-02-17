<div id="right">


            <div class="well well-small">
                <ul class="list-unstyled">

                    <li>Users &nbsp; : <span><?php $Users = DB::table('users')->get(); $Count = count($Users); echo $Count ?></span></li>
                    {{-- <li>Subscribers &nbsp; : <span><?php $Subscribers = DB::table('subscribers')->get(); $Count = count($Subscribers); echo $Count ?></span></li> --}}

                </ul>
            </div>
            <div class="well well-small">
                <button type="button" onclick="window.open('{{url('/admin/version')}}','_self')" class="btn btn-block"> Version Control </button>
                {{-- <button type="button" onclick="window.open('{{url('/admin/categories')}}','_self')" class="btn btn-warning btn-block"> Categories</button> --}}
                <!-- <button type="button" onclick="window.open('{{url('/admin/brands')}}','_self')" class="btn btn-warning btn-block"> Brands</button> -->
                <button type="button" onclick="window.open('{{url('/admin/services')}}','_self')" class="btn btn-warning btn-block"> Product & Services</button>
                <button type="button" onclick="window.open('{{url('/admin/blog')}}','_self')" class="btn btn-warning btn-block"> Blog Posts </button>

                {{-- <button type="button" onclick="window.open('{{url('/admin/testimonials')}}','_self')" class="btn btn-success btn-block"> Testimonials </button> --}}
                <button type="button" onclick="window.open('{{url('/admin/portfolio')}}','_self')" class="btn btn-success btn-block"> Portfolio </button>
                <!-- <button type="button" onclick="window.open('{{url('/admin/Products_offer')}}','_self')" class="btn btn-success btn-block"> Offers </button> -->


                <button type="button" onclick="window.open('{{url('/admin/notifications')}}','_self')" class="btn btn-danger btn-block"> Notifications </button>
                {{-- <button type="button" onclick="window.open('{{url('/admin/subscribers')}}','_self')" class="btn btn-danger btn-block"> subscribers </button> --}}
                <button type="button" onclick="window.open('{{url('/admin/users')}}','_self')" class="btn btn-success btn-block"> Users </button>
                <button type="button" onclick="window.open('{{url('/admin/updates')}}','_self')" class="btn btn-inverse btn-block"> Updates </button>

            </div>





        </div>
