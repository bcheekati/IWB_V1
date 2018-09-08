CREATE OR REPLACE FORCE EDITIONABLE VIEW  "XXIW_MST_ORGANIZATIONS_V" ("ORGANIZATION_ID", "ORGANIZATION_CODE") AS 
  select organization_id, organization_code from xxmtl_parameters
where master_organization_id=organization_id
/