CREATE OR REPLACE FORCE EDITIONABLE VIEW  "XXIW_CATEGORIES_V" ("CATEGORY_ID", "DESCRIPTION", "CATEGORY_TYPE") AS 
  select category_id ,
description ,
category_type from xxmtl_item_categories
/
