<?xml version="1.0" encoding="EUC-JP"?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="EUC-JP"
    doctype-public="-//W3C//DTD HTML 4.01//EN"/>

  <xsl:template match="/faqlist">
    <html lang="ja">
      <head>
        <title>perldocjp FAQ ��</title>
        <link rel="stylesheet" href="faq.css" />
        <link rel="stylesheet" href="index.css" />
      </head>
      <body>

        <h1>Japanize Perl Resours Project</h1>

        <div class="menu">
          <a HREF="index.html">Home</a> /
          <a HREF="joinus.html">���ä���ˤ�?</a> /
          <a HREF="joinus.html#ml">�᡼��󥰥ꥹ��</a> /
          <a HREF="translation.html">����������</a> /
          <a HREF="event.html">���٥��</a> /
          <a HREF="perldocjp-faq.html">FAQ</a> /
          <a HREF="link.html">���</a> /
          <span style="background-color:#eef"><a href="http://sourceforge.jp/projects/perldocjp/">sourcefoge site</a></span>
        </div>

        <h2>perldocjp FAQ ��</h2>
        <xsl:for-each select="section">  
          <h3><xsl:value-of select="title"/></h3>
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

