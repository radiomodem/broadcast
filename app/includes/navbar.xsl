<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" doctype-system="about:legacy-compat" encoding="utf-8" />
  <xsl:template name="navbar">

    <nav class="navbar navbar--inverse navbar-static-top" role="navigation">
      <div class="container">
        <nav class="nav navbar-nav" role="navigation">
          <a class="nav-link" href="/">Broadcast</a>
        </nav>

        <nav class="nav navbar-nav navbar-right" role="navigation">
          <a class="nav-link" href="/">Status</a>
          <a class="nav-link" href="/admin/">Administration</a>
        </nav>
      </div>
    </nav>

  </xsl:template>
</xsl:stylesheet>
