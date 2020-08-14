<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>Photo portfolio</h2>
    <table border="1">
      <tr>
        <th>Name</th>
        <th>Location</th>
      </tr>
      <xsl:for-each select="Portfolio/photos">
      <xsl:sort select="location" data-type="text" order="ascending"/>
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="location"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
