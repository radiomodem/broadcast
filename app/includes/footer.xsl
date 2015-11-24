<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" doctype-system="about:legacy-compat" encoding="utf-8" />

  <xsl:template name="footer">

    <footer class="footer" role="contentinfo">
      <div class="container">
        <div class="row">
          <div class="column u-compact">
            <p><b>Copyright © 2015 Modem</b></p>
          </div>

          <div class="column u-compact u-text-right">
            <ul class="u-inline-list">
              <li>This broadcast is managed by <a href="http://icecast.org" class="u-click-target">Icecast</a></li>
            </ul>
          </div>
        </div>
      </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/holder/2.5.2/holder.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.16/require.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <script src="https://patterns.radiomodem.dk/js/modem.js"></script>

    <script>require(["modem"])</script>

  </xsl:template>
</xsl:stylesheet>
