<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('index');
Route::get('/contact-us',[App\Http\Controllers\HomeController::class, 'contact'])->name('contact');
Route::get('/about-us',[App\Http\Controllers\HomeController::class, 'about'])->name('about');
Route::get('/our-portfolio',[App\Http\Controllers\HomeController::class, 'portfolio'])->name('portfolio');
Route::get('/our-portfolio/{id}',[App\Http\Controllers\HomeController::class, 'folio'])->name('folio');
Route::get('/latest-news',[App\Http\Controllers\HomeController::class, 'news'])->name('latest-news');
Route::get('/latest-news/{id}',[App\Http\Controllers\HomeController::class, 'new_single'])->name('latest-news-single');

Route::get('/terms-and-conditions',[App\Http\Controllers\HomeController::class, 'terms'])->name('terms');
Route::get('/privacy-policy',[App\Http\Controllers\HomeController::class, 'privacy'])->name('privacy');
Route::get('/copyright',[App\Http\Controllers\HomeController::class, 'copyright'])->name('copyright');

// Clear Routes
Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    $exitCode2 = Artisan::call('config:clear');
    echo "Done";
});

Auth::routes();
Route::group(['prefix'=>'admin'], function(){
//Testimonial
Route::get('/', [App\Http\Controllers\AdminsController::class, 'index'])->name('admin.home')->middleware('is_admin');
Route::get('/addTestimonial', [App\Http\Controllers\AdminsController::class,  'addTestimonial'])->middleware('is_admin');
Route::post('/add_Testimonial', [App\Http\Controllers\AdminsController::class,  'add_Testimonial'])->middleware('is_admin');
Route::get('/testimonials',[App\Http\Controllers\AdminsController::class,  'testimonials'])->middleware('is_admin');
Route::get('/editTestimonial/{id}', [App\Http\Controllers\AdminsController::class,  'editTestimonial'])->middleware('is_admin');
Route::get('/deleteTestimonial/{id}', [App\Http\Controllers\AdminsController::class,  'deleteTestimonial'])->middleware('is_admin');
Route::post('/edit_Testimonial/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Testimonial'])->middleware('is_admin');

// Pages
Route::get('/pages',[App\Http\Controllers\AdminsController::class,  'values'])->middleware('is_admin');

//Terms Privacy copyright
//copyright
Route::get('/copyright',[App\Http\Controllers\AdminsController::class,  'copyright'])->middleware('is_admin');
Route::post('/edit_copyright', [App\Http\Controllers\AdminsController::class,  'edit_copyright'])->middleware('is_admin');
// Delivery Terms
Route::get('/delivery',[App\Http\Controllers\AdminsController::class,  'delivery'])->middleware('is_admin');
Route::post('/edit_delivery', [App\Http\Controllers\AdminsController::class,  'edit_delivery'])->middleware('is_admin');
//Privacy
Route::get('/privacy',[App\Http\Controllers\AdminsController::class,  'privacy'])->middleware('is_admin');
Route::get('/addPrivacy', [App\Http\Controllers\AdminsController::class,  'addPrivacy'])->middleware('is_admin');
Route::get('/editPrivacy/{id}', [App\Http\Controllers\AdminsController::class,  'editPrivacy'])->middleware('is_admin');
Route::post('/add_privacy', [App\Http\Controllers\AdminsController::class,  'add_privacy'])->middleware('is_admin');
Route::get('/delete_privacy/{id}',[App\Http\Controllers\AdminsController::class,  'delete_privacy'])->middleware('is_admin');
Route::post('/edit_privacy/{id}', [App\Http\Controllers\AdminsController::class,  'edit_privacy'])->middleware('is_admin');
//values
Route::get('/values',[App\Http\Controllers\AdminsController::class,  'values'])->middleware('is_admin');
Route::get('/addValues', [App\Http\Controllers\AdminsController::class,  'addValues'])->middleware('is_admin');
Route::get('/editValues/{id}', [App\Http\Controllers\AdminsController::class,  'editValues'])->middleware('is_admin');
Route::post('/add_values', [App\Http\Controllers\AdminsController::class,  'add_values'])->middleware('is_admin');
Route::get('/delete_values/{id}',[App\Http\Controllers\AdminsController::class,  'delete_values'])->middleware('is_admin');
Route::post('/edit_values/{id}', [App\Http\Controllers\AdminsController::class,  'edit_values'])->middleware('is_admin');

//Offers
Route::get('/Products_offer',[App\Http\Controllers\AdminsController::class,  'Products_offer'])->middleware('is_admin');
Route::get('/swapoffer/{id}',[App\Http\Controllers\AdminsController::class,  'swapoffer'])->middleware('is_admin');
Route::get('/deleteOffer/{id}',[App\Http\Controllers\AdminsController::class,  'deleteOffer'])->middleware('is_admin');
Route::post('/swap_offer/{id}',[App\Http\Controllers\AdminsController::class,  'swap_offer'])->middleware('is_admin');
Route::get('/special_offer/{id}',[App\Http\Controllers\AdminsController::class,  'special_offer'])->middleware('is_admin');
Route::post('/special_offer_post',[App\Http\Controllers\AdminsController::class,  'special_offer_post'])->middleware('is_admin');
Route::get('/special_offer_edit/{id}',[App\Http\Controllers\AdminsController::class,  'special_offer_edit'])->middleware('is_admin');
Route::get('/swap_full/{id}',[App\Http\Controllers\AdminsController::class,  'swap_full'])->middleware('is_admin');

// Featured& trending
Route::get('/swapTrending/{id}',[App\Http\Controllers\AdminsController::class,  'swapTrending'])->middleware('is_admin');
Route::get('/swapFeatured/{id}',[App\Http\Controllers\AdminsController::class,  'swapFeatured'])->middleware('is_admin');
Route::get('/swapSlider/{id}',[App\Http\Controllers\AdminsController::class,  'swapSlider'])->middleware('is_admin');
Route::get('/swapBanner/{id}',[App\Http\Controllers\AdminsController::class,  'swapBanner'])->middleware('is_admin');


//Who
Route::get('/who',[App\Http\Controllers\AdminsController::class,  'who'])->middleware('is_admin');
Route::get('/editWho/{id}', [App\Http\Controllers\AdminsController::class,  'editWho'])->middleware('is_admin');
Route::get('/delete_who/{id}',[App\Http\Controllers\AdminsController::class,  'delete_who'])->middleware('is_admin');
Route::post('/edit_who/{id}', [App\Http\Controllers\AdminsController::class,  'edit_who'])->middleware('is_admin');

//why
Route::get('/why',[App\Http\Controllers\AdminsController::class,  'why'])->middleware('is_admin');
Route::get('/editWhy/{id}', [App\Http\Controllers\AdminsController::class,  'editWhy'])->middleware('is_admin');
Route::get('/delete_why/{id}',[App\Http\Controllers\AdminsController::class,  'delete_why'])->middleware('is_admin');
Route::post('/edit_why/{id}', [App\Http\Controllers\AdminsController::class,  'edit_why'])->middleware('is_admin');

//Terms
Route::get('/terms',[App\Http\Controllers\AdminsController::class,  'terms'])->middleware('is_admin');
Route::get('/addTerms', [App\Http\Controllers\AdminsController::class,  'addTerms'])->middleware('is_admin');
Route::get('/editTerm/{id}', [App\Http\Controllers\AdminsController::class,  'editTerm'])->middleware('is_admin');
Route::post('/add_term', [App\Http\Controllers\AdminsController::class,  'add_term'])->middleware('is_admin');
Route::post('/edit_term/{id}', [App\Http\Controllers\AdminsController::class,  'edit_term'])->middleware('is_admin');
Route::get('/delete_term/{id}',[App\Http\Controllers\AdminsController::class,  'delete_term'])->middleware('is_admin');
//About
Route::get('/about',[App\Http\Controllers\AdminsController::class,  'about'])->middleware('is_admin');
Route::post('/about_save', [App\Http\Controllers\AdminsController::class,  'about_save'])->middleware('is_admin');
//Services
Route::get('/services',[App\Http\Controllers\AdminsController::class,  'services'])->middleware('is_admin');
Route::get('/deleteService/{id}',[App\Http\Controllers\AdminsController::class,  'deleteService'])->middleware('is_admin');
Route::post('/edit_Services/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Services'])->middleware('is_admin');
Route::get('/editServices/{id}', [App\Http\Controllers\AdminsController::class,  'editServices'])->middleware('is_admin');
Route::get('/addService', [App\Http\Controllers\AdminsController::class,  'addService'])->middleware('is_admin');
Route::post('/add_Service', [App\Http\Controllers\AdminsController::class,  'add_Service'])->middleware('is_admin');

