<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <sch:pattern>
    <sch:title>Composition.section</sch:title>
    <sch:rule context="f:Composition/f:section">
      <sch:assert test="not(exists(f:emptyReason) and exists(f:entry))">A section can only have an emptyReason if it is empty (inherited</sch:assert>
    </sch:rule>
    <sch:rule context="f:Composition/f:section">
      <sch:assert test="exists(f:text) or exists(f:entry) or exists(f:section)">A section must at least one of text, entries, or sub-sections (inherited</sch:assert>
    </sch:rule>
    </sch:pattern>
</sch:schema>
