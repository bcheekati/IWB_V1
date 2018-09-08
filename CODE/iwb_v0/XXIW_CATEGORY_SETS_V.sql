CREATE OR REPLACE FORCE EDITIONABLE VIEW  "XXIW_CATEGORY_SETS_V" ("CATEGORY_SET_ID", "CONTROL_LEVEL", "STRUCTURE_ID", "CATEGORY_SET_NAME") AS 
  select category_set_id, control_level,structure_id,category_set_name from xxmtl_category_sets
/