//Pricing
Route::get('/pricing',[App\Http\Controllers\AdminsController::class,  'pricing'])->middleware('is_admin');
Route::get('/deletePricing/{id}',[App\Http\Controllers\AdminsController::class,  'deletePricing'])->middleware('is_admin');
Route::post('/edit_Pricing/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Pricing'])->middleware('is_admin');
Route::get('/editPricing/{id}', [App\Http\Controllers\AdminsController::class,  'editPricing'])->middleware('is_admin');
Route::get('/addPricing', [App\Http\Controllers\AdminsController::class,  'addPricing'])->middleware('is_admin');
Route::post('/add_Pricing', [App\Http\Controllers\AdminsController::class,  'add_Pricing'])->middleware('is_admin');

//Video
Route::get('/videos',[App\Http\Controllers\AdminsController::class,  'videos'])->middleware('is_admin');
Route::get('/deleteVideo/{id}',[App\Http\Controllers\AdminsController::class,  'deleteVideo'])->middleware('is_admin');
Route::post('/edit_Video/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Video'])->middleware('is_admin');
Route::get('/editVideo/{id}', [App\Http\Controllers\AdminsController::class,  'editVideo'])->middleware('is_admin');
Route::post('/add_Video/{id}', [App\Http\Controllers\AdminsController::class,  'add_Video'])->middleware('is_admin');
Route::get('/addVideo', [App\Http\Controllers\AdminsController::class,  'addVideo'])->middleware('is_admin');


