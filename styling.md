

application.html.erb - in views/layouts
<section id="home" name="home"></section>
    <div id="headerwrap">
      <div class="container">
        <div class="row">
          <!--  navbar -->
          <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
              <a id="custom_nav" class="navbar-brand" href="<%= home_path %>"/>Home</a>
              <a id="login" class="navbar-brand" href="<%= new_session_path %>"/>Sign In</a>
              <a id="login" class="navbar-brand" href="<%= logout_path %>"/>Log Out</a>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-lg-offset-3">

          </div>
        </div>
      </div><!-- /container -->
    </div><!-- /headerwrap -->


  application.SCSS


 @import "bootstrap-sprockets";
 @import "bootstrap";

 body {
   background-color: #f2f2f2;
     font-family: 'EB Garamond', serif;
     font-weight: 300;
     font-size: 16px;
     color: #555;

     -webkit-font-smoothing: antialiased;
     -webkit-overflow-scrolling: touch;
 }

 /* Titles */
 h1, h2, h3, h4, h5, h6 {
     font-family: 'Oswald', sans-serif;
     font-weight: 300;
     color: #333;
 }


 /* Paragraph & Typographic */
 p {
     line-height: 28px;
     margin-bottom: 25px;
 }

 .centered {
     text-align: center;
 }

 /* Links */
 a {
     color: #ffffff;

 }

 .btn-primary {
   color: #ffffff;
   text-align: center;
   background-color: rgba(4, 45, 1, 0.75);
   border-color: rgba(4, 45, 1, 0.75);
 }

 a:hover,
 a:focus {
     color: #7b7b7b;
     text-decoration: none;
     outline: 0;
 }

 // a:before,
 // a:after {
 //     -webkit-transition: color 0.1s ease-in, background 0.1s ease-in;
 //     -moz-transition: color 0.1s ease-in, background 0.1s ease-in;
 //     -ms-transition: color 0.1s ease-in, background 0.1s ease-in;
 //     -o-transition: color 0.1s ease-in, background 0.1s ease-in;
 //     transition: color 0.1s ease-in, background 0.1s ease-in;
 // }

 .navbar {
   background: rgba(4, 45, 1, 0.75);
 }

 #custom_nav {
   color: white;
   border-radius: 6px;
   box-shadow: 0px 0px 10px 2px rgba(4, 45, 1, 0.75);
   margin: 0 1px;
 }

 #login {
   text-align: right;
 }
  hr {
     display: block;
     height: 1px;
     border: 0;
     border-top: 1px solid #ccc;
     margin: 1em 0;
     padding: 0;
 }


 /* ==========================================================================
    Wrap Sections
    ========================================================================== */

 #headerwrap {
 	background: url(http://theflymaster.com/wp-content/uploads/2013/01/Trout-Fin.jpg) no-repeat center top;
 	margin-top: -10px;
 	padding-top:20px;
 	text-align:center;
 	background-attachment: relative;
 	background-position: center center;
 	min-height: 820px;
 	width: 100%;


     -webkit-background-size: 100%;
     -moz-background-size: 100%;
     -o-background-size: 100%;
     background-size: 100%;

     -webkit-background-size: cover;
     -moz-background-size: cover;
     -o-background-size: cover;
     background-size: cover;
 }

 #headerwrap h1 {
 	margin-top: 150px;
 	color: white;
 	font-size: 70px;
 	font-weight: 700;
 }

 #headerwrap h3 {
 	color: white;
 	font-size: 30px;
 	font-weight: 100;
     font-family: 'EB Garamond', serif;
     font-style: oblique;
 }




 /* Footer Wrap */

 #f {
 	background: #1a1a1a;
 	padding-top: 70px;
 	padding-bottom: 70px;
 	text-align: center
 }

 #f h3 {
 	color: white;
 	font-size: 28px;
 	font-weight: 700;
 	letter-spacing: 1px;
 }

 #f i {
 	font-size: 8px;
 	color: #fff;
     padding: 3px;
 }

 #f p {
 	font-size: 20px;
 	color: #f2f2f2;
 }

 #f img {
 	text-align: center;
 }


 /* MENU CONF*/

 .menu {
 	position: fixed;
 	right: -200px;
 	width: 260px;
 	height: 100%;
 	top: 0;
 	z-index: 10;
 	text-align: left;
 }

 .menu.menu-open {
 	right: 0px;
 }

 .menu-wrap {
 	position: absolute;
 	top: 0;
 	left: 60px;
 	background: #1a1a1a;
 	width: 200px;
 	height: 100%;
 }

 .menu h1.logo a {
 	font-family: 'Oswald', sans-serif;
 	font-size: 16px;
 	font-weight: 700;
 	letter-spacing: 0.15em;
 	line-height: 40px;
 	text-transform: uppercase;
 	color: #ffffff;
 	margin-top: 20px;
 }

 .menu h1.logo a:hover {
 	color: #f85c37;
 }

 .menu img.logo {
 	margin: 20px 0;
 	max-width: 160px;
 }

 .menu a {
 	margin-left: 20px;
 	color: #808080;
 	display: block;
 	font-size: 12px;
 	font-weight: 700;
 	line-height: 40px;
 	letter-spacing: 0.1em;
 	text-transform: uppercase;
 }

 .menu a:hover {
 	color: #ffffff;
 }

 .menu a:active {
 	color: #ffffff;
 }

 .menu a > i {
 	float: left;
 	display: inline-block;
 	vertical-align: middle;
 	text-align: left;
 	width: 25px;
 	font-size: 14px;
 	line-height: 40px;
 	margin: 25px 2px;
 }

 .menu-close {
 	cursor: pointer;
 	display: block;
 	position: absolute;
 	font-size: 14px;
 	color: #808080;
 	width: 40px;
 	height: 40px;
 	line-height: 40px;
 	top: 20px;
 	right: 5px;
 	-webkit-transition: all .1s ease-in-out;
 	   -moz-transition: all .1s ease-in-out;
 		-ms-transition: all .1s ease-in-out;
 		 -o-transition: all .1s ease-in-out;
 			transition: all .1s ease-in-out;
 }

 .menu-close:hover {
 	color: #ffffff;
 	-webkit-transition: all .1s ease-in-out;
 	   -moz-transition: all .1s ease-in-out;
 		-ms-transition: all .1s ease-in-out;
 		 -o-transition: all .1s ease-in-out;
 			transition: all .1s ease-in-out;
 }



 /* Push the body after clicking the menu button */
 .body-push {
 	overflow-x: hidden;
 	position: relative;
 	left: 0;
 }

 .body-push-toright {
 	left: 200px;
 }

 .body-push-toleft {
 	left: -200px;
 }

 .menu,
 .body-push {
 	-webkit-transition: all .3s ease;
 	   -moz-transition: all .3s ease;
 		-ms-transition: all .3s ease;
 		 -o-transition: all .3s ease;
 			transition: all .3s ease;
 }

 #menuToggle {
 	position: absolute;
 	top: 20px;
 	left: 0;
 	z-index: 11;
 	display: block;
 	text-align: center;
 	font-size: 14px;
 	color: #ffffff;
 	width: 40px;
 	height: 40px;
 	line-height: 40px;
 	cursor: pointer;
 	background: rgba(0,0,0,0.25);
 	-webkit-transition: all .1s ease-in-out;
 	   -moz-transition: all .1s ease-in-out;
 		-ms-transition: all .1s ease-in-out;
 		 -o-transition: all .1s ease-in-out;
 			transition: all .1s ease-in-out;
 }

 #menuToggle:hover {
 	color: #ffffff;
 	background: rgba(0,0,0,0.2);
 	-webkit-transition: all .1s ease-in-out;
 	   -moz-transition: all .1s ease-in-out;
 		-ms-transition: all .1s ease-in-out;
 		 -o-transition: all .1s ease-in-out;
 			transition: all .1s ease-in-out;
 }



 home.html.erb

 <!DOCTYPE html>
