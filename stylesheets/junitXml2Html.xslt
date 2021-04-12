<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="testsuites">
<html> 
<body>
  <center><h2>Test Results</h2></center>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Test Suite Name</th>
      <th style="text-align:left">Start Time</th>
      <th style="text-align:left">Total Tests count</th>
      <th style="text-align:left">Total Failures count</th>
      <th style="text-align:left">Total Errors count</th>
      <th style="text-align:left">Test Suite - Total run Duration</th>
      <th style="text-align:left">Test Case details</th>
    </tr>
    <xsl:for-each select="testsuite">
    <tr>
      <td><xsl:value-of select="@name"/> </td>
      <td><xsl:value-of select="@timestamp"/> </td>
      <td><xsl:value-of select="@tests"/> </td>
      <td><xsl:value-of select="@failures"/> </td>
      <td><xsl:value-of select="@errors"/> </td>
      <td><xsl:value-of select="@time"/> seconds</td>
      <td>
        <table border="1">
          <tr>
            <th bgcolor="#cecece" style="text-align:left">Test Case Name</th>
`           <th bgcolor="#cecece" style="text-align:left">Start Time</th>
            <th bgcolor="#cecece" style="text-align:left">Test Case duration</th>
            <th bgcolor="#cecece" style="text-align:left">Failure Message</th>
          </tr>
          <xsl:for-each select="testcase">
          <tr>
            <td><xsl:value-of select="@name"/></td>
            <td><xsl:value-of select="@classname"/></td>
            <td><xsl:value-of select="@time"/> seconds</td>
            <td><xsl:value-of select="failure"/></td>
          </tr>
        </xsl:for-each>
        </table>
      </td>
    </tr>
    </xsl:for-each>
  </table><br></br><br></br>
  <span>
    <xsl:value-of select="//system-out"/>
  </span>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