//Porfolio
Route::get('/portfolio',[App\Http\Controllers\AdminsController::class,  'portfolio'])->middleware('is_admin');
Route::get('/deletePortfolio/{id}',[App\Http\Controllers\AdminsController::class,  'deletePortfolio'])->middleware('is_admin');
Route::post('/edit_Portfolio/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Portfolio'])->middleware('is_admin');
Route::get('/editPortfolio/{id}', [App\Http\Controllers\AdminsController::class,  'editPortfolio'])->middleware('is_admin');
Route::get('/addPortfolio', [App\Http\Controllers\AdminsController::class,  'addPortfolio'])->middleware('is_admin');
Route::post('/add_Portfolio', [App\Http\Controllers\AdminsController::class,  'add_Portfolio'])->middleware('is_admin');

//How It Works
Route::get('/how',[App\Http\Controllers\AdminsController::class,  'how'])->middleware('is_admin');
Route::get('/deleteHow/{id}',[App\Http\Controllers\AdminsController::class,  'deleteHow'])->middleware('is_admin');
Route::post('/edit_How/{id}', [App\Http\Controllers\AdminsController::class,  'edit_How'])->middleware('is_admin');
Route::get('/editHow/{id}', [App\Http\Controllers\AdminsController::class,  'editHow'])->middleware('is_admin');
Route::get('/addHow', [App\Http\Controllers\AdminsController::class,  'addHow'])->middleware('is_admin');
Route::post('/add_How', [App\Http\Controllers\AdminsController::class,  'add_How'])->middleware('is_admin');

//Gallery
Route::get('/gallery',[App\Http\Controllers\AdminsController::class,  'gallery'])->middleware('is_admin');
Route::get('/editGallery/{id}',[App\Http\Controllers\AdminsController::class,  'editGallery'])->middleware('is_admin');
Route::get('/deleteGallery/{id}',[App\Http\Controllers\AdminsController::class,  'deleteGallery'])->middleware('is_admin');
Route::post('/save_gallery/{id}', [App\Http\Controllers\AdminsController::class,  'save_gallery'])->middleware('is_admin');
Route::get('/addGallery', [App\Http\Controllers\AdminsController::class,  'addGallery'])->middleware('is_admin');
Route::get('/galleryList', [App\Http\Controllers\AdminsController::class,  'galleryList'])->middleware('is_admin');
Route::post('/add_Gallery', [App\Http\Controllers\AdminsController::class,  'add_Gallery'])->middleware('is_admin');