<html>
  <head>
    <title>Flyfishing</title>
    <%= csrf_meta_tags %>

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>
    <section id="home" name="home"></section>
    <div id="headerwrap">
      <!--  navbar -->
      <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          <a id="custom_nav" class="navbar-brand" href="<%= home_path %>"/>Home</a>
          <a id="login" class="navbar-brand" href="<%= new_session_path %>"/>Sign In</a>
          <a id="login" class="navbar-brand" href="<%= logout_path %>"/>Log Out</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
             <!--  nav here -->
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
      <div class="container">
        <div class="row">
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <h1>FLY FISHING FIELD LOG</h1>
          <br>
          <div class="col-lg-6 col-lg-offset-3">
            <a id="sign_in" class="btn btn-primary btn-lg" href="<%= new_user_path %>"/>SIGN IN</a>
            <a id="sign_in" class="btn btn-primary btn-lg" href="<%= new_user_path %>"/>SIGN UP</a>
          </div>
        </div>
      </div><!-- /container -->
    </div><!-- /headerwrap -->
  </body>
</html>






views/user/new.html.erb

<h1>Sign Up Here!</h1>
<%= form_for @user do |f| %>
  <p>
    <%= f.label :name %>
    <%= f.text_field :name %>
  </p>
  <p>
    <%= f.label :password %>
    <%= f.password_field :password%>
  </p>
  <p>
    <%= f.label :age %>
    <%= f.text_field :age %>
  </p>
  <p>
    <%= f.label :name, 'State' %>
    <%= f.collection_select(:state_id, State.all, :id, :name) %>

  </p>
  <%= f.submit "Create" %>
<% end %>
<!--
    :name, State::STATES, :to_s, :to_s,
       :include_blank => true -->
