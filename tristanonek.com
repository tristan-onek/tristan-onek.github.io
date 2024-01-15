<style>
    html {
    box-sizing: border-box;
    scroll-behavior: smooth;
    width: 100%;
    font-size: 35px;
    }

    body{
      font-family: "Playfair Display", 'Times New Roman', Times, serif;
    }

    *, *::before, *::after {
    box-sizing: inherit;
    margin: 0;
    padding: 0;
    }
  
    a {
    text-decoration: none;
    }

    .anchornav {
    margin: 0;
    padding: 0;
    list-style: none;
    }
    .anchornav li {
    display: block;
    }
    .anchornav li::after {
    content: "";
    width: 1.3rem;
    display: block;
    height: 2px;
    background: black;
    }
    .anchornav li:last-child::after {
    display: none;
    }
    .anchornav a {
    display: block;
    padding: 1em 0;
    font-family: "nimbus-sans", sans-serif;
    text-transform: uppercase;
    font-size: 20px;
    letter-spacing: 1.4px;
    color: inherit;
    transition: all 0.3s cubic-bezier(0.05, 0.69, 0.14, 1);
    }
    .anchornav a span {
    display: inline;
    padding: 0.5em 0 0;
    opacity: 0.3;
    letter-spacing: normal;
    font-family: "ff-meta-serif-web-pro", serif;
    text-transform: none;
    }
    .anchornav a:hover {
    color: #de5f5f;
    }
    .anchornav a:hover span {
    opacity: 1;
    color: #181818;
    }
    
    /**
    * The different sections
    */
    .section {
    position: relative;
    display: flex;
    flex-flow: column nowrap;
    align-items: stretch;
    min-height: 60vh;
    width: 100%;
    align-content: center;
    padding: 20vh 50px 20vh 75px;
    }
    .section svg {
    position: absolute;
    top: -50px;
    left: 0;
    right: 0;
    width: 100%;
    height: 50px;
    }
    .section svg.bottom {
    bottom: 0;
    top: auto;
    fill: grey;
    }
    .section .section__inner {
    height: 100%;
    /*max-width: 1200px;    /*was 800px*/
    margin: auto auto auto 0;
    }
    .section.section--top {
    color: #12171a  ;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
      width: 100%;
      height: 100%;
      background-color: #fff ;
    }
    .section.section--intro {
    background-color: #dee0dd ;
    color: #000;
    height: 100%;
    overflow-x:hidden;
    }

    .section.section--middle svg {
    fill: white;
    }
    .section.section--bottom {
    background-color: white ; /*Was #343436*/
    color: #000;
    }
    .section.section--bottom svg {
    fill: #fff;
    }
    
    
    
    h3, .h3, h4, .h5 {
      font-family: "nimbus-sans", sans-serif;
      font-weight: bold;
      margin: 0 0 1em;
      letter-spacing: -1px;
    }
  
    
    h2 a, .h2 a, h3 a, .h3 a, h4 a, .h5 a {
      color: inherit;
      }
    h2 a:hover, .h2 a:hover, h3 a:hover, .h3 a:hover, h4 a:hover, .h5 a:hover {
    border-bottom: 0.1875rem solid;
    }
    h1 span, .h1 span, h2 span, .h2 span, h3 span, .h3 span, h4 span, .h5 span {
    color: #de5f5f;
    }
    
    h1, .h1 {
    font-size: 1.5rem;
    }
    @media (min-width: 30rem) {
    h1, .h1 {
      font-size: 2.5rem;
    }
    }
    
    .pre {
    display: inline-block;
    font-size: 12px;
    margin: 0;
    opacity: 0.8;
    letter-spacing: 1.4px;
    word-spacing: 0.2rem;
    text-transform: uppercase;
    margin-bottom: 1em;
    color: inherit;
    }
    .pre span {
    font-size: 0.9em;
    margin-right: 0.4em;
    opacity: 0.5;
    }
    .pre:hover {
    opacity: 1;
    }
    
    p {
    font-size: 0.75rem;
    line-height: 1.4;
    }
    @media (min-width: 30rem) {
    p {
      font-size: 0.875rem;
    }
    }
    p a {
    font-weight: bold;
    color: inherit;
    }
    p a:hover {
    border-bottom: 0.1875rem solid;
    
    }
    
    .lead {
    display: block;
    font-size: 0.875rem;
    margin: 0;
    }
    @media (min-width: 30rem) {
    .lead {
      font-size: .9rem;
    }
    }
    
    .portfolio {
    font-size: 0.75rem;
    }
    .portfolio.block {
    display: inline-block;
    width: 100%;
    }
    @media (min-width: 30rem) {
    .portfolio.block {
      width: 30%;
    }
    }
    .portfolio .link {
    display: block;
    margin: 2em 0 0 0;
    color: #12171a;
    letter-spacing: 2px;
    font-size: 12px;
    }
    .portfolio p {
    font-size: inherit;
    color: #12171a;
    opacity: 0.7;
    }
    
    h1, .h1{
      font-size: 2.4125rem;
    }
    h3, .h3 {
      font-size: 1.0rem;
    }
    
    .container {
      background-color: #fff;
      position: relative;
      z-index: 1;
      overflow: hidden;
      margin: auto;
    }
    
    .scrolling-box {
      background-color: #eaeaea;
      display: block;
      width: 70%;
      height: 40%;
      padding: 1em;
      overflow-y: scroll;
      text-align: center;
    }
    
    /*Mondrian code:*/
    #painting {
      height: 600px;
      width: 600px;
      background: #fff4db;    
      margin: 0 auto;
      margin-top: -400px;
      
      z-index: 999;
    }

    .paintingclass{
      box-shadow: 10px 10px 0px #a1a1a1;
    }

    .paintingclass1{
      box-shadow: 10px 10px 0px #a1a1a1;
    }

    .paintingclass2{
      box-shadow: 10px 10px 0px #a1a1a1;
    }
    
    .paintingclass3{
      box-shadow: 10px 10px 0px #000000;
    }
    
    #top-row {
      height: 435px;
    }
    
    #big-box {
      width: 435px;
      height: 435px;
    }
    
    #bottom-left-box {
      width: 150px;
      height: 150px;
    }
    
    #bottom-right-column {
      height: 150px;
      width: 60px;
    }
    
    #bottom-middle-box {
      height: 150px;
      width: 360px;
      background-color: white;
      color: black;
    }
    
    #bottom-middle-box:hover {
    }
    
    #divider-1 {
      height: 435px;
      width: 15px;
    }
    
    #divider-2 {
      height: 15px;
      width: 150px;
    }
    
    #divider-3 {
      height: 15px;
      width: 600px;
    }
    
    #divider-4 {
      height: 150px;
      width: 15px;
    }
    
    #divider-5 {
      height: 15px;
      width: 75px;
    }
    
    #divider-6 {
      height: 150px;
      width: 15px;
    }
    
    .right {
      float: right;
    }
    
    .medium-box {
      width: 150px;
      height: 210px;
    }
    
    .medium-box-2 {
      width: 150px;
      height: 210px;
    }
    
    .small-box {
      width: 75px;
      height: 67.5;
    }
    
    .small-box-yellow {
      width: 75px;
      height: 67.5px;
    }
    
    .red {
      background-color: rgb(219, 126, 145);
    }
    
    .medium-box{
      background-color: white;
    }
    
    .medium-box-2{
      background-color: white;
    }
    
    .blue {
      background-color: #9AC1E7;
    }

    .yellow {
      background-color: #e1c0c9;
    }
    
    .black {
      background-color: black;
    }
    
    .small-box-yellow{
      background-color:rgb(224, 224, 95);
    }

    .small-box:hover{
    background-image: linear-gradient(white, grey);
  }
    
    .medium-box:hover{
      background-image: linear-gradient(white, grey);
    }
    
    .medium-box-2:hover{
      background-image: linear-gradient(white, grey);
    }
    
    .blue:hover{
      background-image: linear-gradient(rgb(154, 154, 204), grey);
    }
    
    .small-box-yellow:hover{
      background-image: linear-gradient(yellow, grey);
    }

    .frame {
        overflow-y: auto;
        border: 5px solid black;
        height: 15em;
        width: 100%;
        line-height: 1em;
    }
    
    .frame::-webkit-scrollbar {
        -webkit-appearance: none;
    }
    
    .frame::-webkit-scrollbar:vertical {
        width: 15px;
    }
    
    .frame::-webkit-scrollbar:horizontal {
        height: 15px;
    }
    
    .frame::-webkit-scrollbar-thumb {
        border-radius: 8px;
        border: 2px solid white; /* should match background, can't be transparent */
        background-color: rgba(0, 0, 0, .5);
    }
    
    /* Handle */
    ::-webkit-scrollbar-thumb {
      background: red; 
      border-radius: 10px;
    }
    
    /* Handle on hover */
    ::-webkit-scrollbar-thumb:hover {
      background: #b30000; 
    }

    .h1style{
      font-family: "Playfair Display", 'Times New Roman', Times, serif;
    }