//Slider
Route::get('/slider',[App\Http\Controllers\AdminsController::class,  'slider'])->middleware('is_admin');
Route::get('/editSlider/{id}',[App\Http\Controllers\AdminsController::class,  'editSlider'])->middleware('is_admin');
Route::get('/deleteSlider/{id}',[App\Http\Controllers\AdminsController::class,  'deleteSlider'])->middleware('is_admin');
Route::post('/edit_Slider/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Slider'])->middleware('is_admin');
Route::get('/addSlider', [App\Http\Controllers\AdminsController::class,  'addSlider'])->middleware('is_admin');
Route::post('/add_Slider', [App\Http\Controllers\AdminsController::class,  'add_Slider'])->middleware('is_admin');

//Banner
Route::get('/banner',[App\Http\Controllers\AdminsController::class,  'banners'])->middleware('is_admin');
Route::get('/editBanner/{id}',[App\Http\Controllers\AdminsController::class,  'editBanner'])->middleware('is_admin');
Route::post('/edit_Banner/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Banner'])->middleware('is_admin');

//Clients
Route::get('/addClient', [App\Http\Controllers\AdminsController::class,  'addClient'])->middleware('is_admin');
Route::post('/add_Client', [App\Http\Controllers\AdminsController::class,  'add_Client'])->middleware('is_admin');
Route::get('/clients',[App\Http\Controllers\AdminsController::class,  'clients'])->middleware('is_admin');
Route::get('/editClient/{id}', [App\Http\Controllers\AdminsController::class,  'editClient'])->middleware('is_admin');
Route::get('/deleteClient/{id}', [App\Http\Controllers\AdminsController::class,  'deleteClient'])->middleware('is_admin');
Route::post('/edit_Client/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Client'])->middleware('is_admin');


//Clients
Route::get('/addBrand', [App\Http\Controllers\AdminsController::class,  'addBrand'])->middleware('is_admin');
Route::post('/add_Brand', [App\Http\Controllers\AdminsController::class,  'add_Brand'])->middleware('is_admin');
Route::get('/brands',[App\Http\Controllers\AdminsController::class,  'brands'])->middleware('is_admin');
Route::get('/editBrand/{id}', [App\Http\Controllers\AdminsController::class,  'editBrand'])->middleware('is_admin');
Route::get('/deleteBrand/{id}', [App\Http\Controllers\AdminsController::class,  'deleteBrand'])->middleware('is_admin');
Route::post('/edit_Brand/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Brand'])->middleware('is_admin');

//Statisctics
Route::get('/stats',[App\Http\Controllers\AdminsController::class,  'stats'])->middleware('is_admin');
Route::get('/editStats/{id}', [App\Http\Controllers\AdminsController::class,  'editStats'])->middleware('is_admin');
Route::get('/deleteStats/{id}', [App\Http\Controllers\AdminsController::class,  'deleteStats'])->middleware('is_admin');
Route::post('/edit_Stats/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Stats'])->middleware('is_admin');

//Pages
Route::get('/pages',[App\Http\Controllers\AdminsController::class,  'pages'])->middleware('is_admin');
Route::get('/pages/{name}',[App\Http\Controllers\AdminsController::class,  'page'])->middleware('is_admin');
Route::get('/editPage/{id}',[App\Http\Controllers\AdminsController::class,  'editPage'])->middleware('is_admin');
Route::get('/deletePage/{id}',[App\Http\Controllers\AdminsController::class,  'deletePage'])->middleware('is_admin');
Route::post('/edit_Page/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Page'])->middleware('is_admin');
Route::get('/addPage', [App\Http\Controllers\AdminsController::class,  'addPage'])->middleware('is_admin');
Route::post('/add_Page', [App\Http\Controllers\AdminsController::class,  'add_Page'])->middleware('is_admin');
Route::post('/set_Page/{name}', [App\Http\Controllers\AdminsController::class,  'set_Page'])->middleware('is_admin');
Route::get('/setPage/{name}', [App\Http\Controllers\AdminsController::class,  'setPage'])->middleware('is_admin');

