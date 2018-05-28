<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xsl:template match="/">
    <html>
      <head />
      <body>
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
                              <span style="color:green">
                                <xsl:for-each select="@result">
                                  <xsl:value-of select="." />
                                </xsl:for-each>
                              </span>
                            </xsl:if>
                            <xsl:if test="@result='Failed'">
                              <span style="color:red">
                                <xsl:for-each select="@result">
                                  <xsl:value-of select="." />
                                </xsl:for-each>
                              </span>
                            </xsl:if>
                            <xsl:for-each select="test-suite">
                              <xsl:for-each select="test-case">
                                <ul>
                                  <li>
                                    <xsl:for-each select="@name">
                                      <xsl:value-of select="." />
                                    </xsl:for-each>
                                    <xsl:if test="@result='Passed'">
                                      <span style="color:green">
                                        <xsl:for-each select="@result">
                                          <xsl:value-of select="." />
                                        </xsl:for-each>
                                      </span>
                                    </xsl:if>
                                    <xsl:if test="@result='Failed'">
                                      <span style="color:red">
                                        <xsl:for-each select="@result">
                                          <xsl:value-of select="." />
                                        </xsl:for-each>
                                      </span>
                                    </xsl:if>
                                    <xsl:if test="failure/message">
                                      <p>
                                        <xsl:value-of select="failure/message"/>
                                        <br></br>
                                        <br></br>
                                        <xsl:if test="contains(output, 'fuji')">
                                          <xsl:variable name="username" select="substring-after(output,'ScreenShot: ')" />
                                          <a title="{$username}" href="{$username}">ScreenShot</a>
                                        </xsl:if>
                                        <xsl:if test="contains(output, 'Failed to take a screenshot')">
                                          <xsl:value-of select="output"/>
                                        </xsl:if>
                                      </p>
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
