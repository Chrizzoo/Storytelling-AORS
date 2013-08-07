<!--
    This transformation creates Messages based on a given aorsml file.
    
    $Rev: 125 $
    $Date: 2010-05-01 14:10:17 +0200 (za, 01 mei 2010) $
    
    @author:   Jens Werner (jens.werner@tu-cottbus.de)
    @license:  GNU General Public License version 2 or higher
    @last changed by $Author: jens.werner $
-->

<xsl:transform version="2.0" xmlns:aorsml="http://aor-simulation.org" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:java="http://www.sun.com/java"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xsi:schemaLocation="http://aor-simulation.org aorsml.xsd">

  <xsl:import href="envsim/createMessages.xsl"/>

  <xsl:import href="envevt/createInMessages.xsl"/>
  <xsl:import href="envevt/createOutMessages.xsl"/>


  <xsl:template name="createMessages">
    
    <xsl:apply-templates select="aorsml:SimulationScenario/aorsml:SimulationModel/aorsml:EntityTypes/aorsml:MessageType"
      mode="createMessages.createMessage">
      <xsl:with-param name="indent" select="0"/>
    </xsl:apply-templates>

    <xsl:apply-templates select="aorsml:SimulationScenario/aorsml:SimulationModel/aorsml:EntityTypes/aorsml:InMessageEventType"
      mode="createInMessages.createInMessage">
      <xsl:with-param name="indent" select="0"/>
    </xsl:apply-templates>

    <xsl:apply-templates select="aorsml:SimulationScenario/aorsml:SimulationModel/aorsml:EntityTypes/aorsml:OutMessageEventType"
      mode="createOutMessages.createOutMessage">
      <xsl:with-param name="indent" select="0"/>
    </xsl:apply-templates>
    
  </xsl:template>

</xsl:transform>