CREATE OR REPLACE FORCE EDITIONABLE VIEW  "XXIW_UNITS_OF_MEASURE_V" ("UOM_CODE", "UNIT_OF_MEASURE") AS 
  select uom_code, unit_of_measure from xxmtl_units_of_measure
/
