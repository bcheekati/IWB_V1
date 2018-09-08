create or replace PACKAGE xxiw_admin_util_pkg 
AS 
  /***************************************************************************** 
  * 
  * Filename:       xxiw_admin_util_pkg.pks 
  * Version:        1.0 
  * Author:         bcheekati 
  * Creation Date:  30-JUN-2016 
  * 
  * Change History: 
  * 
  * Who             When           Version  Change (include Bug# if apply) 
  * ----------      -----------    -------  ------------------------------ 
  * bcheekati       30-JUN-2016    1.0      Initial Creation 
  * 
  * DESCRIPTION:    code deployer admin util package 
  * 
  ****************************************************************************/ 
  FUNCTION get_default_date 
    RETURN DATE; 
  FUNCTION get_userid( 
      p_user_name VARCHAR2) 
    RETURN NUMBER; 
  FUNCTION get_flexfield_status( 
      p_short_name VARCHAR2) 
    RETURN VARCHAR2; 
FUNCTION authenticate(p_username IN VARCHAR2
                      ,p_password IN VARCHAR2)
 RETURN BOOLEAN;
  --table type variable to store the details of the instances for a particular release 
type flexfields_lines_type 
IS 
  TABLE OF xxiw_flexfields_lines%rowtype INDEX BY binary_integer; 
  PROCEDURE create_update_flexfield( 
      p_header_id    NUMBER, 
      p_short_name   VARCHAR2, 
      p_name         VARCHAR2, 
      p_description  VARCHAR2, 
      p_enabled_flag VARCHAR2, 
      p_start_date   DATE, 
      p_end_date     DATE, 
      p_flexfields_lines xxiw_admin_util_pkg.flexfields_lines_type, 
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_update_date DATE, 
      p_last_updated_by  NUMBER, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2); 
  FUNCTION get_lookup_status( 
      p_lookup_type VARCHAR2) 
    RETURN VARCHAR2; 
  --table type variable to store the details of the instances for a particular release 
type lookup_values_type 
IS 
  TABLE OF xxiw_lookup_values%rowtype INDEX BY binary_integer; 
  PROCEDURE create_update_lookup( 
      p_lookup_type_id NUMBER, 
      p_lookup_type    VARCHAR2, 
      p_name           VARCHAR2, 
      p_description    VARCHAR2, 
      p_enabled_flag   VARCHAR2, 
      p_start_date     DATE, 
      p_end_date       DATE, 
      p_lookup_values xxiw_admin_util_pkg.lookup_values_type, 
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_update_date DATE, 
      p_last_updated_by  NUMBER, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2); 
  FUNCTION get_approvalgrp_status( 
      p_group_short_name VARCHAR2) 
    RETURN VARCHAR2; 
  --table type variable to store the details of the instances for a particular release 
type approvalgrp_lines_type 
IS 
  TABLE OF xxiw_approvalgrp_lines%rowtype INDEX BY binary_integer; 
  PROCEDURE create_update_approvalgroup( 
      p_group_id         NUMBER, 
      p_group_short_name VARCHAR2, 
      p_group_name       VARCHAR2, 
      p_description      VARCHAR2, 
      p_enabled_flag     VARCHAR2, 
      p_start_date       DATE, 
      p_end_date         DATE, 
      p_approvalgrp_lines xxiw_admin_util_pkg.approvalgrp_lines_type, 
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_update_date DATE, 
      p_last_updated_by  NUMBER, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2); 
type attribute_association_type 
IS 
  TABLE OF xxiw_attribute_association%rowtype INDEX BY binary_integer; 
  PROCEDURE create_update_attribute( 
      p_attribute_association xxiw_admin_util_pkg.attribute_association_type, 
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_update_date DATE, 
      p_last_updated_by  NUMBER, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2); 
type admin_user_type 
IS 
  TABLE OF xxiw_admin_user%rowtype INDEX BY binary_integer; 
  PROCEDURE create_update_admins( 
      p_admin_user xxiw_admin_util_pkg.admin_user_type, 
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_update_date DATE, 
      p_last_updated_by  NUMBER, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2); 
  PROCEDURE create_update_setup( 
      p_setup_id number, 
	  p_master_org_code varchar2,
	  p_default_flag varchar2,
	  p_prefix varchar2,
	  p_description_selection varchar2,
	  p_category1_name varchar2,
	  p_category2_name varchar2,
	  p_enabled_flag varchar2,
	  p_start_date date,
	  p_end_date date,
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_update_date DATE, 
      p_last_updated_by  NUMBER, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2,
	  x_setup_id OUT number);
type ir_template_setups_type 
IS 
  TABLE OF xxiw_ir_template_setups%rowtype INDEX BY binary_integer; 
  PROCEDURE create_update_template_setups( 
      p_template_setups xxiw_admin_util_pkg.ir_template_setups_type,
      p_template_enabled VARCHAR2,	
      p_setup_id	  NUMBER,
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2 ); 
type ir_categories_setups_type 
IS 
  TABLE OF xxiw_ir_categories_setups%rowtype INDEX BY binary_integer; 
  PROCEDURE create_update_category_setups( 
      p_category_setups xxiw_admin_util_pkg.ir_categories_setups_type,
      p_category_enabled VARCHAR2,
      p_setup_id	  NUMBER,
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2 ); 
type ir_uom_setups_type 
IS 
  TABLE OF xxiw_ir_uom_setups%rowtype INDEX BY binary_integer; 
  PROCEDURE create_update_uom_setups( 
      p_uom_setups xxiw_admin_util_pkg.ir_uom_setups_type,
      p_uom_enabled VARCHAR2,	
      p_setup_id	  NUMBER,
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2 ); 
FUNCTION get_setup_status( 
      p_setup_id NUMBER) 
    RETURN VARCHAR2; 
END XXIW_ADMIN_UTIL_PKG; 