</style>
  
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Tristan Onek</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="robots" content="index">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Crimson+Text">
  </head>
<body>
    
<section class="section section--intro" id="top">
  </div>
    <h1 style="color: transparent;">TRISTAN ONEK</h1>
    <br><br><br><br>
      <div id="painting" class="paintingclass">
        <div id="top-row">
          <div id="big-box" class="red right" style="text-decoration: none;color: black;">
              <div style="padding-top: 70px;text-align: center;">
                  <h1 style="font-size:90;"><stronger>TRISTAN ONEK</strong></h1> 
                </div>
               <div style="padding-top:5px;text-align: center;">
              <div>Developer and Designer</div>
            </div>
          </div>
  
            <div id="divider-1" class="black right">
            </div>
            <div id="top-left-column" class="right">
              <a href="mailto:info@tristanonek.com" target="_blank">
                <div class="medium-box-2" style="text-decoration: none;color: black;">
                  <div style="padding-top: 90px;padding-left: 20px;">
                        EMAIL <span class="glyphicon glyphicon-heart"></span>
                  </div>
                </div>
              </a>
  
                <div id="divider-2" class="black">
                </div>
                <a href="Info.pdf" target="_blank">
                  <div class="medium-box" style="text-decoration: none;color: black;">
                    <div style="padding-top: 90px;padding-left: 35px;">
                      INFO
                    </div>
                  </div>
                </a>
            </div>
        </div>
              
              <div class="black right" id="divider-3" >
              </div>
              
              <div id="bottom-row">
                <div id="bottom-right-column" class="right">
                 
                  <a href="https://en.wikipedia.org/wiki/Composition_with_Red_Blue_and_Yellow" id="top-bar-trigger" target="_blank" class="top-bar-trigger">
                    <div class="small-box white right" style="text-decoration: none;color: black;background-color: white;">
                      <div style="font-size: 45px;padding-left: 45%;">
  
                        ?
  
                     </div>
                    </div>
                  </a>

                  <div id="divider-5" class="black right">
                  </div>
  
                  <a href="#bottom">
                    <div id="bottom-right-box"  class="small-box-yellow right" style="text-decoration: none;color: black;">
                      <div style="padding-top: -15px;padding-left: 17px;font-size: 20px;">
                        NEWS
                      </div>
                      <div style="padding-left: 45%;font-size: 34px;">
                        &#x21e3;
                      </div>
                    </div>
                 </a>
                </div>
             
  
                <div id="divider-6" class="right black">
                </div>
                
                <div id="bottom-middle-box" class="right">
                  
                  <div style="font-size: large;text-decoration: underline;padding-left: 25px;">
                    <a class="projectlink" href="https://www.sublimespectacle.com" target="_blank">Web Development Archive</a>
                  </div>
                </div>
                <div id="divider-4" class="black right">
                </div>
              
                <a href="https://linktr.ee/tristanonek" target="_blank">
                  <div id="bottom-left-box" class="blue right" style="text-decoration: none;color: black;">
                    <div style="padding-top: 50px;text-align: center;">
                      SOCIALS
                    </div>
                  </div>
                </a>
              </div>
      </div>
  </section>
  <section class="section section--bottom" id="bottom">
    <div class="section__inner" style="text-align: center;">
        <div class="block">
          <h2 style="margin-top: -120px;">NEWS FEED</h2>
            <div class="frame">
                    <br>
                    <h3>/’FU:BAR/ 2022 Exhibition <a href="https://fubar.space/2022/fubar-2022-expo/" target="_blank" style="color: #de5f5f;" class="newslink">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>Interview - Malcolm Fernandes <a href="https://www.malcolmfernandes.art/post/digital-zeitgeists-and-confrontations-with-reality" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>Pop-Up Feature: CRASH THIS PROSE - VOIDSPACE <a href="https://voidspacezine.com/2022/05/25/crash-this-prose/" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>Issue #2 Feature - VOIDSPACE <a href="https://voidspacezine.com/voidspace-zine-issue-2/" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>Pop-Up Feature: BLACKOUT - VOIDSPACE <a href="https://voidspacezine.com/blackout-special/" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>Issue #1 Feature - VOIDSPACE <a href="https://voidspacezine.com/voidspace-zine-1/" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>"Point and Click" Art Feature - Mercurius <a href="https://www.mercurius.one/home/point-and-click" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>Glitch Gallery <a href="https://glitchgallery.org/" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>NFTs and Electronic Media - Backslash Lit <a href="https://backslashlit.medium.com/nfts-and-electronic-media-856765f79e56" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>"State Machines" Exhibition - Homeostasis Lab <a href="https://homeostasislab.org/visualizar/obra/1618" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>"Perspectives 2021" Art Exhibition - Czong Institute of Contemporary Art</h3> </p> 
                    <hr>
                    <br>
                    <h3>Issue #2 Art Feature - Backslash Lit <a href="https://backslashlit.com/issues/2/" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>Collusion Anthology Art Feature - Collusion Books <a href="https://longconmag.com/collusionbooks/" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>Art Feature - Griffin Poetry Award <a href="https://griffinpoetryprize.com/calendar/collusion-books-anthology-submission-deadline/" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>"Equity and Justice" Charity Exhibition - New York Artists Equity Association  </h3> </p> 
                    <hr>
                    <br>
                    <h3>"Defund + Defend" Art Auction - New Media Caucus <a href="https://www.newmediacaucus.org/defenddefund/" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>Interview - CRISIS Residency <a href="https://www.crisisresidency.org/post/tristan-onek" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>"What Now?" Art Exhibition - Ely Center for Contemporary Art <a href="https://elycenter.org/what-now-gallery" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>"Algorithmic" June 2020 Issue Art Feature - SciArt Magazine <a href="https://www.sciartmagazine.com/june2020contents.html" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>Issue #2 Art Feature - Long Con Magazine <a href="https://longconmag.com/issue-2/" target="_blank" style="color: #de5f5f;">[LINK]</a> </h3> </p> 
                    <hr>
                    <br>
                    <h3>Undergraduate Research Technology Conference 2019 - Massachusetts Institute of Technology </h3> </p> 
                    <hr>
                    <br>
                    <h3>2019 NSF REU Presentation - National Science Foundation</h3> </p> 
                    <hr>
                    <br>
                    <h3>Southern California REU Symposium - USC Institute for Creative Technologies</h3> </p> 
                    <hr>
                    <br>
                    <h3>2019 Harvard National Collegiate Research Conference -  Harvard University</h3> </p> 
                    <hr>
                    <br>
                    <h3>Undergraduate Research Technology Conference 2018 - Massachusetts Institute of Technology </h3> </p> 
                    <hr>
                    <br>
                    <h3>2018 Student Research Competition Presentation - Southeastcon</h3> </p> 
                    <hr>
                    <br>
                    <h3>2015 Gold Key for Poetry - Scholastic</h3> </p> 
              </div>
          </div>
        <br>
      </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
  </body>
  </section>
</html>
