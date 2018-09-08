create or replace PACKAGE body XXIW_IR_UTILS_PKG 
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
  g_create VARCHAR2(400):='Record Created Successfully'; 
  g_update VARCHAR2(400):='Record Updated Successfully'; 
  g_delete VARCHAR2(400):='Record Deleted Successfully'; 
  g_copy VARCHAR2(400):='Request Copied Successfully'; 
  g_error  VARCHAR2(400):='Unkown Error, Please contact sysadmin. Error: '; 
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
      x_item_request_id OUT NUMBER) 
  IS 
    l_item_request_id NUMBER;
    l_attribute_group VARCHAR2(100);
	l_request_status VARCHAR2(100);
  BEGIN 
   BEGIN
    SELECT attribute_group INTO l_attribute_group
	FROM XXIW_ATTRIBUTE_ASSOCIATION
	WHERE ITEM_CATEGORY=p_item_category
	AND PURCHASING_CATEGORY=p_purchasing_category
	AND enabled_flag='Yes'
    AND trunc(sysdate) between trunc(nvl(start_date,sysdate)) and trunc(nvl(end_date,sysdate));
	
   EXCEPTION WHEN OTHERS THEN
   l_attribute_group:=NULL;
   END;
   
    
    IF (p_item_request_id IS NULL) THEN 
	
	BEGIN
   SELECT 'Open' into l_request_status FROM dual
WHERE p_enabled_flag = 'Yes' 
AND TRUNC(sysdate) BETWEEN TRUNC(NVL(p_start_date,sysdate)) AND TRUNC(NVL(p_end_date,sysdate)); 
EXCEPTION WHEN OTHERS THEN
   l_request_status:='Close';
   END;

   
      INSERT 
      INTO xxiw_item_requests 
        ( 
          item_request_id, 
          request_description, 
          organization_code, 
          template_name, 
          unit_of_measure, 
          item_category,
		  purchasing_category,
		  attribute_group,
          request_type,		  
          enabled_flag, 
          start_date, 
          end_date,
		  status,
          creation_date, 
          created_by, 
          last_update_date, 
          last_updated_by 
        ) 
        VALUES 
        ( 
          xxiw_item_requests_s.nextval, 
          p_request_desc, 
          p_organization_code, 
          p_template_name, 
          p_unit_of_measure, 
          p_item_category,
		  p_purchasing_category,
		  l_attribute_group,
          p_request_type,		  
          p_enabled_flag, 
          p_start_date, 
          p_end_date , 
		  l_request_status,
          p_creation_date , 
          p_created_by , 
          p_last_update_date , 
          p_last_updated_by 
        ); 
      x_item_request_id:=xxiw_item_requests_s.currval; 
      p_retcode        :=0; 
      p_errbuf         :=g_create; 
    ELSE 
	
	  BEGIN
   SELECT 'Open' into l_request_status FROM dual
    WHERE p_enabled_flag = 'Yes' 
    AND TRUNC(sysdate) BETWEEN TRUNC(NVL(p_start_date,sysdate)) AND TRUNC(NVL(p_end_date,sysdate)); 
    EXCEPTION WHEN OTHERS THEN
   l_request_status:='Close';
   END;
   
      UPDATE xxiw_item_requests 
      SET request_description=p_request_desc, 
        organization_code    =p_organization_code, 
        template_name        =p_template_name, 
        unit_of_measure      =p_unit_of_measure, 
        item_category        =p_item_category,
		purchasing_category  =p_purchasing_category,
		attribute_group      =l_attribute_group,
        request_type         =p_request_type,		
        enabled_flag         =p_enabled_flag, 
        start_date           =p_start_date, 
        end_date             =p_end_date, 
		status               =l_request_status,
        last_update_date     =p_last_update_date, 
        last_updated_by      =p_last_updated_by 
      WHERE item_request_id  =p_item_request_id; 
      p_retcode             :=0; 
      p_errbuf              :=g_update; 
      x_item_request_id     :=p_item_request_id; 
    END IF; 
    IF(p_retcode                                =0) THEN 
      apex_application.g_print_success_message :=p_errbuf; 
    END IF; 
  EXCEPTION 
  WHEN OTHERS THEN 
    p_retcode                                :=2; 
    p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
    apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
  END create_update_item_request; 
   
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
      )
	  IS
	  BEGIN
	  UPDATE xxiw_item_requests 
      SET attribute1=p_attribute1,
	  attribute2=p_attribute2,
	  attribute3=p_attribute3,
	  attribute4=p_attribute4,
	  attribute5=p_attribute5,
	  attribute6=p_attribute6,
	  attribute7=p_attribute7,
	  attribute8=p_attribute8,
	  attribute9=p_attribute9,
	  attribute10=p_attribute10,
      last_update_date     =p_last_update_date, 
      last_updated_by      =p_last_updated_by 
      WHERE item_request_id  =p_item_request_id; 
      p_retcode             :=0; 
      p_errbuf              :=g_update; 
	  IF(p_retcode                                =0) THEN 
      apex_application.g_print_success_message :=p_errbuf; 
    END IF;
	    EXCEPTION 
  WHEN OTHERS THEN 
    p_retcode                                :=2; 
    p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
    apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
  END create_update_long_desc; 
  FUNCTION get_long_desc(p_item_request_id NUMBER)
  RETURN VARCHAR2
  IS
  l_long_desc VARCHAR2(500);
  l_header_id number;
  BEGIN
  
  select header_id into l_header_id
