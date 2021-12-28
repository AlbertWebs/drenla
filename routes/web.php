<?php

use Illuminate\Support\Facades\Route;

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