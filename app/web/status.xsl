<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" doctype-system="about:legacy-compat" encoding="utf-8" />

  <xsl:include href="../includes/header.xsl" />
  <xsl:include href="../includes/footer.xsl" />
  <xsl:include href="../includes/navbar.xsl" />

  <xsl:template match = "/icestats">
    <html>
      <xsl:call-template name="header" />

      <body>
        <xsl:call-template name="navbar" />

        <main class="container" role="main">
          <xsl:for-each select="source">
            <xsl:choose>
              <xsl:when test="listeners">
                <h3>Mount Point <xsl:value-of select="@mount" /></h3>

                <ul>
                  <li><a href="{@mount}.m3u"><i class="ion-play"></i> M3U</a></li>
                </ul>

                <audio controls="controls" preload="none">
                  <source src="{@mount}" type="{server_type}" />
                </audio>

                <table class="table">
                  <tbody>
                    <xsl:if test="server_name">
                      <tr>
                        <td>Stream Name:</td>
                        <td><xsl:value-of select="server_name" /></td>
                      </tr>
                    </xsl:if>

                    <xsl:if test="server_description">
                      <tr>
                        <td>Stream Description:</td>
                        <td><xsl:value-of select="server_description" /></td>
                      </tr>
                    </xsl:if>

                    <xsl:if test="server_type">
                      <tr>
                        <td>Content Type:</td>
                        <td><xsl:value-of select="server_type" /></td>
                      </tr>
                    </xsl:if>

                    <xsl:if test="stream_start">
                      <tr>
                        <td>Stream started:</td>
                        <td class="streamstats"><xsl:value-of select="stream_start" /></td>
                      </tr>
                    </xsl:if>

                    <xsl:if test="bitrate">
                      <tr>
                        <td>Bitrate:</td>
                        <td class="streamstats"><xsl:value-of select="bitrate" /></td>
                      </tr>
                    </xsl:if>

                    <xsl:if test="quality">
                      <tr>
                        <td>Quality:</td>
                        <td class="streamstats"><xsl:value-of select="quality" /></td>
                      </tr>
                    </xsl:if>

                    <xsl:if test="video_quality">
                      <tr>
                        <td>Video Quality:</td>
                        <td class="streamstats"><xsl:value-of select="video_quality" /></td>
                      </tr>
                    </xsl:if>

                    <xsl:if test="frame_size">
                      <tr>
                        <td>Framesize:</td>
                        <td class="streamstats"><xsl:value-of select="frame_size" /></td>
                      </tr>
                    </xsl:if>

                    <xsl:if test="frame_rate">
                      <tr>
                        <td>Framerate:</td>
                        <td class="streamstats"><xsl:value-of select="frame_rate" /></td>
                      </tr>
                    </xsl:if>

                    <xsl:if test="listeners">
                      <tr>
                        <td>Listeners (current):</td>
                        <td class="streamstats"><xsl:value-of select="listeners" /></td>
                      </tr>
                    </xsl:if>

                    <xsl:if test="listener_peak">
                      <tr>
                        <td>Listeners (peak):</td>
                        <td class="streamstats"><xsl:value-of select="listener_peak" /></td>
                      </tr>
                    </xsl:if>

                    <xsl:if test="genre">
                      <tr>
                        <td>Genre:</td>
                        <td class="streamstats"><xsl:value-of select="genre" /></td>
                      </tr>
                    </xsl:if>

                    <xsl:if test="server_url">
                      <tr>
                        <td>Stream URL:</td>
                        <td class="streamstats">
                          <a href="{server_url}"><xsl:value-of select="server_url" /></a>
                        </td>
                      </tr>
                    </xsl:if>

                    <tr>
                      <td>Currently playing:</td>
                      <td class="streamstats">
                      <xsl:if test="artist">
                        <xsl:value-of select="artist" /> -
                      </xsl:if>
                        <xsl:value-of select="title" />
                      </td>
                    </tr>
                  </tbody>
                </table>
              </xsl:when>

              <xsl:otherwise>
                <h3><xsl:value-of select="@mount" /> - Not Connected</h3>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </main>

        <xsl:call-template name="footer" />
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