from xxiw_flexfields_headers xfh,
xxiw_item_requests xir
where 1=1
AND xfh.enabled_flag='Yes'
and trunc(sysdate) between trunc(nvl(xfh.start_date,sysdate)) and trunc(nvl(xfh.end_date,sysdate))
and xfh.name=xir.attribute_group
and xir.item_request_id=p_item_request_id;

  select a.attribute1||': '||xir.attribute1||'; '||
a.attribute2||': '||xir.attribute2||'; '||
a.attribute3||': '||xir.attribute3||'; '||
a.attribute4||': '||xir.attribute4||'; '||
a.attribute5||': '||xir.attribute5||'; '||
a.attribute6||': '||xir.attribute6||'; '||
a.attribute7||': '||xir.attribute7||'; '||
a.attribute8||': '||xir.attribute8||'; '||
a.attribute9||': '||xir.attribute9||'; '||
a.attribute10||': '||xir.attribute10||'; '
 description 
 into l_long_desc
 from 
(
SELECT
REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || ',')).extract ('//text()'), ','), '[^,]+', 1, 1)  attribute1,
REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || ',')).extract ('//text()'), ','), '[^,]+', 1, 2)  attribute2,
REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || ',')).extract ('//text()'), ','), '[^,]+', 1, 3)  attribute3,
REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || ',')).extract ('//text()'), ','), '[^,]+', 1, 4)  attribute4,
REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || ',')).extract ('//text()'), ','), '[^,]+', 1, 5)  attribute5,
REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || ',')).extract ('//text()'), ','), '[^,]+', 1, 6)  attribute6,
REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || ',')).extract ('//text()'), ','), '[^,]+', 1, 7)  attribute7,
REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || ',')).extract ('//text()'), ','), '[^,]+', 1, 8)  attribute8,
REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || ',')).extract ('//text()'), ','), '[^,]+', 1, 9)  attribute9,
REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || ',')).extract ('//text()'), ','), '[^,]+', 1, 10)  attribute10
FROM xxiw_flexfields_lines xfl
WHERE 1=1
AND xfl.enabled_flag='Yes'
and trunc(sysdate) between trunc(nvl(xfl.start_date,sysdate)) and trunc(nvl(xfl.end_date,sysdate))
and xfl.header_id=l_header_id
order by to_number(trim(replace(xfl.attribute,'ATTRIBUTE','')))
) a,
xxiw_item_requests xir
where xir.item_request_id=p_item_request_id;

  RETURN substr(l_long_desc,1,instr(l_long_desc,': ;')-1); 
   EXCEPTION 
  WHEN OTHERS THEN 
  RETURN l_long_desc;
  END get_long_desc; 
  PROCEDURE create_update_org_assignments( 
      p_org_assignments xxiw_ir_utils_pkg.org_assignments_type, 
      p_creation_date    DATE, 
      p_created_by       NUMBER , 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2 ) 
  IS 
    l_org_assignments xxiw_ir_utils_pkg.org_assignments_type; 
    l_tab_index NUMBER := p_org_assignments.first; 
  BEGIN 
    l_org_assignments := p_org_assignments; 
    WHILE l_tab_index <= l_org_assignments.last 
    LOOP 
      IF (l_org_assignments(l_tab_index).org_assinment_id IS NULL) THEN 
        INSERT 
        INTO xxiw_org_assignments 
          ( 
            org_assinment_id , 
            item_request_id , 
            organization_code , 
            organization_id , 
            template_name , 
            template_id , 
            enabled_flag , 
            start_date , 
            end_date , 
            creation_date , 
            created_by , 
            last_updated_by , 
            last_update_date 
          ) 
          VALUES 
          ( 
            xxiw_org_assignments_s.nextval, 
            p_org_assignments(l_tab_index).item_request_id, 
            p_org_assignments(l_tab_index).organization_code, 
            p_org_assignments(l_tab_index).organization_id, 
            p_org_assignments(l_tab_index).template_name, 
            p_org_assignments(l_tab_index).template_id, 
            p_org_assignments(l_tab_index).enabled_flag, 
            p_org_assignments(l_tab_index).start_date, 
            p_org_assignments(l_tab_index).end_date, 
            p_creation_date, 
            p_created_by, 
            p_last_updated_by, 
            p_last_update_date 
          ); 
		  p_retcode:=0;
		p_errbuf:=g_create;
      ELSE 
        UPDATE xxiw_org_assignments 
        SET item_request_id    =p_org_assignments(l_tab_index).item_request_id, 
          organization_code    =p_org_assignments(l_tab_index).organization_code, 
          organization_id      =p_org_assignments(l_tab_index).organization_id, 
          template_name        =p_org_assignments(l_tab_index).template_name, 
          template_id          =p_org_assignments(l_tab_index).template_id, 
          enabled_flag         =p_org_assignments(l_tab_index).enabled_flag, 
          end_date             =p_org_assignments(l_tab_index).end_date, 
          last_updated_by      =p_last_updated_by, 
          last_update_date     =sysdate 
        WHERE org_assinment_id =p_org_assignments(l_tab_index).org_assinment_id;
        p_retcode:=0;
		p_errbuf:=g_update;
      END IF; 
      l_tab_index := l_tab_index + 1; 
    END LOOP; 
    IF(p_retcode                                =0) THEN 
      apex_application.g_print_success_message :=p_errbuf; 
    END IF; 
    COMMIT; 
  EXCEPTION 
  WHEN OTHERS THEN 
    p_retcode                                :=2; 
    p_errbuf                                 :=g_error||SUBSTR (' Error at create_update_org_assignments '||sqlerrm, 1, 250); 
    apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
  END create_update_org_assignments; 
  PROCEDURE create_update_categories( 
      p_categories xxiw_ir_utils_pkg.ir_categories_type, 
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2) 
  IS 
    l_categories xxiw_ir_utils_pkg.ir_categories_type; 
    l_tab_index NUMBER := p_categories.first; 
  BEGIN 
    l_categories      := p_categories; 
    WHILE l_tab_index <= l_categories.last 
    LOOP 
      IF (l_categories(l_tab_index).ir_category_id IS NULL) THEN 
        INSERT 
        INTO xxiw_ir_categories 
          ( 
            ir_category_id , 
            seq_number, 
			organization_code,
			category_set_name,
            category_name, 
            item_request_id, 
            enabled_flag, 
            start_date , 
            end_date , 
            creation_date , 
            created_by , 
            last_updated_by , 
            last_update_date 
          ) 
          VALUES 
          ( 
            xxiw_ir_categories_s.nextval, 
            p_categories(l_tab_index).seq_number, 
			p_categories(l_tab_index).organization_code,
			p_categories(l_tab_index).category_set_name,
            p_categories(l_tab_index).category_name, 
            p_categories(l_tab_index).item_request_id, 
            p_categories(l_tab_index).enabled_flag , 
            p_categories(l_tab_index).start_date , 
            p_categories(l_tab_index).end_date , 
            p_creation_date , 
            p_created_by , 
            p_last_updated_by , 
            p_last_update_date 
          ); 
        p_retcode :=0; 
        p_errbuf  :=g_create; 
      ELSE 
        UPDATE xxiw_ir_categories 
        SET seq_number       =p_categories(l_tab_index).seq_number, 
		  organization_code  =p_categories(l_tab_index).organization_code, 
		  category_set_name  =p_categories(l_tab_index).category_set_name, 
          category_name      =p_categories(l_tab_index).category_name, 
          item_request_id    =p_categories(l_tab_index).item_request_id , 
          enabled_flag       =p_categories(l_tab_index).enabled_flag , 
          start_date         = p_categories(l_tab_index).start_date , 
          end_date           =p_categories(l_tab_index).end_date, 
          last_updated_by    =p_last_updated_by , 
          last_update_date   =sysdate 
        WHERE ir_category_id =p_categories(l_tab_index).ir_category_id; 
		p_retcode :=0; 
        p_errbuf  :=g_update; 
      END IF; 
      l_tab_index := l_tab_index + 1; 
    END LOOP; 
    IF(p_retcode                                =0) THEN 
      apex_application.g_print_success_message :=p_errbuf; 
    END IF; 
    COMMIT; 
  EXCEPTION 
  WHEN OTHERS THEN 
    p_retcode                                :=2; 
    p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
    apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
  END create_update_categories; 
  PROCEDURE create_update_mpns( 
      p_mpns xxiw_ir_utils_pkg.ir_mpns_type, 
      p_creation_date    DATE, 
      p_created_by       NUMBER , 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2) 
  IS 
    l_mpns xxiw_ir_utils_pkg.ir_mpns_type; 
    l_tab_index NUMBER := p_mpns.first; 
  BEGIN 
    l_mpns            := p_mpns; 
    WHILE l_tab_index <= l_mpns.last 
    LOOP 
      IF (l_mpns(l_tab_index).ir_mpn_id IS NULL) THEN 
        INSERT 
        INTO xxiw_ir_mpns 
          ( 
            ir_mpn_id, 
            seq_number, 
            mpn_name, 
            manufacture_name, 
            item_request_id, 
            enabled_flag, 
            start_date , 
            end_date , 
            creation_date , 
            created_by , 
            last_updated_by , 
            last_update_date 
          ) 
          VALUES 
          ( 
            xxiw_ir_mpns_s.nextval, 
            p_mpns(l_tab_index).seq_number, 
            p_mpns(l_tab_index).mpn_name, 
            p_mpns(l_tab_index).manufacture_name, 
            p_mpns(l_tab_index).item_request_id, 
            p_mpns(l_tab_index).enabled_flag , 
            p_mpns(l_tab_index).start_date , 
            p_mpns(l_tab_index).end_date , 
            p_creation_date , 
            p_created_by , 
            p_last_updated_by , 
            p_last_update_date 
          ); 
        p_retcode :=0; 
        p_errbuf  :=g_create; 
      ELSE 
        UPDATE xxiw_ir_mpns 
        SET seq_number     = p_mpns(l_tab_index).seq_number, 
          mpn_name         =p_mpns(l_tab_index).mpn_name, 
          manufacture_name =p_mpns(l_tab_index).manufacture_name, 
          item_request_id  =p_mpns(l_tab_index).item_request_id , 
          enabled_flag     = p_mpns(l_tab_index).enabled_flag , 
          start_date       =p_mpns(l_tab_index).start_date , 
          end_date         =p_mpns(l_tab_index).end_date , 
          last_updated_by  =p_last_updated_by , 
          last_update_date =sysdate 
        WHERE ir_mpn_id    =p_mpns(l_tab_index).ir_mpn_id; 
      END IF; 
      l_tab_index := l_tab_index + 1; 
    END LOOP; 
    IF(p_retcode                                =0) THEN 
      apex_application.g_print_success_message :=p_errbuf; 
    END IF; 
    COMMIT; 
  EXCEPTION 
  WHEN OTHERS THEN 
    p_retcode                                :=2; 
    p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
    apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
  END create_update_mpns; 
  PROCEDURE create_update_comments( 
      p_ir_comment_id NUMBER,
      p_item_request_id  NUMBER, 
      p_comments         VARCHAR2,
      p_creation_date    DATE, 
      p_created_by       NUMBER , 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2 )
  IS 
  BEGIN 
  
    IF (p_ir_comment_id IS NULL) THEN 
      INSERT 
      INTO xxiw_ir_comments 
        ( 
          ir_comment_id, 
          item_request_id, 
          comments, 
          creation_date, 
          created_by, 
          last_update_date, 
          last_updated_by 
        ) 
        VALUES 
        ( 
          xxiw_ir_comments_s.nextval, 
          p_item_request_id, 
          p_comments, 
          p_creation_date , 
          p_created_by , 
          p_last_update_date , 
          p_last_updated_by 
        ); 
      p_retcode        :=0; 
      p_errbuf         :=g_create; 
    ELSE 
      UPDATE xxiw_ir_comments 
      SET comments=p_comments, 
        last_update_date     =p_last_update_date, 
        last_updated_by      =p_last_updated_by 
      WHERE IR_COMMENT_ID  =p_ir_comment_id; 
      p_retcode             :=0; 
      p_errbuf              :=g_update; 
    END IF; 
    IF(p_retcode                                =0) THEN 
      apex_application.g_print_success_message :=p_errbuf; 
    END IF; 
  EXCEPTION 
  WHEN OTHERS THEN 
    p_retcode                                :=2; 
    p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
    apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
  END create_update_comments;
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
      p_errbuf  IN OUT VARCHAR2 )
  IS 
  BEGIN 
  
    IF (p_ir_approval_id IS NULL) THEN 
	  UPDATE xxiw_ir_approvals 
      SET enabled_flag='No',
        last_update_date     =p_last_update_date, 
        last_updated_by      =p_last_updated_by 
      WHERE item_request_id  =p_item_request_id;
      INSERT 
      INTO xxiw_ir_approvals 
        ( 
          ir_approval_id, 
          item_request_id, 
		  approver_name,
		  subject,
          comments, 
		  status,
		  enabled_flag,
          creation_date, 
          created_by, 
          last_update_date, 
          last_updated_by 
        ) 
        VALUES 
        ( 
          xxiw_ir_approvals_s.nextval, 
          p_item_request_id, 
		  p_approver_name,
		  'Request :'||p_item_request_id||'-'||DECODE(UPPER(p_status),UPPER('APPROVE_FORWARD'),'Pending Approval',
		                                  UPPER('SENT_FOR_APPROVAL'),'Pending Approval',
		                                  UPPER('APPROVED'),'Pending Production',
										  UPPER('REQUEST_INFO'),'Request More Info',
										  UPPER('REJECTED'),'Rejected',
										  UPPER('WITHDRAWN'),'Withdrawn'),
          p_comments, 
		  p_status,
		  'Yes',
          p_creation_date,
          p_created_by,
          p_last_update_date, 
          p_last_updated_by 
        ); 
	  
	  /*update xxiw_item_requests
	    set status='Pending Approval'
		where item_request_id =p_item_request_id;
	 */
	  update xxiw_item_requests
	    set status=DECODE(UPPER(p_status),UPPER('SENT_FOR_APPROVAL'),'Pending Approval',
		                                  UPPER('APPROVE_FORWARD'),'Pending Approval',
		                                  UPPER('APPROVED'),'Pending Production',
										  UPPER('REQUEST_INFO'),'Request More Info',
										  UPPER('REJECTED'),'Rejected',
										  UPPER('WITHDRAWN'),'Withdrawn'),
		    status_flag=DECODE(UPPER(p_status),UPPER('APPROVED'),'NEW')
		where item_request_id =p_item_request_id;
      p_retcode        :=0; 
      p_errbuf         :='Request Submitted Successfully'; 
    ELSE 
      UPDATE xxiw_ir_approvals 
      SET status=p_status,
        last_update_date     =p_last_update_date, 
        last_updated_by      =p_last_updated_by 
      WHERE ir_approval_id  =p_ir_approval_id; 
	  
	  if(UPPER(p_status) IN (UPPER('APPROVED'),UPPER('REJECTED'),UPPER('WITHDRAWN'))) THEN
	  update xxiw_item_requests
	    set status=DECODE(UPPER(p_status),UPPER('APPROVED'),'Pending Production',UPPER('REJECTED'),'Rejected',UPPER('WITHDRAWN'),'Withdrawn'),
		    status_flag=DECODE(UPPER(p_status),UPPER('APPROVED'),'NEW')
		where item_request_id =p_item_request_id;
	  end if;
		
      p_retcode             :=0; 
      p_errbuf              :=g_update; 
    END IF; 
    IF(p_retcode                                =0) THEN 
      apex_application.g_print_success_message :=p_errbuf; 
    END IF; 
  EXCEPTION 
  WHEN OTHERS THEN 
    p_retcode                                :=2; 
    p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
    apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
  END create_update_approvals;