// My Api
Route::get('/myApi', [App\Http\Controllers\AdminsController::class,  'myApi'])->middleware('is_admin');
Route::get('/invoices', [App\Http\Controllers\AdminsController::class,  'invoices'])->middleware('is_admin');
Route::get('/deleteInvoice/{id}', [App\Http\Controllers\AdminsController::class,  'deleteInvoice'])->middleware('is_admin');
Route::get('/approveInvoice/{id}', [App\Http\Controllers\AdminsController::class,  'approveInvoice'])->middleware('is_admin');


//Priducts
Route::get('/products',[App\Http\Controllers\AdminsController::class,  'products'])->middleware('is_admin');
Route::get('/editProduct/{id}',[App\Http\Controllers\AdminsController::class,  'editProduct'])->middleware('is_admin');
Route::get('/editProductDetails/{id}',[App\Http\Controllers\AdminsController::class,  'editProductDetails'])->middleware('is_admin');
Route::get('/deleteProduct/{id}',[App\Http\Controllers\AdminsController::class,  'deleteProduct'])->middleware('is_admin');
Route::post('/edit_Product/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Product'])->middleware('is_admin');
Route::post('/edit_Product_Details/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Product_Details'])->middleware('is_admin');
Route::get('/addProduct', [App\Http\Controllers\AdminsController::class,  'addProduct'])->middleware('is_admin');
Route::post('/add_Product', [App\Http\Controllers\AdminsController::class,  'add_Product'])->middleware('is_admin');


//Admin
Route::get('/admins',[App\Http\Controllers\AdminsController::class,  'admins'])->middleware('is_admin');
Route::get('/editAdmin/{id}',[App\Http\Controllers\AdminsController::class,  'editAdmin'])->middleware('is_admin');
Route::get('/deleteAdmin/{id}',[App\Http\Controllers\AdminsController::class,  'deleteAdmin'])->middleware('is_admin');
Route::post('/edit_Admin/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Admin'])->middleware('is_admin');
Route::get('/addAdmin', [App\Http\Controllers\AdminsController::class,  'addAdmin'])->middleware('is_admin');
Route::post('/add_Admin', [App\Http\Controllers\AdminsController::class,  'add_Admin'])->middleware('is_admin');

//Orders
Route::get('/orders',[App\Http\Controllers\AdminsController::class,  'orders'])->middleware('is_admin');
Route::get('/editOrders/{id}',[App\Http\Controllers\AdminsController::class,  'editOrders'])->middleware('is_admin');
Route::get('/deleteOrders/{id}',[App\Http\Controllers\AdminsController::class,  'deleteOrders'])->middleware('is_admin');
Route::get('/confrimOrder/{id}',[App\Http\Controllers\AdminsController::class,  'confrimOrder'])->middleware('is_admin');
Route::get('/swapOrder/{id}',[App\Http\Controllers\AdminsController::class,  'swapOrder'])->middleware('is_admin');
Route::post('/edit_Orders/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Orders'])->middleware('is_admin');
Route::get('/addOrder', [App\Http\Controllers\AdminsController::class,  'addOrder'])->middleware('is_admin');
Route::post('/add_Order', [App\Http\Controllers\AdminsController::class,  'add_Order'])->middleware('is_admin');

//User
Route::get('/users',[App\Http\Controllers\AdminsController::class,  'users'])->middleware('is_admin');
Route::get('/editUser/{id}',[App\Http\Controllers\AdminsController::class,  'editUser'])->middleware('is_admin');
Route::get('/deleteUser/{id}',[App\Http\Controllers\AdminsController::class,  'deleteUser'])->middleware('is_admin');
Route::post('/edit_User/{id}', [App\Http\Controllers\AdminsController::class,  'edit_User'])->middleware('is_admin');
Route::get('/addUser', [App\Http\Controllers\AdminsController::class,  'addUser'])->middleware('is_admin');
Route::post('/add_User', [App\Http\Controllers\AdminsController::class,  'add_User'])->middleware('is_admin');

