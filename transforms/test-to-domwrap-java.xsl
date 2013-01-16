<?xml version="1.0" encoding="ISO-8859-1"?>
<!--
Copyright © 2001-2004 World Wide Web Consortium, 
(Massachusetts Institute of Technology, European Research Consortium 
for Informatics and Mathematics, Keio University). All 
Rights Reserved. This work is distributed under the W3C® Software License [1] in the 
hope that it will be useful, but WITHOUT ANY WARRANTY; without even 
the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 

[1] http://www.w3.org/Consortium/Legal/2002/copyright-software-20021231
-->

<!--   
This transform generates .js files for SVG files


Usage:

saxon -o someTest.js someTest.xml test-to-selfhtml.xsl


-->


<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="testpath">../level1/core/</xsl:param>
    <xsl:param name="target-uri-base">http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/</xsl:param>
    

	<xsl:output method="text" encoding="UTF-8"/> 

<xsl:template match="/">
    <xsl:apply-templates mode="jsunit"/>
</xsl:template>

<xsl:template match="*[local-name() = 'test']" mode="jsunit">
    <xsl:variable name="loads" select="*[local-name() = 'load' and not(@interface)]"/>

        <xsl:call-template name="copyright-comment"/>

package au.com.samcday.rhino.domwrap;

import org.junit.Test;

public class Test_<xsl:value-of select="@name"/> extends DomWrapTestBase {
    @Test
    public void testCase() {
      super.runTest("<xsl:value-of select="@name"/>");
    }
}
</xsl:template>




<xsl:template name="copyright-comment">
/*
Copyright © 2001-2004 World Wide Web Consortium, 
(Massachusetts Institute of Technology, European Research Consortium 
for Informatics and Mathematics, Keio University). All 
Rights Reserved. This work is distributed under the W3C® Software License [1] in the 
hope that it will be useful, but WITHOUT ANY WARRANTY; without even 
the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 

[1] http://www.w3.org/Consortium/Legal/2002/copyright-software-20021231
*/
</xsl:template>



</xsl:stylesheet>
