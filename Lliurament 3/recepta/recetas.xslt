<?xml version="1.0" encoding="UTF-8"?>

<!-- Alejandro Liebana / David Martinez | ASIX2C -->
<!-- Usa xHTML (estricto, hay que cerrar todas las etiquetas si te salta error-->
<!-- aunque probablemente funcione igual)-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <!-- Inicio plantilla -->
<xsl:template match="/">
<xsl:for-each select="receta">
<!-- Generar un document HTML per a cada recepta -->

<html>
<head>
        <meta charset="UTF-8"></meta>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
        <title>Receta Delicias Kitchen</title>
        <link rel="stylesheet" href="./styles.css"></link>
</head>
<body>
    <!-- Header de la web -->
    <header>
        <img src="../imatges/Logo-Delicias.png" alt="logo"></img>
        <hr/>
        <nav>
            <ul>
                <li><a href="../index.html">INICIO </a></li>
                <li><a href="#">SOBRE MI</a></li>
                <li><a href="../llista-de-receptes/llista-de-receptes.html">RECETAS</a></li>
                <li><a href="../form/form.html">CONTACTO</a></li>
                <li><a href="../otras-cosas/otras-cosas.html">OTRAS COSAS</a></li>
            </ul>
        </nav>
        <hr/>
    </header>

    <!-- Receta -->
    <main>
        <h1><xsl:value-of select="titulo"/></h1>
        <hr/>
        <br/>
        <p><xsl:value-of select="descripcion"/></p>
        <br/>
        <hr/>
        <br/>
        <div id="div-ingredientes">
            <div>
                <h2>Ingredientes</h2>
                <br/>
                <ul>
                  <xsl:for-each select="ingredientes/ingrediente">
                  <li><xsl:value-of select="."/></li>
                  </xsl:for-each>
                </ul>
            </div>  
        </div>
        <div>
        <img id="img-ingredientes">
        <xsl:attribute name="src">
        <xsl:value-of select="imagen"/>
        </xsl:attribute>
        </img>
        </div>
        <br/>
        <hr/>
        <br/>
        <h2>Instrucciones</h2>
        <br/>
        <ol>
        <xsl:for-each select="pasos/paso">
        <li><xsl:value-of select="."/></li>
        </xsl:for-each>
        </ol>
        <br/>
        <hr/>
        <br/>
        <h2>Consejos</h2>
        <br/>
        <ul>
        <xsl:for-each select="consejos/consejo">
        <li><xsl:value-of select="."/></li>
        </xsl:for-each>
        </ul>
        <br/>
        <p><xsl:value-of select="agradecimiento"/></p>
    </main>

   <!-- Footer -->
    <footer>
        <ul>
            <li><a href="#">FACEBOOK</a></li>
            <li><a href="#">TWITTER</a></li>
            <li><a href="#">INSTAGRAM</a></li>
            <li><a href="#">PINTEREST</a></li>
            <li><a href="#">EMAIL</a></li>
            <li><a href="#">RSS</a></li>
        </ul>
    </footer>

</body>
</html>

</xsl:for-each>
</xsl:template>

</xsl:stylesheet>