//Blog Controls
Route::get('/blog',[App\Http\Controllers\AdminsController::class,  'blog'])->middleware('is_admin');
Route::get('/editBlog/{id}',[App\Http\Controllers\AdminsController::class,  'editBlog'])->middleware('is_admin');
Route::get('/delete_Blog/{id}',[App\Http\Controllers\AdminsController::class,  'delete_Blog'])->middleware('is_admin');
Route::post('/edit_Blog/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Blog'])->middleware('is_admin');
Route::get('/addBlog', [App\Http\Controllers\AdminsController::class,  'addBlog'])->middleware('is_admin');
Route::post('/add_blog', [App\Http\Controllers\AdminsController::class,  'add_Blog'])->middleware('is_admin');
//Categories Control
Route::get('/categories',[App\Http\Controllers\AdminsController::class,  'categories'])->middleware('is_admin');
Route::get('/editCategories/{id}',[App\Http\Controllers\AdminsController::class,  'editCategories'])->middleware('is_admin');
Route::get('/deleteCategory/{id}',[App\Http\Controllers\AdminsController::class,  'deleteCategory'])->middleware('is_admin');
Route::post('/edit_Category/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Category'])->middleware('is_admin');
Route::get('/addCategory', [App\Http\Controllers\AdminsController::class,  'addCategory'])->middleware('is_admin');
Route::post('/add_Category', [App\Http\Controllers\AdminsController::class,  'add_Category'])->middleware('is_admin');

//Links Control
Route::get('/links',[App\Http\Controllers\AdminsController::class,  'links'])->middleware('is_admin');
Route::get('/editLinks/{id}',[App\Http\Controllers\AdminsController::class,  'editLinks'])->middleware('is_admin');
Route::get('/deleteLink/{id}',[App\Http\Controllers\AdminsController::class,  'deleteLink'])->middleware('is_admin');
Route::post('/edit_Link/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Link'])->middleware('is_admin');
Route::get('/addLink', [App\Http\Controllers\AdminsController::class,  'addLink'])->middleware('is_admin');
Route::post('/add_Link', [App\Http\Controllers\AdminsController::class,  'add_Link'])->middleware('is_admin');

//Service Renreded Control
Route::get('/service_rendered',[App\Http\Controllers\AdminsController::class,  'service_rendered'])->middleware('is_admin');
Route::get('/editService_rendered/{id}',[App\Http\Controllers\AdminsController::class,  'editService_rendered'])->middleware('is_admin');
Route::get('/deleteService_rendered/{id}',[App\Http\Controllers\AdminsController::class,  'deleteService_rendered'])->middleware('is_admin');
Route::post('/edit_Service_rendered/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Service_rendered'])->middleware('is_admin');
Route::get('/addService_rendered', [App\Http\Controllers\AdminsController::class,  'addService_rendered'])->middleware('is_admin');
Route::post('/add_Service_rendered', [App\Http\Controllers\AdminsController::class,  'add_Service_rendered'])->middleware('is_admin');

//Daily
Route::get('/daily',[App\Http\Controllers\AdminsController::class,  'daily'])->middleware('is_admin');
Route::get('/editDaily/{id}',[App\Http\Controllers\AdminsController::class,  'editDaily'])->middleware('is_admin');
Route::get('/deleteDaily/{id}',[App\Http\Controllers\AdminsController::class,  'deleteDaily'])->middleware('is_admin');
Route::post('/edit_Daily/{id}', [App\Http\Controllers\AdminsController::class,  'edit_Daily'])->middleware('is_admin');
Route::get('/addDaily', [App\Http\Controllers\AdminsController::class,  'addDaily'])->middleware('is_admin');
Route::post('/add_Daily', [App\Http\Controllers\AdminsController::class,  'add_Daily'])->middleware('is_admin');


