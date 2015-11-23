<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" doctype-system="about:legacy-compat" encoding="utf-8" />

  <xsl:template name="header">
    <xsl:param name="title" />

    <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />

      <title><xsl:if test="$title"><xsl:value-of select="$title" /> · </xsl:if>Modem Broadcast</title>

      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/1.5.2/css/ionicons.min.css" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.2/normalize.min.css" />

      <link rel="stylesheet" href="https://patterns.radiomodem.dk/css/modem.css" />

      <link rel="icon" href="/favicon.ico" />

      <link rel="author" href="humans.txt" />
    </head>

  </xsl:template>
</xsl:stylesheet>
