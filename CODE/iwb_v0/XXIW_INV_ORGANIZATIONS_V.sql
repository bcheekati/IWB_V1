CREATE OR REPLACE FORCE EDITIONABLE VIEW  "XXIW_INV_ORGANIZATIONS_V" ("ORGANIZATION_ID", "ORGANIZATION_CODE", "MASTER_ORGANIZATION_ID") AS 
  select organization_id, organization_code, master_organization_id from xxmtl_parameters
/