PROCEDURE copy_item_request(
      p_old_item_request_id IN NUMBER,
      p_creation_date     DATE, 
      p_created_by        NUMBER, 
      p_last_update_date  DATE, 
      p_last_updated_by   NUMBER, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2, 
      x_item_request_id OUT NUMBER)
 IS
 BEGIN
 --copy item request
 INSERT 
      INTO xxiw_item_requests 
        ( 
          item_request_id, 
          request_description, 
          organization_code, 
          template_name, 
          unit_of_measure, 
          item_category,
		  purchasing_category,
		  attribute_group,
          request_type,		  
          enabled_flag, 
          start_date, 
          end_date,
		  status,
          creation_date, 
          created_by, 
          last_update_date, 
          last_updated_by ,
		  attribute1,
attribute2,
attribute3,
attribute4,
attribute5,
attribute6,
attribute7,
attribute8,
attribute9,
attribute10,
attribute11,
attribute12,
attribute13,
attribute14,
attribute15
        ) 
        
        ( 
SELECT xxiw_item_requests_s.nextval,
request_description||' - COPY',
organization_code,
template_name,
unit_of_measure,
item_category,
purchasing_category,
attribute_group,
'New',
'Yes',
sysdate,
null,
'Open',
p_creation_date,
p_created_by,
p_last_update_date,
p_last_updated_by,
attribute1,
attribute2,
attribute3,
attribute4,
attribute5,
attribute6,
attribute7,
attribute8,
attribute9,
attribute10,
attribute11,
attribute12,
attribute13,
attribute14,
attribute15
FROM xxiw_item_requests 
WHERE item_request_id=p_old_item_request_id
); 
      x_item_request_id:=xxiw_item_requests_s.currval; 
     
 --copy organizations
 INSERT 
        INTO xxiw_org_assignments 
          ( 
            org_assinment_id , 
            item_request_id , 
            organization_code , 
            organization_id , 
            template_name , 
            template_id , 
            enabled_flag , 
            start_date , 
            end_date , 
            creation_date , 
            created_by , 
            last_updated_by , 
            last_update_date 
          ) 
		  (
		  select 
xxiw_org_assignments_s.nextval,
x_item_request_id,
organization_code,
organization_id,
template_name,
template_id,
'Yes',
sysdate,
null,
p_creation_date,
p_created_by,
p_last_updated_by,
p_last_update_date
from xxiw_org_assignments
WHERE item_request_id=p_old_item_request_id
		  );

 --copy categories
 INSERT 
        INTO xxiw_ir_categories 
          ( 
            ir_category_id , 
            seq_number, 
            category_name, 
            item_request_id, 
            enabled_flag, 
            start_date , 
            end_date , 
            creation_date , 
            created_by , 
            last_updated_by , 
            last_update_date 
          ) 
		  (
		  select 
		  xxiw_ir_categories_s.nextval,
seq_number,
category_name,
x_item_request_id,
'Yes',
sysdate,
null,
p_creation_date,
p_created_by,
p_last_updated_by,
p_last_update_date
from xxiw_ir_categories
WHERE item_request_id=p_old_item_request_id
);		  
 --copy mpns 
 INSERT INTO xxiw_ir_mpns 
          ( 
            ir_mpn_id, 
            seq_number, 
            mpn_name, 
            manufacture_name, 
            item_request_id, 
            enabled_flag, 
            start_date , 
            end_date , 
            creation_date , 
            created_by , 
            last_updated_by , 
            last_update_date 
          ) 
	(select 
xxiw_ir_mpns_s.nextval, 
            seq_number, 
            mpn_name, 
            manufacture_name, 
            x_item_request_id, 
            'Yes', 
            sysdate , 
            null , 
            p_creation_date , 
            p_created_by , 
            p_last_updated_by , 
            p_last_update_date 
 from xxiw_ir_mpns
 WHERE item_request_id=p_old_item_request_id
	);
 --copy attachments
 INSERT
 INTO xxiw_ir_attachments 
          ( 
            ir_attachment_id,
item_request_id,
filename,
file_mimetype,
file_charset,
file_blob,
file_comments,
enabled_flag,
creation_date,
created_by,
last_updated_by,
last_update_date 
          ) 
	(select xxiw_ir_attachments_s.nextval,
x_item_request_id,
filename,
file_mimetype,
file_charset,
file_blob,
file_comments,
'Yes',
p_creation_date,
p_created_by,
p_last_updated_by,
p_last_update_date 
from xxiw_ir_attachments
 WHERE item_request_id=p_old_item_request_id
	);
  p_retcode        :=0; 
  p_errbuf         :=g_copy; 
 COMMIT;
 EXCEPTION 
 WHEN OTHERS THEN
   ROLLBACK; 
   p_retcode                                :=2; 
   p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
   apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
 END copy_item_request;
END ; 