//Sub Categories
Route::get('/subCategories',[App\Http\Controllers\AdminsController::class,  'subCategories'])->middleware('is_admin');
Route::get('/editSubCategories/{id}',[App\Http\Controllers\AdminsController::class,  'editSubCategories'])->middleware('is_admin');
Route::get('/deleteSubCategory/{id}',[App\Http\Controllers\AdminsController::class,  'deleteSubCategory'])->middleware('is_admin');
Route::post('/edit_SubCategory/{id}', [App\Http\Controllers\AdminsController::class,  'edit_SubCategory'])->middleware('is_admin');
Route::get('/addSubCategory', [App\Http\Controllers\AdminsController::class,  'addSubCategory'])->middleware('is_admin');
Route::post('/add_SubCategory', [App\Http\Controllers\AdminsController::class,  'add_SubCategory'])->middleware('is_admin');

//Active Services
Route::get('/traceServices',[App\Http\Controllers\AdminsController::class,  'traceServices'])->middleware('is_admin');
Route::get('/editTraceServices/{id}',[App\Http\Controllers\AdminsController::class,  'editTraceServices'])->middleware('is_admin');
Route::get('/deleteTraceServices/{id}',[App\Http\Controllers\AdminsController::class,  'deleteTraceServices'])->middleware('is_admin');
Route::post('/edit_TraceServices/{id}', [App\Http\Controllers\AdminsController::class,  'edit_TraceServices'])->middleware('is_admin');
Route::get('/addTraceServices', [App\Http\Controllers\AdminsController::class,  'addTraceServices'])->middleware('is_admin');
Route::post('/add_TraceServices', [App\Http\Controllers\AdminsController::class,  'add_TraceServices'])->middleware('is_admin');

// Generic Routes
Route::get('/form',[App\Http\Controllers\AdminsController::class,  'form'])->middleware('is_admin');
Route::get('/list',[App\Http\Controllers\AdminsController::class,  'list'])->middleware('is_admin');
Route::get('/formfile',[App\Http\Controllers\AdminsController::class,  'formfile'])->middleware('is_admin');
Route::get('/formfiletext',[App\Http\Controllers\AdminsController::class,  'formfiletext'])->middleware('is_admin');

//Payments
Route::get('/payments',[App\Http\Controllers\AdminsController::class,  'payments'])->middleware('is_admin');
Route::get('/payments/explore/{id}',[App\Http\Controllers\AdminsController::class,  'payments_explore'])->middleware('is_admin');
//MPESA Routes
Route::get('/balance',[App\Http\Controllers\AdminsController::class,  'balance'])->middleware('is_admin');
Route::get('/lnmo',[App\Http\Controllers\AdminsController::class,  'lnmo'])->middleware('is_admin');
Route::get('/b2b',[App\Http\Controllers\AdminsController::class,  'b2b'])->middleware('is_admin');
Route::get('/b2c',[App\Http\Controllers\AdminsController::class,  'b2c'])->middleware('is_admin');
Route::get('/lnmo/confirm/{id}',[App\Http\Controllers\AdminsController::class,  'lnmo_confirm'])->middleware('is_admin');


// Order
Route::get('/orders/explore/{id}',[App\Http\Controllers\AdminsController::class,  'order_explore'])->middleware('is_admin');

//Notifications
Route::get('/notifications',[App\Http\Controllers\AdminsController::class,  'notifications'])->middleware('is_admin');
Route::get('/notification/{id}',[App\Http\Controllers\AdminsController::class,  'notification'])->middleware('is_admin');
Route::get('/deleteNotification/{id}',[App\Http\Controllers\AdminsController::class,  'deleteNotification'])->middleware('is_admin');

//Service Requests
Route::get('/requests',[App\Http\Controllers\AdminsController::class,  'quoterequeste'])->middleware('is_admin');
Route::get('/markRequest/{id}/{status}/{type}',[App\Http\Controllers\AdminsController::class,  'markRequest'])->middleware('is_admin');

//Comments
Route::get('/reviews',[App\Http\Controllers\AdminsController::class,  'reviews'])->middleware('is_admin');
Route::get('/approve/{id}',[App\Http\Controllers\AdminsController::class,  'approve'])->middleware('is_admin');
Route::get('/decline/{id}',[App\Http\Controllers\AdminsController::class,  'decline'])->middleware('is_admin');

