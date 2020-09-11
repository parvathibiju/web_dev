<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
  <html>
  <body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="#ff00ff">
      <th>Region</th>
      <th>Location</th>
      <th>Feature Type</th>
      <th>Rov dives</th>
      <th>Area Coveres</th>
      <th>depth Range</th>
      <th> Distance from Land(km)</th>
      <th> Shipping Activity proxy </th>
      <th> Items</th>
    </tr>
    <xsl:for-each select="survey/isro">
    <xsl:sort select="Rovdives"/>
  
    <xsl:if test="DistancefromLand &gt; 700">
    <tr>
      <td><xsl:value-of select="Region"/></td>
      <td><xsl:value-of select="Location"/></td>
      <td><xsl:value-of select="FeatureType"/></td>
      <td><xsl:value-of select="Rovdives"/></td>
      <xsl:choose>
        <xsl:when test="AreaCoveres &gt; 2.5">
      <td><xsl:value-of select="AreaCoveres"/></td>
      </xsl:when>
        <xsl:otherwise>
         <td bgcolor="#aaaaaa"><xsl:value-of select="AreaCoveres"/></td>
         </xsl:otherwise>
      </xsl:choose>
      <td><xsl:value-of select="depthRange"/></td>
      <td><xsl:value-of select="DistancefromLand"/></td>
      <td><xsl:value-of select="ShippingActivityproxy"/></td>
      <td><xsl:value-of select="Items"/></td>
  
    </tr>
    </xsl:if>
    </xsl:for-each>
    
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>