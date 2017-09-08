<?xml version="1.0" encoding="UTF-8" ?>
<!--
   XML Final
   Transportation in NYC
   Author: Jeremy Velarde
   Date:   11/21/2016
   File: travel.xsl
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
			<title> Travel </title>
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
			<img src="images/travelbanner.jpg" width="1000" height="300" /> 

		    <h1>
		    	<xsl:value-of select="travels/title" />
		    	:
		    	<xsl:value-of select="travels/pageDesc" />
		    </h1>

		    <section>
		    	<xsl:apply-templates select="travels/travel">
		    		<xsl:sort select="attraction" order="ascending" />
		    	</xsl:apply-templates>
		    </section>

		</body>
	</html>
</xsl:template>

<xsl:template match="travel">
	<h2> <xsl:value-of select="attraction"/> </h2>

	<!--COPY-OF TO EXTRACT IMAGE RATHER THAN TEXT -->
	<h4> <xsl:copy-of select="image/node()" /> </h4>

	<b>Location:</b> <xsl:value-of select="location"/>

	<button class="accordion">
		<center><strong><i>More Info... </i></strong></center>
	</button>
	<div class="panel">
		<div id="borderDesc">
			<p> 
				<i> <xsl:value-of select="description"/> </i>
			</p>
			<p>
				<a href="packages.xml"> Visit Now </a>
			</p>
		</div>
	</div>

	<!-- JAVASCRIPT for accordion -->
	<script type="text/javascript" defer="defer">
		<xsl:text>
			<![CDATA[
			var acc = document.getElementsByClassName("accordion");
			var i;

			for (i = 0; i < acc.length; i++) {
			    acc[i].onclick = function(){
			        this.classList.toggle("active");
			        this.nextElementSibling.classList.toggle("show");
			  }
			}
			]]>
		</xsl:text>
	</script>

</xsl:template>

</xsl:stylesheet>

