<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  
<html>
<head>
	<meta charset="utf-8"></meta>
	<title>Mi página web</title>
	<meta name="description" content="Información sobre peces."></meta>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<link rel="stylesheet" type="text/css" href="../css/index2.css"/>
</head>

<body>

<header>

	<nav>
		<h1>Todo peces</h1>
		<ul>
			<li><a href="../web.html">Inicio</a></li>
			<li><a href="../html/alimentacion.html">Alimentación</a></li>
			<li><a href="cuidados.xml">Cuidados</a></li>
			<li><a href="../html/ecomunes.html">Enfermedades comunes</a></li>
			<li><a href="../html/contacto.html">Contacto</a></li>
		</ul>
	</nav>
	
</header>

<div style="height: 110vw;">
	<article>
	  <xsl:for-each select="cuidados/cuidado">
		<h2 style="margin-left: 10vw; margin-top: 11vw;"><xsl:value-of select="h2"></xsl:value-of></h2>
		<p><xsl:value-of select="p"></xsl:value-of></p>
		<ul>
		<xsl:for-each select="ul/li">
			<li><b><xsl:value-of select="h4"></xsl:value-of></b><br></br>
			<xsl:value-of select="p"></xsl:value-of><br></br><br></br>
			</li>
			</xsl:for-each>
		</ul>
		</xsl:for-each>
	</article>
</div>

<div style="height: 110vw;">
	<aside>
		<div>
			<img src="../img/yo.png"/>
			<h2>Información personal</h2>
			<p>Me llamo Lucía Bustillo. Me he interesado por los peces gracias a mi madre. <br/>Tengo dos peceras en mi casa de las que disfrutamos muchísimo. <br/> Estudio en el IES Zayas y Sotomayor.<br/> <a href="contacto.html">Ver más información...</a> </p>
				<hr/>
		</div>
		<div>
			<h2>SOLICITA MÁS INFORMACIÓN</h2>
			<p>Podéis enviar cualquier pregunta que os surga e intentaré resolverla.</p>
			<form>
				<input type="text" name="Nombre" placeholder="Nombre"/>
				<br/>
				<input type="text" name="Apellidos" placeholder="Apellidos"/>
  				<br/>
 				<input type="text" name="Telefono" placeholder="Telefono"/>
 				<br/>
 				<input type="text" name="email" placeholder="Email"/>
  				<br/>
  				<textarea placeholder="Pregunta"></textarea>
  				<br/>
  	  			<input type="submit" value="Enviar"/>
			</form>
			<hr/>
			<form>
				<h2>Valoración personal</h2>
				<fieldset>
				<legend>Valoración</legend>
				<br/>
				<input type="text" placeholder="Email" size="30px; "/>
				<br/><br/>
				<textarea placeholder="Opinión" size="30px;"></textarea>
				<br/><br/>
  	  			<input type="submit" value="Enviar"/>
				</fieldset>
			</form>
		</div>
	</aside>
</div>

<footer>
	<div>
		<h3>Buscame en: </h3>
		<div>
			<a href="https://www.facebook.com/pagina"><img src="../img/facebook.jpg" style="width: 2vw; height: 2vw;"/></a>
			<a href="https://www.instagram.com/"><img src="../img/instagram.png" style="width: 2vw; height: 2vw;"/></a>
			<a href="https://www.google.com/intl/es-419/gmail/about/"><img src="../img/gmail.jpg" style="width: 2vw; height: 2vw;"/></a>
			<a href="https://aboutme.google.com/u/0/?referer=gplus"><img src="../img/google.png" style="width: 2vw; height: 2vw;"/></a>
			<a href="https://twitter.com/?lang=es"><img src="../img/twitter.png" style="width: 2vw; height: 2vw;"/></a>
		</div>
		<br/>
		<p>Espero que hayan disfrutado de la información que les he ofrecido y de mi página. Nos vemos pronto.</p>
	</div>
</footer>

</body>
</html>

  </xsl:template>
</xsl:stylesheet>
