<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xsl:template match="/">
    <html>
      <head />
      <body title="Personnel">
        <p>
          <xsl:for-each select="test-run">
            <xsl:for-each select="test-suite">
              <xsl:for-each select="test-suite">
                <xsl:for-each select="test-suite">
                  <ul>
                    <li>
                      <xsl:for-each select="@name">
                        <xsl:value-of select="." />
                      </xsl:for-each>

                      <xsl:for-each select="test-suite">
                        <ul>
                          <li>
                            <xsl:for-each select="@name">
                              <xsl:value-of select="." />
                            </xsl:for-each>
                            <xsl:if test="@result='Passed'">
                                <xsl:for-each select="@result">
                                  <xsl:value-of select="." />
                                </xsl:for-each>
                            </xsl:if>
                            <xsl:if test="@result='Failed'">
                                <xsl:for-each select="@result">
                                  <xsl:value-of select="." />
                                </xsl:for-each>
                            </xsl:if>
                            <xsl:for-each select="test-suite">
                              <xsl:for-each select="test-case">
                                <ul>
                                  <li>
                                    <xsl:for-each select="@name">
                                      <xsl:value-of select="." />
                                    </xsl:for-each>
                                    <xsl:if test="@result='Passed'">
                                        <xsl:for-each select="@result">
                                          <xsl:value-of select="." />
                                        </xsl:for-each>
                                    </xsl:if>
                                    <xsl:if test="@result='Failed'">
                                        <xsl:for-each select="@result">
                                          <xsl:value-of select="." />
                                        </xsl:for-each>
                                    </xsl:if>
                                  </li>
                                </ul>
                              </xsl:for-each>
                            </xsl:for-each>
                          </li>
                        </ul>
                      </xsl:for-each>
                    </li>
                  </ul>
                </xsl:for-each>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
        </p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
