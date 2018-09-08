create or replace PACKAGE body xxiw_admin_util_pkg 
	AS 
	  /***************************************************************************** 
	  * 
	  * Filename:       xxiw_admin_util_pkg.pkb 
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
	  g_create VARCHAR2(400):='Record Created Successfully'; 
	  g_update VARCHAR2(400):='Record Updated Successfully'; 
	  g_delete VARCHAR2(400):='Record Deleted Successfully'; 
	  g_error  VARCHAR2(400):='Unkown Error, Please contact sysadmin. Error: '; 
	  FUNCTION get_default_date 
		RETURN DATE 
	  IS 
	  BEGIN 
		RETURN sysdate; 
	  END get_default_date; 
	--get user id 
	  FUNCTION get_userid( 
		  p_user_name VARCHAR2) 
		RETURN NUMBER 
	  IS 
		l_user_id NUMBER; 
	  BEGIN 
		
		SELECT user_id 
		INTO l_user_id 
		FROM xxiw_users_v 
		WHERE upper(user_name)=upper(p_user_name); 
	-- select xxiw_admin_util_pkg.get_userid('USER1') from dual;
		
		RETURN (l_user_id); 
	  EXCEPTION 
	  WHEN OTHERS THEN 
		l_user_id:=-1; 
		RETURN (l_user_id); 
	  END get_userid; 
	  FUNCTION get_flexfield_status( 
		  p_short_name VARCHAR2) 
		RETURN VARCHAR2 
	  IS 
		l_flexfield_status VARCHAR2(100); 
		l_header_count     NUMBER; 
	  BEGIN 
		SELECT COUNT(xfh.header_id) 
		INTO l_header_count 
		FROM xxiw_flexfields_headers xfh 
		WHERE upper(xfh.short_name)=upper(p_short_name) 
		AND enabled_flag           ='Yes' 
		AND TRUNC(sysdate) BETWEEN TRUNC(NVL(start_date,sysdate)) AND TRUNC(NVL(end_date,sysdate)); 
		IF(l_header_count    >0) THEN 
		  l_flexfield_status:='Active'; 
		ELSE 
		  l_flexfield_status:='In-Active'; 
		END IF; 
		RETURN (l_flexfield_status); 
	  EXCEPTION 
	  WHEN OTHERS THEN 
		l_flexfield_status:='In-Active'; 
		RETURN (l_flexfield_status);
 
	  END get_flexfield_status; 
	  
	  FUNCTION authenticate(p_username IN VARCHAR2
                      ,p_password IN VARCHAR2)
 RETURN BOOLEAN
 IS
 l_user_count number;
 BEGIN
 SELECT COUNT(1) INTO l_user_count
 from xxfnd_users
 where user_name=upper(p_username)
   and password=upper(p_password);
   if(l_user_count=1) then   
   RETURN TRUE;
   else
   return false;
   end if;
    EXCEPTION
      WHEN OTHERS THEN
	  RETURN FALSE;
 END authenticate;
	--create or update workflows 
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
		  p_errbuf  IN OUT VARCHAR2) 
	  IS 
		l_flexfields_lines xxiw_admin_util_pkg.flexfields_lines_type; 
		l_header_id NUMBER; 
		l_tab_index NUMBER := p_flexfields_lines.first; 
	  BEGIN 
		IF (p_header_id IS NULL) THEN 
		  INSERT 
		  INTO xxiw_flexfields_headers 
			( 
			  header_id, 
			  short_name, 
			  name, 
			  description, 
			  enabled_flag, 
			  start_date, 
			  end_date, 
			  creation_date, 
			  created_by, 
			  last_update_date, 
			  last_updated_by 
			) 
			VALUES 
			( 
			  xxiw_flexfields_headers_s.nextval, 
			  p_short_name, 
			  p_name, 
			  p_description, 
			  p_enabled_flag, 
			  p_start_date, 
			  p_end_date, 
			  p_creation_date, 
			  p_created_by, 
			  p_last_update_date, 
			  p_last_updated_by 
			); 
		  p_retcode  :=0; 
		  p_errbuf   :=g_create; 
		  l_header_id:=xxiw_flexfields_headers_s.currval; 
		ELSE 
		  UPDATE xxiw_flexfields_headers 
		  SET short_name     =p_short_name, 
			name             =p_name, 
			description      =p_description, 
			enabled_flag     =p_enabled_flag, 
			start_date       =p_start_date, 
			end_date         =p_end_date, 
			last_update_date =p_last_update_date, 
			last_updated_by  =p_last_updated_by 
		  WHERE header_id    =p_header_id; 
		  p_retcode         :=0; 
		  p_errbuf          :=g_update; 
		  l_header_id       :=p_header_id; 
		END IF; 
		IF(l_header_id       IS NOT NULL) THEN 
		  l_flexfields_lines := p_flexfields_lines; 
		  WHILE l_tab_index  <= l_flexfields_lines.last 
		  LOOP 
			IF (l_flexfields_lines(l_tab_index).line_id IS NULL) THEN 
			  INSERT 
			  INTO xxiw_flexfields_lines 
				( 
				  line_id, 
				  header_id, 
				  seq_number, 
				  attribute, 
				  meaning, 
				  description, 
				  enabled_flag, 
				  start_date, 
				  end_date, 
				  creation_date, 
				  created_by, 
				  last_update_date, 
				  last_updated_by 
				) 
				VALUES 
				( 
				  xxiw_flexfields_lines_s.nextval, 
				  l_header_id, 
				  p_flexfields_lines(l_tab_index).seq_number, 
				  p_flexfields_lines(l_tab_index).attribute, 
				  p_flexfields_lines(l_tab_index).meaning, 
				  p_flexfields_lines(l_tab_index).description, 
				  p_flexfields_lines(l_tab_index).enabled_flag, 
				  p_flexfields_lines(l_tab_index).start_date, 
				  p_flexfields_lines(l_tab_index).end_date, 
				  p_creation_date, 
				  p_created_by, 
				  p_last_update_date, 
				  p_last_updated_by 
				); 
			ELSE 
			  UPDATE xxiw_flexfields_lines 
			  SET seq_number     =p_flexfields_lines(l_tab_index).seq_number, 
				attribute        =p_flexfields_lines(l_tab_index).attribute, 
				header_id        =l_header_id, 
				meaning          =p_flexfields_lines(l_tab_index).meaning, 
				description      =p_flexfields_lines(l_tab_index).description, 
				enabled_flag     =p_flexfields_lines(l_tab_index).enabled_flag, 
				start_date       =p_flexfields_lines(l_tab_index).start_date, 
				end_date         =p_flexfields_lines(l_tab_index).end_date, 
				last_update_date =sysdate, 
				last_updated_by  =p_last_updated_by 
			  WHERE line_id      =p_flexfields_lines(l_tab_index).line_id; 
			END IF; 
			l_tab_index := l_tab_index + 1; 
		  END LOOP; 
		END IF; 
		IF(p_retcode                                =0) THEN 
		  apex_application.g_print_success_message :=p_errbuf; 
		END IF; 
	  EXCEPTION 
	  WHEN OTHERS THEN 
		p_retcode                                :=2; 
		p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
		apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
	  END create_update_flexfield; 
	  FUNCTION get_lookup_status( 
		  p_lookup_type VARCHAR2) 
		RETURN VARCHAR2 
	  IS 
		l_lookup_status     VARCHAR2(100); 
		l_lookup_type_count NUMBER; 
	  BEGIN 
		SELECT COUNT(xlt.lookup_type_id) 
		INTO l_lookup_type_count 
		FROM xxiw_lookup_types xlt 
		WHERE upper(xlt.lookup_type)=upper(p_lookup_type) 
		AND enabled_flag            ='Yes' 
		AND TRUNC(sysdate) BETWEEN TRUNC(NVL(start_date,sysdate)) AND TRUNC(NVL(end_date,sysdate)); 
		IF(l_lookup_type_count >0) THEN 
		  l_lookup_status     :='Active'; 
		ELSE 
		  l_lookup_status:='In-Active'; 
		END IF; 
		RETURN (l_lookup_status); 
	  EXCEPTION 
	  WHEN OTHERS THEN 
		l_lookup_status:='In-Active'; 
		RETURN (l_lookup_status); 
	  END get_lookup_status; 
	--create or update workflows 
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
		  p_errbuf  IN OUT VARCHAR2) 
	  IS 
		l_lookup_values xxiw_admin_util_pkg.lookup_values_type; 
		l_lookup_type_id NUMBER; 
		l_tab_index      NUMBER := p_lookup_values.first; 
	  BEGIN 
		IF (p_lookup_type_id IS NULL) THEN 
		  INSERT 
		  INTO xxiw_lookup_types 
			( 
			  lookup_type_id, 
			  lookup_type, 
			  name, 
			  description, 
			  enabled_flag, 
			  start_date, 
			  end_date, 
			  creation_date, 
			  created_by, 
			  last_update_date, 
			  last_updated_by 
			) 
			VALUES 
			( 
			  xxiw_lookup_types_s.nextval, 
			  p_lookup_type, 
			  p_name, 
			  p_description, 
			  p_enabled_flag, 
			  p_start_date, 
			  p_end_date, 
			  p_creation_date, 
			  p_created_by, 
			  p_last_update_date, 
			  p_last_updated_by 
			); 
		  p_retcode       :=0; 
		  p_errbuf        :=g_create; 
		  l_lookup_type_id:= xxiw_lookup_types_s.currval; 
		ELSE 
		  UPDATE xxiw_lookup_types 
		  SET lookup_type      =p_lookup_type, 
			name               =p_name, 
			description        =p_description, 
			enabled_flag       =p_enabled_flag, 
			start_date         =p_start_date, 
			end_date           =p_end_date, 
			last_update_date   =p_last_update_date, 
			last_updated_by    =p_last_updated_by 
		  WHERE lookup_type_id =p_lookup_type_id; 
		  p_retcode           :=0; 
		  p_errbuf            :=g_update; 
		  l_lookup_type_id    :=p_lookup_type_id; 
		END IF; 
		IF(l_lookup_type_id IS NOT NULL) THEN 
		  l_lookup_values   := p_lookup_values; 
		  WHILE l_tab_index <= l_lookup_values.last 
		  LOOP 
			IF (l_lookup_values(l_tab_index).lookup_id IS NULL) THEN 
			  INSERT 
			  INTO xxiw_lookup_values 
				( 
				  lookup_id, 
				  lookup_type_id, 
				  lookup_code, 
				  tag, 
				  meaning, 
				  description, 
				  enabled_flag, 
				  start_date, 
				  end_date, 
				  creation_date, 
				  created_by, 
				  last_update_date, 
				  last_updated_by 
				) 
				VALUES 
				( 
				  xxiw_lookup_values_s.nextval, 
				  l_lookup_type_id, 
				  p_lookup_values(l_tab_index).lookup_code, 
				  p_lookup_values(l_tab_index).tag, 
				  p_lookup_values(l_tab_index).meaning, 
				  p_lookup_values(l_tab_index).description, 
				  p_lookup_values(l_tab_index).enabled_flag, 
				  p_lookup_values(l_tab_index).start_date, 
				  p_lookup_values(l_tab_index).end_date, 
				  p_creation_date, 
				  p_created_by, 
				  p_last_update_date, 
				  p_last_updated_by 
				); 
			ELSE 
			  UPDATE xxiw_lookup_values 
			  SET lookup_code    =p_lookup_values(l_tab_index).lookup_code, 
				tag              =p_lookup_values(l_tab_index).tag, 
				lookup_type_id   =l_lookup_type_id, 
				meaning          =p_lookup_values(l_tab_index).meaning, 
				description      =p_lookup_values(l_tab_index).description, 
				enabled_flag     =p_lookup_values(l_tab_index).enabled_flag, 
				start_date       =p_lookup_values(l_tab_index).start_date, 
				end_date         =p_lookup_values(l_tab_index).end_date, 
				last_update_date =sysdate, 
				last_updated_by  =p_last_updated_by 
			  WHERE lookup_id    =p_lookup_values(l_tab_index).lookup_id; 
			END IF; 
			l_tab_index := l_tab_index + 1; 
		  END LOOP; 
		END IF; 
		IF(p_retcode                                =0) THEN 
		  apex_application.g_print_success_message :=p_errbuf; 
		END IF; 
	  EXCEPTION 
	  WHEN OTHERS THEN 
		p_retcode                                :=2; 
		p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
		apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
	  END create_update_lookup; 
	  FUNCTION get_approvalgrp_status( 
		  p_group_short_name VARCHAR2) 
		RETURN VARCHAR2 
	  IS 
		l_approvalgrp_status VARCHAR2(100); 
		l_group_count        NUMBER; 
	  BEGIN 
		SELECT COUNT(xgh.group_id) 
		INTO l_group_count 
		FROM xxiw_approvalgrp_headers xgh 
		WHERE upper(xgh.group_short_name)=upper(p_group_short_name) 
		AND enabled_flag                 ='Yes' 
		AND TRUNC(sysdate) BETWEEN TRUNC(NVL(start_date,sysdate)) AND TRUNC(NVL(end_date,sysdate)); 
		IF(l_group_count       >0) THEN 
		  l_approvalgrp_status:='Active'; 
		ELSE 
		  l_approvalgrp_status:='In-Active'; 
		END IF; 
		RETURN (l_approvalgrp_status); 
	  EXCEPTION 
	  WHEN OTHERS THEN 
		l_approvalgrp_status:='In-Active'; 
		RETURN (l_approvalgrp_status); 
	  END get_approvalgrp_status; 
	--create or update workflows 
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
		  p_errbuf  IN OUT VARCHAR2) 
	  IS 
		l_approvalgrp_lines xxiw_admin_util_pkg.approvalgrp_lines_type; 
		l_group_id  NUMBER; 
		l_tab_index NUMBER := p_approvalgrp_lines.first; 
	  BEGIN 
		IF (p_group_id IS NULL) THEN 
		  INSERT 
		  INTO xxiw_approvalgrp_headers 
			( 
			  group_id, 
			  group_short_name, 
			  group_name, 
			  description, 
			  enabled_flag, 
			  start_date, 
			  end_date, 
			  creation_date, 
			  created_by, 
			  last_update_date, 
			  last_updated_by 
			) 
			VALUES 
			( 
			  xxiw_approvalgrp_headers_s.nextval, 
			  p_group_short_name, 
			  p_group_name, 
			  p_description, 
			  p_enabled_flag, 
			  p_start_date, 
			  p_end_date, 
			  p_creation_date, 
			  p_created_by, 
			  p_last_update_date, 
			  p_last_updated_by 
			); 
		  p_retcode :=0; 
		  p_errbuf  :=g_create; 
		  l_group_id:=xxiw_approvalgrp_headers_s.currval; 
		ELSE 
		  UPDATE xxiw_approvalgrp_headers 
		  SET group_short_name =p_group_short_name, 
			group_name         =p_group_name, 
			description        =p_description, 
			enabled_flag       =p_enabled_flag, 
			start_date         =p_start_date, 
			end_date           =p_end_date, 
			last_update_date   =p_last_update_date, 
			last_updated_by    =p_last_updated_by 
		  WHERE group_id       =p_group_id; 
		  p_retcode           :=0; 
		  p_errbuf            :=g_update; 
		  l_group_id          :=p_group_id; 
		END IF; 
		IF(l_group_id         IS NOT NULL) THEN 
		  l_approvalgrp_lines := p_approvalgrp_lines; 
		  WHILE l_tab_index   <= l_approvalgrp_lines.last 
		  LOOP 
			IF (l_approvalgrp_lines(l_tab_index).group_line_id IS NULL) THEN 
			  INSERT 
			  INTO xxiw_approvalgrp_lines 
				( 
				  group_line_id, 
				  group_id, 
				  seq_number, 
				  employee_id , 
				  enabled_flag, 
				  start_date, 
				  end_date, 
				  creation_date, 
				  created_by, 
				  last_update_date, 
				  last_updated_by 
				) 
				VALUES 
				( 
				  xxiw_approvalgrp_lines_s.nextval, 
				  l_group_id, 
				  p_approvalgrp_lines(l_tab_index).seq_number, 
				  p_approvalgrp_lines(l_tab_index).employee_id, 
				  p_approvalgrp_lines(l_tab_index).enabled_flag, 
				  p_approvalgrp_lines(l_tab_index).start_date, 
				  p_approvalgrp_lines(l_tab_index).end_date, 
				  p_creation_date, 
				  p_created_by, 
				  p_last_update_date, 
				  p_last_updated_by 
				); 
			ELSE 
			  UPDATE xxiw_approvalgrp_lines 
			  SET seq_number      =p_approvalgrp_lines(l_tab_index).seq_number, 
				employee_id       =p_approvalgrp_lines(l_tab_index).employee_id, 
				group_id          =l_group_id, 
				enabled_flag      =p_approvalgrp_lines(l_tab_index).enabled_flag, 
				start_date        =p_approvalgrp_lines(l_tab_index).start_date, 
				end_date          =p_approvalgrp_lines(l_tab_index).end_date, 
				last_update_date  =sysdate, 
				last_updated_by   =p_last_updated_by 
			  WHERE group_line_id =p_approvalgrp_lines(l_tab_index).group_line_id; 
			END IF; 
			l_tab_index := l_tab_index + 1; 
		  END LOOP; 
		END IF; 
		IF(p_retcode                                =0) THEN 
		  apex_application.g_print_success_message :=p_errbuf; 
		END IF; 
	  EXCEPTION 
	  WHEN OTHERS THEN 
		p_retcode                                :=2; 
		p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
		apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
	  END create_update_approvalgroup; 
	  PROCEDURE create_update_attribute( 
		  p_attribute_association xxiw_admin_util_pkg.attribute_association_type, 
		  p_creation_date    DATE, 
		  p_created_by       NUMBER, 
		  p_last_update_date DATE, 
		  p_last_updated_by  NUMBER, 
		  p_retcode IN OUT NUMBER, 
		  p_errbuf  IN OUT VARCHAR2) 
	  IS 
		l_attribute_association xxiw_admin_util_pkg.attribute_association_type; 
		l_tab_index NUMBER := p_attribute_association.first; 
	  BEGIN 
	   
	   l_attribute_association := p_attribute_association; 
		WHILE l_tab_index <= l_attribute_association.last 
		LOOP 
		  IF (l_attribute_association(l_tab_index).association_id IS NULL) THEN 
			INSERT 
			INTO xxiw_attribute_association 
			  ( 
				association_id, 
				item_category , 
				purchasing_category, 
				attribute_group, 
				enabled_flag, 
				start_date, 
				end_date, 
				creation_date, 
				created_by, 
				last_update_date, 
				last_updated_by 
			  ) 
			  VALUES 
			  ( 
				xxiw_attribute_association_s.nextval, 
				p_attribute_association(l_tab_index).item_category, 
				p_attribute_association(l_tab_index).purchasing_category, 
				p_attribute_association(l_tab_index).attribute_group, 
				p_attribute_association(l_tab_index).enabled_flag, 
				p_attribute_association(l_tab_index).start_date, 
				p_attribute_association(l_tab_index).end_date, 
				p_creation_date, 
				p_created_by, 
				p_last_update_date, 
				p_last_updated_by 
			  ); 
			   p_retcode :=0; 
		  p_errbuf  :=g_create;
		  ELSE 
			UPDATE xxiw_attribute_association 
			SET item_category     =p_attribute_association(l_tab_index).item_category, 
			  attribute_group     =p_attribute_association(l_tab_index).attribute_group, 
			  purchasing_category =p_attribute_association(l_tab_index).purchasing_category, 
			  enabled_flag        =p_attribute_association(l_tab_index).enabled_flag, 
			  start_date          =p_attribute_association(l_tab_index).start_date, 
			  end_date            =p_attribute_association(l_tab_index).end_date, 
			  last_update_date    =sysdate, 
			  last_updated_by     =p_last_updated_by 
			WHERE association_id  =p_attribute_association(l_tab_index).association_id; 
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
	  END create_update_attribute; 
	  
  PROCEDURE create_update_admins( 
      p_admin_user xxiw_admin_util_pkg.admin_user_type, 
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_update_date DATE, 
      p_last_updated_by  NUMBER, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2)
	  IS 
		l_admin_user xxiw_admin_util_pkg.admin_user_type; 
		l_tab_index NUMBER := p_admin_user.first; 
	  BEGIN 
	   
	   l_admin_user := p_admin_user; 
		WHILE l_tab_index <= l_admin_user.last 
		LOOP 
		  IF (l_admin_user(l_tab_index).admin_user_id IS NULL) THEN 
			INSERT 
			INTO xxiw_admin_user 
			  ( 
				admin_user_id, 
				user_name,
				description,
				enabled_flag, 
				start_date, 
				end_date, 
				creation_date, 
				created_by, 
				last_update_date, 
				last_updated_by 
			  ) 
			  VALUES 
			  ( 
				xxiw_admin_user_s.nextval, 
				p_admin_user(l_tab_index).user_name, 
				p_admin_user(l_tab_index).description, 
				p_admin_user(l_tab_index).enabled_flag, 
				p_admin_user(l_tab_index).start_date, 
				p_admin_user(l_tab_index).end_date, 
				p_creation_date, 
				p_created_by, 
				p_last_update_date, 
				p_last_updated_by 
			  ); 
			   p_retcode :=0; 
		  p_errbuf  :=g_create;
		  ELSE 
			UPDATE xxiw_admin_user 
			SET user_name     =p_admin_user(l_tab_index).user_name, 
			  description     =p_admin_user(l_tab_index).description, 
			  enabled_flag        =p_admin_user(l_tab_index).enabled_flag, 
			  start_date          =p_admin_user(l_tab_index).start_date, 
			  end_date            =p_admin_user(l_tab_index).end_date, 
			  last_update_date    =sysdate, 
			  last_updated_by     =p_last_updated_by 
			WHERE admin_user_id  =p_admin_user(l_tab_index).admin_user_id; 
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
	  END create_update_admins; 
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
	  x_setup_id OUT number)
	  IS 
	  BEGIN 	  

		IF (p_setup_id IS NULL) THEN 
		  INSERT 
		  INTO xxiw_ir_setups 
			( 
			  setup_id, 
			  master_organization_id, 
			  item_num_prefix, 
			  defualt_flag, 
			  template_enabled ,
			  uom_enabled ,
			  item_category_enabled ,
			  po_category_enabled,
              description_type ,
              category1_name,
              category2_name,	  
			  enabled_flag, 
			  start_date, 
			  end_date, 
			  creation_date, 
			  created_by, 
			  last_update_date, 
			  last_updated_by 
			) 
			VALUES 
			( 
			  xxiw_ir_setups_s.nextval, 
			  (select organization_id from xxiw_mst_organizations_v where organization_code=p_master_org_code), 
			  p_prefix, 
			  p_default_flag,
			  'No',
			  'No',
			  'No',
			  'No',			  
              p_description_selection ,
              p_category1_name,
              p_category2_name,	
              p_enabled_flag,			  
			  p_start_date, 
			  p_end_date, 
			  p_creation_date, 
			  p_created_by, 
			  p_last_update_date, 
			  p_last_updated_by 
			); 
		  p_retcode  :=0; 
		  p_errbuf   :=g_create; 
		  x_setup_id :=xxiw_ir_setups_s.currval;
		  
		ELSE 
		  UPDATE xxiw_ir_setups 
		  SET master_organization_id     =(select organization_id from xxiw_mst_organizations_v where organization_code=p_master_org_code), 
			item_num_prefix             =p_prefix, 
			defualt_flag      =p_default_flag, 			
			enabled_flag     =p_enabled_flag, 
			description_type =p_description_selection, 
            category1_name=p_category1_name, 
            category2_name=p_category2_name,  
			start_date       =p_start_date, 
			end_date         =p_end_date, 
			last_update_date =p_last_update_date, 
			last_updated_by  =p_last_updated_by 
		  WHERE setup_id    =p_setup_id; 
		  p_retcode         :=0; 
		  p_errbuf          :=g_update; 
		  x_setup_id :=p_setup_id;
	 END IF; 
		IF(p_retcode                                =0) THEN 
		  apex_application.g_print_success_message :=p_errbuf; 
		END IF; 
	  EXCEPTION 
	  WHEN OTHERS THEN 
		p_retcode                                :=2; 
		p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
		apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
	  END create_update_setup; 
	  PROCEDURE create_update_template_setups( 
      p_template_setups xxiw_admin_util_pkg.ir_template_setups_type, 
	  p_template_enabled VARCHAR2,
	  p_setup_id	     NUMBER,
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2 )
  IS 
    l_template_setups xxiw_admin_util_pkg.ir_template_setups_type; 
    l_tab_index NUMBER := p_template_setups.first; 
  BEGIN 
    l_template_setups      := p_template_setups; 
    WHILE l_tab_index <= l_template_setups.last 
    LOOP 
      IF (l_template_setups(l_tab_index).template_setup_id IS NULL) THEN 
        INSERT 
        INTO xxiw_ir_template_setups 
          ( 
            template_setup_id , 
            setup_id, 
            template_id, 
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
            xxiw_ir_template_setups_s.nextval, 
            p_template_setups(l_tab_index).setup_id, 
            p_template_setups(l_tab_index).template_id, 
            p_template_setups(l_tab_index).enabled_flag , 
            p_template_setups(l_tab_index).start_date , 
            p_template_setups(l_tab_index).end_date , 
            p_creation_date , 
            p_created_by , 
            p_last_updated_by , 
            p_last_update_date 
          ); 
        p_retcode :=0; 
        p_errbuf  :=g_create; 
      ELSE 
        UPDATE xxiw_ir_template_setups 
        SET 
          setup_id      =p_template_setups(l_tab_index).setup_id, 
          template_id    =p_template_setups(l_tab_index).template_id , 
          enabled_flag   =p_template_setups(l_tab_index).enabled_flag , 
          start_date     =p_template_setups(l_tab_index).start_date , 
          end_date       =p_template_setups(l_tab_index).end_date, 
          last_updated_by    =p_last_updated_by , 
          last_update_date   =sysdate 
        WHERE template_setup_id =p_template_setups(l_tab_index).template_setup_id; 
		p_retcode :=0; 
        p_errbuf  :=g_update; 
      END IF; 
      l_tab_index := l_tab_index + 1; 
    END LOOP; 
    IF(p_retcode                                =0) THEN 
	  UPDATE xxiw_ir_setups
	    SET template_enabled=p_template_enabled
		WHERE setup_id=p_setup_id;
      apex_application.g_print_success_message :=p_errbuf; 
    END IF; 
    COMMIT; 
  EXCEPTION 
  WHEN OTHERS THEN 
    p_retcode                                :=2; 
    p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
    apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
  END create_update_template_setups;
-- data for category setup table populate
  PROCEDURE create_update_category_setups( 
      p_category_setups xxiw_admin_util_pkg.ir_categories_setups_type,
      p_category_enabled VARCHAR2,
	  p_setup_id	     NUMBER,
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2 )
  IS 
    l_category_setups xxiw_admin_util_pkg.ir_categories_setups_type; 
    l_tab_index NUMBER := p_category_setups.first; 
	l_category_type VARCHAR2(100);
  BEGIN 
    l_category_setups := p_category_setups; 
    WHILE l_tab_index <= l_category_setups.last 
    LOOP 
      IF (l_category_setups(l_tab_index).category_setup_id IS NULL) THEN 
        INSERT 
        INTO xxiw_ir_categories_setups 
          ( 
            category_setup_id , 
            setup_id, 
            category_id, 
			category_type,
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
            xxiw_ir_categories_setups_s.nextval, 
            p_category_setups(l_tab_index).setup_id, 
            p_category_setups(l_tab_index).category_id, 
			p_category_setups(l_tab_index).category_type, 
            p_category_setups(l_tab_index).enabled_flag , 
            p_category_setups(l_tab_index).start_date , 
            p_category_setups(l_tab_index).end_date , 
            p_creation_date , 
            p_created_by , 
            p_last_updated_by , 
            p_last_update_date 
          ); 
		l_category_type:=p_category_setups(l_tab_index).category_type;
        p_retcode :=0; 
        p_errbuf  :=g_create; 
      ELSE 
        UPDATE xxiw_ir_categories_setups 
        SET 
          setup_id       =p_category_setups(l_tab_index).setup_id, 
          category_id    =p_category_setups(l_tab_index).category_id , 
		  category_type  =p_category_setups(l_tab_index).category_type,
          enabled_flag   =p_category_setups(l_tab_index).enabled_flag , 
          start_date     =p_category_setups(l_tab_index).start_date , 
          end_date       =p_category_setups(l_tab_index).end_date, 
          last_updated_by    =p_last_updated_by , 
          last_update_date   =sysdate 
        WHERE category_setup_id =p_category_setups(l_tab_index).category_setup_id; 
		l_category_type:=p_category_setups(l_tab_index).category_type;
		p_retcode :=0; 
        p_errbuf  :=g_update; 
      END IF; 
      l_tab_index := l_tab_index + 1; 
    END LOOP; 
    IF(p_retcode                                =0) THEN 
	  UPDATE xxiw_ir_setups
	    SET item_category_enabled=decode(l_category_type,'ITEM_CATEGORY',p_category_enabled,item_category_enabled),
		    po_category_enabled=decode(l_category_type,'PURCHASE_CATEGORY',p_category_enabled,po_category_enabled)
		WHERE setup_id=p_setup_id;
      apex_application.g_print_success_message :=p_errbuf; 
    END IF; 
    COMMIT; 
  EXCEPTION 
  WHEN OTHERS THEN 
    p_retcode                                :=2; 
    p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
    apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
  END create_update_category_setups;
 --for uom setup
  PROCEDURE create_update_uom_setups( 
      p_uom_setups xxiw_admin_util_pkg.ir_uom_setups_type,
      p_uom_enabled VARCHAR2,	
      p_setup_id	  NUMBER,
      p_creation_date    DATE, 
      p_created_by       NUMBER, 
      p_last_updated_by  NUMBER, 
      p_last_update_date DATE, 
      p_retcode IN OUT NUMBER, 
      p_errbuf  IN OUT VARCHAR2 )
  IS 
    l_uom_setups xxiw_admin_util_pkg.ir_uom_setups_type; 
    l_tab_index NUMBER := p_uom_setups.first; 
  BEGIN 
    l_uom_setups      := p_uom_setups; 
    WHILE l_tab_index <= l_uom_setups.last 
    LOOP 
      IF (l_uom_setups(l_tab_index).uom_setup_id IS NULL) THEN 
        INSERT 
        INTO xxiw_ir_uom_setups 
          ( 
            uom_setup_id , 
            setup_id, 
            uom_code,
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
            xxiw_ir_uom_setups_s.nextval, 
            p_uom_setups(l_tab_index).setup_id, 
            p_uom_setups(l_tab_index).uom_code, 
            p_uom_setups(l_tab_index).enabled_flag , 
            p_uom_setups(l_tab_index).start_date , 
            p_uom_setups(l_tab_index).end_date , 
            p_creation_date , 
            p_created_by , 
            p_last_updated_by , 
            p_last_update_date 
          ); 
        p_retcode :=0; 
        p_errbuf  :=g_create; 
      ELSE 
        UPDATE xxiw_ir_uom_setups 
        SET 
          setup_id      =p_uom_setups(l_tab_index).setup_id, 
          uom_code    =p_uom_setups(l_tab_index).uom_code , 
          enabled_flag   =p_uom_setups(l_tab_index).enabled_flag , 
          start_date     =p_uom_setups(l_tab_index).start_date , 
          end_date       =p_uom_setups(l_tab_index).end_date, 
          last_updated_by    =p_last_updated_by , 
          last_update_date   =sysdate 
        WHERE uom_setup_id =p_uom_setups(l_tab_index).uom_setup_id; 
		p_retcode :=0; 
        p_errbuf  :=g_update; 
      END IF; 
      l_tab_index := l_tab_index + 1; 
    END LOOP; 
    IF(p_retcode                                =0) THEN 
	  UPDATE xxiw_ir_setups
	    SET uom_enabled=p_uom_enabled
		WHERE setup_id=p_setup_id;
      apex_application.g_print_success_message :=p_errbuf; 
    END IF; 
    COMMIT; 
  EXCEPTION 
  WHEN OTHERS THEN 
    p_retcode                                :=2; 
    p_errbuf                                 :=g_error||SUBSTR (sqlerrm, 1, 250); 
    apex_application.g_print_success_message :='<span style="color:red">'||p_errbuf||'</span>'; 
  END create_update_uom_setups;
  FUNCTION get_setup_status( 
		  p_setup_id NUMBER) 
		RETURN VARCHAR2 
	  IS 
		l_setup_status VARCHAR2(100); 
		l_header_count     NUMBER; 
	  BEGIN 
		SELECT COUNT(xfh.setup_id) 
		INTO l_header_count 
		FROM xxiw_ir_setups xfh 
		WHERE upper(xfh.setup_id)=upper(p_setup_id) 
		AND enabled_flag           ='Yes' 
		AND TRUNC(sysdate) BETWEEN TRUNC(NVL(start_date,sysdate)) AND TRUNC(NVL(end_date,sysdate)); 
		IF(l_header_count    >0) THEN 
		  l_setup_status:='Active'; 
		ELSE 
		  l_setup_status:='In-Active'; 
		END IF; 
		RETURN (l_setup_status); 
	  EXCEPTION 
	  WHEN OTHERS THEN 
		l_setup_status:='In-Active'; 
		RETURN (l_setup_status);
 
	  END get_setup_status; 
	END XXIW_ADMIN_UTIL_PKG; 
