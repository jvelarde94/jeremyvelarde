<?xml version="1.0" encoding="UTF-8" ?>
<!--
   XML Final
   Transportation in NYC
   Author: Jeremy Velarde
   Date:   11/21/2016
   File: index.xsl
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
	version="2.0">

   <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />

<xsl:template match="/">
	<html>
	<title> Travel - New York City </title>
		<head>
			<link href="style.css" rel="stylesheet" type="text/css" />
		</head>
	    <body>
	    	<!-- navigation bar from .css class -->
	    	<header>
		    <div class="navbar">
		    	<ul>
			   		<li><a href="index.xml"> Home </a> </li> 
			   		<li><a href="travel.xml"> Travel </a> </li> 
			   		<li><a href="packages.xml"> Packages </a> </li>
		    	</ul>
		    </div>
			</header>

		    <!-- banner image -->
			<img src="images/nycbanner.jpg" width="1000" height="300" /> 

		    <!-- Extracts and outputs title from index.xml in h1 -->
		    <h1> 
		    	<xsl:value-of select="index/title" /> 
		    </h1>

		    <!-- Extracts and outputs description from index.xml -->
		    <xsl:value-of select="index/description" />
			
		    <!-- image gallery -->
			<div id="container">
			    <div class="img">
			    	<a href="travel.xml">
				    	<img src="images/wtc.jpg" width="300" height="200" />
				    </a>
				</div>

			    <div class="img">
			    	<a href="travel.xml">
				    	<img src="images/centralpark.jpg" width="300" height="200" />
					</a>
				</div>

			    <div class="img">
			    	<a href="travel.xml">
				    	<img src="images/moma.jpg" width="300" height="200" />
				    </a>
				</div>
				<div class="img">
					<a href="travel.xml">
				    	<img src="images/timessquare.jpg" width="300" height="200" />
					</a>
				</div>
			</div>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>