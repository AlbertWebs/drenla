<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;

class HomeController extends Controller
{
    public function index(){
        SEOMeta::setTitle('Interior Design and Architectural Visualization | Drenla Hub');
        SEOMeta::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        SEOMeta::setCanonical(''.url('/').'');

        OpenGraph::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        OpenGraph::setTitle('Home');
        OpenGraph::setUrl(''.url('/').'');
        OpenGraph::addProperty('type', 'articles');

        TwitterCard::setTitle('Homepage');
        TwitterCard::setSite('@LuizVinicius73');

        JsonLd::setTitle('Homepage');
        JsonLd::setDescription('This is my page description');
        JsonLd::addImage('https://codecasts.com.br/img/logo.jpg');

        return view('front.index');
    }
}
