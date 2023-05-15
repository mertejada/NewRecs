<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Vinilos</title>
            </head>
            <body>
                <h1>Vinilos</h1>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Artista</th>
                        <th>Lanzamiento</th>
                        <th>Género</th>
                        <th>Estudio</th>
                        <th>Carátula</th>
                        <th>Precio</th>
                        <th>Descuento</th>
                    </tr>
                    <xsl:for-each select="vinilos/vinilo">
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="artista"/></td>
                            <td><xsl:value-of select="lanzamiento"/></td>
                            <td><xsl:value-of select="genero"/></td>
                            <td><xsl:value-of select="estudio"/></td>
                            <td><img src="{caratula}" alt="Carátula"/></td>
                            <td><xsl:value-of select="precio"/></td>
                            <td>
                                <xsl:if test="@descuento='true'">
                                    <span style="color: red;">Sí</span>
                                </xsl:if>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
