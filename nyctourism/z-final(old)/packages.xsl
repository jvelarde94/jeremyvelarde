<?xml version="1.0" encoding="UTF-8" ?>
<!--
   XML Final
   Transportation in NYC
   Author: Jeremy Velarde
   Date:   11/21/2016
   File: packages.xsl
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
		<head>
			<link href="style.css" rel="stylesheet" type="text/css" />
			<title> Packages </title>
		</head>
	    <body>
		    <div class="navbar">
		    	<ul>
			   		<li><a href="index.xml"> Home </a> </li> 
			   		<li><a href="travel.xml"> Travel </a> </li> 
			   		<li><a href="packages.xml"> Packages </a> </li>
		    	</ul>
		    </div>

		    <!-- banner image -->
			<img src="images/libertybanner.jpg" width="1000" height="300" /> 

		    <h1> Packages </h1>

		    <big> Travel packages + pricing </big>
		    <!--
		    <xsl:template match="index">
		    	<xsl:value-of select="description"/>
		    </xsl:template>
			-->

		</body>
	</html>
</xsl:template>

</xsl:stylesheet>