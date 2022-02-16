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

    public function about(){
        SEOMeta::setTitle('About Us | Drenla Hub');
        SEOMeta::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        SEOMeta::setCanonical(''.url('/').'');

        OpenGraph::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        OpenGraph::setTitle('About Us | Drenla Hub');
        OpenGraph::setUrl(''.url('/').'');
        OpenGraph::addProperty('type', 'articles');

        TwitterCard::setTitle('About Us | Drenla Hub');
        TwitterCard::setSite('@LuizVinicius73');

        JsonLd::setTitle('About Us | Drenla Hub');
        JsonLd::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        JsonLd::addImage('https://localhost:8000/img/logo.jpg');

        return view('front.about');
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

    public function terms(){
        SEOMeta::setTitle('Terms and Conditions | Drenla Hub');
        SEOMeta::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        SEOMeta::setCanonical(''.url('/').'/terms-and-conditions');

        OpenGraph::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        OpenGraph::setTitle('Terms and Conditions | Drenla Hub');
        OpenGraph::setUrl(''.url('/').'terms-and-conditions');
        OpenGraph::addProperty('type', 'articles');

        TwitterCard::setTitle('Terms and Conditions | Drenla Hub');
        TwitterCard::setSite('@LuizVinicius73');

        JsonLd::setTitle('Terms and Conditions | Drenla Hub');
        JsonLd::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        JsonLd::addImage('https://localhost:8000/img/logo.jpg');

        return view('front.terms');
    }

    public function privacy(){
        SEOMeta::setTitle('Privacy Policy | Drenla Hub');
        SEOMeta::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        SEOMeta::setCanonical(''.url('/').'/terms-and-conditions');

        OpenGraph::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        OpenGraph::setTitle('Privacy Policy | Drenla Hub');
        OpenGraph::setUrl(''.url('/').'terms-and-conditions');
        OpenGraph::addProperty('type', 'articles');

        TwitterCard::setTitle('Privacy Policy | Drenla Hub');
        TwitterCard::setSite('@LuizVinicius73');

        JsonLd::setTitle('Privacy Policy | Drenla Hub');
        JsonLd::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        JsonLd::addImage('https://localhost:8000/img/logo.jpg');

        return view('front.privacy');
    }

    public function copyright(){
        SEOMeta::setTitle('Copyright Statement | Drenla Hub');
        SEOMeta::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        SEOMeta::setCanonical(''.url('/').'/copyright');

        OpenGraph::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        OpenGraph::setTitle('Copyright Statement | Drenla Hub');
        OpenGraph::setUrl(''.url('/').'copyright');
        OpenGraph::addProperty('type', 'articles');

        TwitterCard::setTitle('Copyright Statement | Drenla Hub');
        TwitterCard::setSite('@LuizVinicius73');

        JsonLd::setTitle('Copyright Statement | Drenla Hub');
        JsonLd::setDescription('Interior Design and Architectural Visualization Hub. To speak for your unbuilt project');
        JsonLd::addImage('https://localhost:8000/img/logo.jpg');

        return view('front.copyright');
    }







}
