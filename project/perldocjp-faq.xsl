<?xml version="1.0" encoding="EUC-JP"?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="EUC-JP"
    doctype-public="-//W3C//DTD HTML 4.01//EN"/>

  <xsl:template match="/faqlist">
    <html lang="ja">
      <head>
        <title>perldocjp FAQ 集</title>
      </head>
      <body>
        <h1>perldocjp FAQ 集</h1>
        <xsl:for-each select="section">  
          <h2><xsl:value-of select="title"/></h2>
          <dl>
            <xsl:for-each select="faq/part">
              <xsl:element name="dt">
                <xsl:if test="@id">
                  <xsl:attribute name="id">
                    <xsl:value-of select="@id"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="question"/>
              </xsl:element>
              <dd>
                <xsl:for-each select="answer">
                  <p><xsl:copy-of select="@*|*|text()"/></p>
                </xsl:for-each>
              </dd>
            </xsl:for-each>
          </dl>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

