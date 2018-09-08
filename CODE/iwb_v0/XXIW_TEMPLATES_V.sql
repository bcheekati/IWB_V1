CREATE OR REPLACE FORCE EDITIONABLE VIEW  "XXIW_TEMPLATES_V" ("TEMPLATE_ID", "TEMPLATE_NAME") AS 
  select template_id, template_name from xxmtl_item_templates
/