<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main page</title>
<style>
* {
	margin: 0;
	padding: 0;
}

html, body {
	width: 100%;
	height: 100%;
}

header {
	width: 100%;
	height: 10%;
	background: teal;
	color: white;
	line-height: 100px;
	text-align: center;
}

nav {
	width: 100%;
	height: 5%;
	background: dimgrey;
	color: white;
	line-height: 45px;
	text-align: center;
}

nav ul {
	display: inline-block;
	list-style-type: none;
}

nav li {
	margin: 0 50px;
	float: left;
}

nav a {
	display: block;
	text-decoration: none;
	color: white;
}

nav a:HOVER {
	background: teal;
	font-weight: bold;
	font-size: 1.1em;
}

section {
	width: 100%;
	height: 80%;
	background: honeydew;
}

footer {
	width: 100%;
	height: 5%;
	background: teal;
	color: white;
	line-height: 45px;
	text-align: center;
	font-size: 0.9em;
}
h2{
	text-align: center;
}

table {
	margin: 0 auto;
	border-collapse: collapse;
	border: 2px solid dimgrey;
}

tr, th, td {
	border: 1px solid black;
}

#btn1 {
	background: lightgrey;
	width: 120px;
	height: 28px;
	font-size: 1em;
}

#tr_btn {
	height: 50px;
}

.index_text{
	margin-left: 70px;
}
</style>
</head>
<body>
	<header>
		<h1>쇼핑몰 회원관리 ver 1.0</h1>
	</header>
</body>
</html>