// Error Pages
Route::get('/403',[App\Http\Controllers\AdminsController::class,  'error403'])->middleware('is_admin');
Route::get('/404',[App\Http\Controllers\AdminsController::class,  'error404'])->middleware('is_admin');
Route::get('/405',[App\Http\Controllers\AdminsController::class,  'error405'])->middleware('is_admin');
Route::get('/500',[App\Http\Controllers\AdminsController::class,  'error500'])->middleware('is_admin');
Route::get('/503',[App\Http\Controllers\AdminsController::class,  'error503'])->middleware('is_admin');





// Subscribers Mail
Route::post('/updatemail',[App\Http\Controllers\AdminsController::class,  'updatemail'])->middleware('is_admin');


//Updates
Route::get('/updates',[App\Http\Controllers\AdminsController::class,  'updates'])->middleware('is_admin');
Route::get('/update/{id}',[App\Http\Controllers\AdminsController::class,  'update'])->middleware('is_admin');
Route::get('/mark/{id}',[App\Http\Controllers\AdminsController::class,  'mark'])->middleware('is_admin');

//profile
Route::get('/profile',[App\Http\Controllers\AdminsController::class,  'profile'])->middleware('is_admin');
Route::post('/profile_save/{id}',[App\Http\Controllers\AdminsController::class,  'profile_save'])->middleware('is_admin');
Route::get('/editFile/{id}',[App\Http\Controllers\AdminsController::class,  'editFile'])->middleware('is_admin');
Route::post('/edit_File/{id}',[App\Http\Controllers\AdminsController::class,  'edit_File'])->middleware('is_admin');

// Gallery
Route::get('/gallery',[App\Http\Controllers\AdminsController::class,  'gallery'])->middleware('is_admin');

//Under Contruction
Route::get('/under_construction',[App\Http\Controllers\AdminsController::class,  'under_construction'])->middleware('is_admin');

//Wizard
Route::get('/wizard',[App\Http\Controllers\AdminsController::class,  'wizard'])->middleware('is_admin');

//Maps
Route::get('/maps',[App\Http\Controllers\AdminsController::class,  'maps'])->middleware('is_admin');
// SiteSettings
Route::get('/sitesettings',[App\Http\Controllers\AdminsController::class,  'sitesettings'])->middleware('is_admin');
Route::post('/savesitesettings',[App\Http\Controllers\AdminsController::class,  'savesitesettings'])->middleware('is_admin');
//Messages
Route::get('/allMessages', [App\Http\Controllers\AdminsController::class,  'allMessages'])->middleware('is_admin');
Route::get('/unread', [App\Http\Controllers\AdminsController::class,  'unread'])->middleware('is_admin');
Route::get('/read/{id}', [App\Http\Controllers\AdminsController::class,  'read'])->middleware('is_admin');
Route::post('/reply/{id}', [App\Http\Controllers\AdminsController::class,  'reply'])->middleware('is_admin');
Route::get('/deleteMessage/{id}', [App\Http\Controllers\AdminsController::class,  'deleteMessage'])->middleware('is_admin');

//Subscribers
Route::get('/subscribers', [App\Http\Controllers\AdminsController::class,  'subscribers'])->middleware('is_admin');
Route::get('/mailSubscribers/{email}', [App\Http\Controllers\AdminsController::class,  'mailSubscribers'])->middleware('is_admin');
Route::get('/mailSubscriber/{email}', [App\Http\Controllers\AdminsController::class,  'mailSubscriber'])->middleware('is_admin');
Route::get('/deleteSubscriber/{id}', [App\Http\Controllers\AdminsController::class,  'deleteSubscriber'])->middleware('is_admin');
// Version Control
Route::get('/version', [App\Http\Controllers\AdminsController::class,  'version'])->middleware('is_admin');

// Seo Settings
// SeoSettings
Route::get('/seosettings',[App\Http\Controllers\AdminsController::class,  'seosettings'])->middleware('is_admin');
Route::post('/saveseosettings',[App\Http\Controllers\AdminsController::class,  'saveseosettings'])->middleware('is_admin');
});

