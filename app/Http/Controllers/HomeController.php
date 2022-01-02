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
        OpenGraph::setTitle('Interior Design and Architectural Visualization | Drenla Hub');
        OpenGraph::setUrl(''.url('/').'');
        OpenGraph::addProperty('type', 'articles');

        TwitterCard::setTitle('Interior Design and Architectural Visualization | Drenla Hub');
        TwitterCard::setSite('@LuizVinicius73');

        JsonLd::setTitle('Interior Design and Architectural Visualization | Drenla Hub');
        JsonLd::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        JsonLd::addImage('https://localhost:8000/img/logo.jpg');

        return view('front.index');
    }

    public function contact(){
        SEOMeta::setTitle('Contact Us | Drenla Hub');
        SEOMeta::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        SEOMeta::setCanonical(''.url('/').'');

        OpenGraph::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        OpenGraph::setTitle('Contact Us | Drenla Hub');
        OpenGraph::setUrl(''.url('/').'');
        OpenGraph::addProperty('type', 'articles');

        TwitterCard::setTitle('Contact Us | Drenla Hub');
        TwitterCard::setSite('@LuizVinicius73');

        JsonLd::setTitle('Contact Us | Drenla Hub');
        JsonLd::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        JsonLd::addImage('https://localhost:8000/img/logo.jpg');

        return view('front.contact');
    }

    public function news(){
        SEOMeta::setTitle('Latest News | Drenla Hub');
        SEOMeta::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        SEOMeta::setCanonical(''.url('/').'/latest-news');

        OpenGraph::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        OpenGraph::setTitle('Latest News | Drenla Hub');
        OpenGraph::setUrl(''.url('/').'/latest-news');
        OpenGraph::addProperty('type', 'articles');

        TwitterCard::setTitle('Latest News | Drenla Hub');
        TwitterCard::setSite('@LuizVinicius73');

        JsonLd::setTitle('Latest News | Drenla Hub');
        JsonLd::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        JsonLd::addImage('https://localhost:8000/img/logo.jpg');

        return view('front.news');
    }

    public function new_single(){
        SEOMeta::setTitle('Latest News | Drenla Hub');
        SEOMeta::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        SEOMeta::setCanonical(''.url('/').'/latest-news');

        OpenGraph::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        OpenGraph::setTitle('Latest News | Drenla Hub');
        OpenGraph::setUrl(''.url('/').'/latest-news');
        OpenGraph::addProperty('type', 'articles');

        TwitterCard::setTitle('Latest News | Drenla Hub');
        TwitterCard::setSite('@LuizVinicius73');

        JsonLd::setTitle('Latest News | Drenla Hub');
        JsonLd::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        JsonLd::addImage('https://localhost:8000/img/logo.jpg');

        return view('front.new_single');
    }

    public function portfolio(){
        SEOMeta::setTitle('Our Projects| Drenla Hub');
        SEOMeta::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        SEOMeta::setCanonical(''.url('/').'/latest-news');

        OpenGraph::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        OpenGraph::setTitle('Latest News | Drenla Hub');
        OpenGraph::setUrl(''.url('/').'/latest-news');
        OpenGraph::addProperty('type', 'articles');

        TwitterCard::setTitle('Latest News | Drenla Hub');
        TwitterCard::setSite('@LuizVinicius73');

        JsonLd::setTitle('Latest News | Drenla Hub');
        JsonLd::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        JsonLd::addImage('https://localhost:8000/img/logo.jpg');

        return view('front.portfolio');
    }

    public function folio($slung){
        SEOMeta::setTitle('Our Projects| Drenla Hub');
        SEOMeta::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        SEOMeta::setCanonical(''.url('/').'/latest-news');

        OpenGraph::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        OpenGraph::setTitle('Latest News | Drenla Hub');
        OpenGraph::setUrl(''.url('/').'/latest-news');
        OpenGraph::addProperty('type', 'articles');

        TwitterCard::setTitle('Latest News | Drenla Hub');
        TwitterCard::setSite('@LuizVinicius73');

        JsonLd::setTitle('Latest News | Drenla Hub');
        JsonLd::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        JsonLd::addImage('https://localhost:8000/img/logo.jpg');

        return view('front.folio');
    }


    

    



    

    
}
