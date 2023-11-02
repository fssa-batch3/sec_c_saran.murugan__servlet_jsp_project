<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=1">
<meta name="theme-color" content="#111111">

<link rel="icon" type="image/png" sizes="32x32"
	href="https://knife.media/wp-content/themes/knife/assets/images/icon-32.png" />
<link rel="icon" type="image/png" sizes="192x192"
	href="https://knife.media/wp-content/themes/knife/assets/images/icon-192.png" />
<link rel="apple-touch-icon" sizes="180x180"
	href="https://knife.media/wp-content/themes/knife/assets/images/icon-180.png" />

<title id="error_tag" ></title>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Montserrat:400,600,700');

@import url('https://fonts.googleapis.com/css?family=Catamaran:400,800')
	;

.error-container {
	text-align: center;
	font-size: 180px;
	font-family: 'Catamaran', sans-serif;
	font-weight: 800;
	margin: 20px 15px;
}

.error-container>span {
	display: inline-block;
	line-height: 0.7;
	position: relative;
	color: #FFB485;
}

.error-container>span {
	display: inline-block;
	position: relative;
	vertical-align: middle;
}

.error-container>span:nth-of-type(1) {
	color: #D1F2A5;
	animation: colordancing 4s infinite;
}

.error-container>span:nth-of-type(3) {
	color: #F56991;
	animation: colordancing2 4s infinite;
}

.error-container>span:nth-of-type(2) {
	width: 120px;
	height: 120px;
	border-radius: 999px;
}

.error-container>span:nth-of-type(2):before, .error-container>span:nth-of-type(2):after
	{
	border-radius: 0%;
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: inherit;
	height: inherit;
	border-radius: 999px;
	box-shadow: inset 30px 0 0 rgba(209, 242, 165, 0.4), inset 0 30px 0
		rgba(239, 250, 180, 0.4), inset -30px 0 0 rgba(255, 196, 140, 0.4),
		inset 0 -30px 0 rgba(245, 105, 145, 0.4);
	animation: shadowsdancing 4s infinite;
}

.error-container>span:nth-of-type(2):before {
	-webkit-transform: rotate(45deg);
	-moz-transform: rotate(45deg);
	transform: rotate(45deg);
}

/*.screen-reader-text {
	position: absolute;
	top: -9999em;
	left: -9999em;
}*/

@
keyframes shadowsdancing { 0% {
	box-shadow: inset 30px 0 0 rgba(209, 242, 165, 0.4), inset 0 30px 0
		rgba(239, 250, 180, 0.4), inset -30px 0 0 rgba(255, 196, 140, 0.4),
		inset 0 -30px 0 rgba(245, 105, 145, 0.4);
}

25
%
{
box-shadow
:
inset
30px
0
0
rgba(
245
,
105
,
145
,
0.4
)
,
inset
0
30px
0
rgba(
209
,
242
,
165
,
0.4
)
,
inset
-30px
0
0
rgba(
239
,
250
,
180
,
0.4
)
,
inset
0
-30px
0
rgba(
255
,
196
,
140
,
0.4
);
}
50
%
{
box-shadow
:
inset
30px
0
0
rgba(
255
,
196
,
140
,
0.4
)
,
inset
0
30px
0
rgba(
245
,
105
,
145
,
0.4
)
,
inset
-30px
0
0
rgba(
209
,
242
,
165
,
0.4
)
,
inset
0
-30px
0
rgba(
239
,
250
,
180
,
0.4
);
}
75
%
{
box-shadow
:
inset
30px
0
0
rgba(
239
,
250
,
180
,
0.4
)
,
inset
0
30px
0
rgba(
255
,
196
,
140
,
0.4
)
,
inset
-30px
0
0
rgba(
245
,
105
,
145
,
0.4
)
,
inset
0
-30px
0
rgba(
209
,
242
,
165
,
0.4
);
}
100
%
{
box-shadow
:
inset
30px
0
0
rgba(
209
,
242
,
165
,
0.4
)
,
inset
0
30px
0
rgba(
239
,
250
,
180
,
0.4
)
,
inset
-30px
0
0
rgba(
255
,
196
,
140
,
0.4
)
,
inset
0
-30px
0
rgba(
245
,
105
,
145
,
0.4
);
}
}
@
keyframes colordancing { 0% {
	color: #D1F2A5;
}

25
%
{
color
:
#F56991;
}
50
%
{
color
:
#FFC48C;
}
75
%
{
color
:
#EFFAB4;
}
100
%
{
color
:
#D1F2A5;
}
}
@
keyframes colordancing2 { 0% {
	color: #FFC48C;
}

25
%
{
color
:
#EFFAB4;
}
50
%
{
color
:
#D1F2A5;
}
75
%
{
color
:
#F56991;
}
100
%
{
color
:
#FFC48C;
}
}

/* demo stuff */
* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	background-color: #416475;
	margin-bottom: 50px;
}

html, button, input, select, textarea {
	font-family: 'Montserrat', Helvetica, sans-serif;
	color: #92a4ad;
}

h1 {
	text-align: center;
	margin: 30px 15px;
}

.zoom-area {
	max-width: 490px;
	margin: 30px auto 30px;
	font-size: 19px;
	text-align: center;
}

.link-container {
	text-align: center;
}

a.more-link {
	text-transform: uppercase;
	font-size: 13px;
	background-color: #92a4ad;
	padding: 10px 15px;
	border-radius: 0;
	color: #416475;
	display: inline-block;
	margin-right: 5px;
	margin-bottom: 5px;
	line-height: 1.5;
	text-decoration: none;
	margin-top: 50px;
	letter-spacing: 1px;
}
</style>
</head>

<body>
	<h1 id="error_tag"></h1>
	<!--<p class="zoom-area"><b>CSS</b> animations to make a cool 404 page. </p>-->
	<section class="error-container">
		<span id="first"></span> 
		<!-- <span><span class="screen-reader-text"
			id="mid">500</span></span> 
			 <span id="last"></span>-->
	</section>
	<div class="link-container">
		<a target="_blank"
			href="<%=request.getContextPath()%>/MovieServlet"
			class="more-link">Go to home page</a>
	</div>

	<script type="text/javascript">
		var url = window.location.href;
		function UrlExists(url) {
			let http = new XMLHttpRequest();
			http.open('HEAD', url, false);
			http.send();

			let status = http.status;

			let error = document.getElementById("error_tag");
			error.innerText = status + " Error Page";
			
			let error1 = document.getElementById("first");
			error1.innerText = status;

			/*let last = status % 10;
			let ex = status/10;
			
			
			let mid = ex % 10;
			let ex2 = mid/10;
			
			let first = ex2 % 10;
			console.log(first);

			let error1 = document.getElementById("first");
			error1.innerText = first;

			let error2 = document.getElementById("mid");
			error2.innerText = mid;

			let error3 = document.getElementById("last");
			error3.innerText = last;
			*/

		}
		UrlExists(url);
	</script>
</body>
</html>