create or replace PACKAGE xxiw_ir_utils_pkg 
AS 
  /***************************************************************************** 
  * 
  * Filename:       xxiw_ir_utils_pkg.pks 
  * Version:        1.0 
  * Author:         bmaddha 
  * Creation Date:  15-DEC-2017 
  * 
  * Change History: 
  * 
  * Who             When           Version  Change (include Bug# if apply) 
  * ----------      -----------    -------  ------------------------------ 
  * bmaddha       15-DEC-2017    1.0      Initial Creation 
  * 
  * DESCRIPTION:    Item Work Bench Item Request util package 
  * 
  ****************************************************************************/ 
  PROCEDURE create_update_item_request( 
      p_item_request_id   NUMBER, 
      p_request_desc      VARCHAR2, 
      p_organization_code VARCHAR2, 
      p_template_name     VARCHAR2, 
      p_unit_of_measure   VARCHAR2, 
      p_item_category     VARCHAR2,
	  p_purchasing_category     VARCHAR2,
      p_request_type      VARCHAR2,	  
      p_enabled_flag      VARCHAR2, 
      p_start_date        DATE, 
      p_end_date          DATE, 
      p_creation_date     DATE, 
      p_created_by        NUMBER, 
      p_last_update_date  DATE, 
      p_last_updated_by   NUMBER, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2, 
      x_item_request_id OUT NUMBER); 
  PROCEDURE create_update_long_desc( 
      p_item_request_id   NUMBER, 
      p_attribute1      VARCHAR2,
	  p_attribute2      VARCHAR2, 
	  p_attribute3      VARCHAR2, 
	  p_attribute4      VARCHAR2, 
	  p_attribute5      VARCHAR2, 
	  p_attribute6      VARCHAR2, 
	  p_attribute7      VARCHAR2, 
	  p_attribute8      VARCHAR2, 
	  p_attribute9      VARCHAR2, 
	  p_attribute10     VARCHAR2,      
      p_creation_date     DATE, 
      p_created_by        NUMBER, 
      p_last_update_date  DATE, 
      p_last_updated_by   NUMBER, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2
      ); 
FUNCTION get_long_desc(p_item_request_id NUMBER)
RETURN VARCHAR2;
type org_assignments_type 
IS 
  TABLE OF xxiw_org_assignments%rowtype INDEX BY binary_integer; 
  PROCEDURE create_update_org_assignments( 
      p_org_assignments xxiw_ir_utils_pkg.org_assignments_type, 
      p_creation_date    DATE, 
      p_created_by       NUMBER , 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2); 
type ir_categories_type 
IS 
  TABLE OF xxiw_ir_categories%rowtype INDEX BY binary_integer; 
  PROCEDURE create_update_categories( 
      p_categories xxiw_ir_utils_pkg.ir_categories_type, 
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2 ); 
type ir_mpns_type 
IS 
  TABLE OF xxiw_ir_mpns%rowtype INDEX BY binary_integer; 
  PROCEDURE create_update_mpns( 
      p_mpns xxiw_ir_utils_pkg.ir_mpns_type, 
      p_creation_date    DATE, 
      p_created_by       NUMBER , 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2 );
  PROCEDURE create_update_comments( 
      p_ir_comment_id NUMBER,
      p_item_request_id  NUMBER, 
      p_comments         VARCHAR2,
      p_creation_date    DATE, 
      p_created_by       NUMBER , 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2 ); 	  
PROCEDURE create_update_approvals( 
      p_ir_approval_id NUMBER,
      p_item_request_id  NUMBER,
 	  p_approver_name    VARCHAR2,
      p_comments         VARCHAR2,
	  p_status           VARCHAR2,
      p_creation_date    DATE, 
      p_created_by       NUMBER , 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2 ); 
  PROCEDURE copy_item_request(
      p_old_item_request_id IN NUMBER,
      p_creation_date     DATE, 
      p_created_by        NUMBER, 
      p_last_update_date  DATE, 
      p_last_updated_by   NUMBER, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2, 
      x_item_request_id OUT NUMBER); 	  
END XXIW_IR_UTILS_PKG; 
 
