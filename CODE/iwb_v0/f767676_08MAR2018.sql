prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.4.00.08'
,p_default_workspace_id=>39524940410876766211
,p_default_application_id=>767676
,p_default_owner=>'XXIW'
);
end;
/
 
prompt APPLICATION 767676 - IWB
--
-- Application Export:
--   Application:     767676
--   Name:            IWB
--   Date and Time:   17:01 Thursday March 8, 2018
--   Exported By:     BK.ELEX@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.4.00.08
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     33
--     Items:                  116
--     Validations:              1
--     Processes:               42
--     Regions:                 77
--     Buttons:                 76
--     Dynamic Actions:         19
--   Shared Components:
--     Logic:
--       Items:                  2
--       Computations:           2
--     Navigation:
--       Lists:                  5
--       Breadcrumbs:            1
--         Entries:             13
--     Security:
--       Authentication:         2
--       Authorization:          1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       LOVs:                  17
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,767676)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'XXIW')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'IWB')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'IWB767676')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'F04B6F27C5034BC2C1D96F46100A5064C79FCED0A05928A56B3DDDB3AFB14977'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY'
,p_timestamp_format=>'DD-MON-YYYY'
,p_timestamp_tz_format=>'DD-MON-YYYY'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(44398198569541576360)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:&APPLICATION_TITLE.'
,p_favicons=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-bug-tracking.ico"><link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-bug-tracking-16x16.png"><link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/im'
||'g/favicons/app-bug-tracking-32x32.png"><link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-bug-tracking.png">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'IWB'
,p_substitution_string_02=>'APP_DATE_FORMAT'
,p_substitution_value_02=>'DD-MON-YYYY'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180307114408'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(44944635433081396851)
,p_name=>'IWB Setup List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44944637699006396856)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Templates'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24:P24_SETUP_ID:&P23_SETUP_ID.:'
,p_list_item_icon=>'fa-cubes'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45502066765549643483)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Unit of Measure'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:27:P27_SETUP_ID:&P23_SETUP_ID.:'
,p_list_item_icon=>'fa-bolt'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44944635698133396854)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Item Categories'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_SETUP_ID:&P23_SETUP_ID.:'
,p_list_item_icon=>'fa-layers'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45488535756240716148)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Purchase Categories'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26:P26_SETUP_ID:&P23_SETUP_ID.:'
,p_list_item_icon=>'fa-layers'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(52619468677995439909)
,p_name=>'IWB Administration List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(52619673731826456528)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Attribute Groups'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12:::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'To enable item description format'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(52620550479700500326)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Attribute Association'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:::'
,p_list_item_icon=>'fa-flickr'
,p_list_text_01=>'To map attribute group with categories'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(52620655555238522453)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Administrators'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:::'
,p_list_item_icon=>'fa-user-check'
,p_list_text_01=>'To create final approvers from EBS users'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(52620739781552532830)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Configuration'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21:::'
,p_list_item_icon=>'fa-hdd-o'
,p_list_text_01=>'To configure master organization and its attributes for item requests'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(86274719518734833196)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(86274833129949833254)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(86406587482369758804)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Requests'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ticket'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3,5,6,8,2,2,6,18,19,20,7,14,4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(43551306259738253928)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(43551315699039257882)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cogs'
,p_security_scheme=>wwv_flow_api.id(52623909056700887119)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11,12,13,13,15,16,17,10,21,22,23,24,25,26,27'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(43678812909598191823)
,p_list_item_display_sequence=>45
,p_list_item_link_text=>'Lookups'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_parent_list_item_id=>wwv_flow_api.id(43551315699039257882)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(43551447739519280532)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Attribute Groups'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(43551315699039257882)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(43682484271363325905)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Attribute Association'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(43551315699039257882)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44322572743719524110)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Administrators'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(43551315699039257882)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44928900164223021879)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Configuration'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(43551315699039257882)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(86274831618988833247)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(51453095601711468573)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Search'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:29:::'
,p_list_item_icon=>'fa-search'
,p_list_text_02=>'icon-only'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(50065819845797979558)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'&DEFAULT_MASTER_ORG.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-anchor'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(86280311543308877307)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(86274831847131833248)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(86280311543308877307)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(86689371130795056505)
,p_name=>'IWB Actions List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44163776793458955788)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Description'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:18:P18_REQUEST_ID:&P5_REQUEST_ID.:'
,p_list_item_icon=>'fa-barcode'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxiw_item_requests xir',
'where NOT EXISTS(select 1 from xxiw_ir_approvals xia where xia.item_request_id=xir.item_request_id )',
'and xir.item_request_id=:P5_REQUEST_ID ',
'UNION',
'select 1',
'from xxiw_ir_approvals xia',
'where xia.enabled_flag=''Yes''',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xia.approver_name)=upper(:APP_USER)',
'UNION',
'SELECT 1',
'from xxiw_ir_approvals xia,',
'xxiw_item_requests xir,',
'xxiw_users_v xuv2',
'WHERE 1=1',
'and xia.status=''REQUEST_INFO''',
'and xia.enabled_flag=''Yes''',
'and xir.item_request_id=xia.item_request_id',
'and xuv2.user_id=xir.created_by',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xuv2.user_name)=upper(:APP_USER)'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(86867257876177535877)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Organizations'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_REQUEST_ID:&P5_REQUEST_ID.:'
,p_list_item_icon=>'fa-cubes'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxiw_item_requests xir',
'where NOT EXISTS(select 1 from xxiw_ir_approvals xia where xia.item_request_id=xir.item_request_id )',
'and xir.item_request_id=:P5_REQUEST_ID ',
'UNION',
'select 1',
'from xxiw_ir_approvals xia',
'where xia.enabled_flag=''Yes''',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xia.approver_name)=upper(:APP_USER)',
'UNION',
'SELECT 1',
'from xxiw_ir_approvals xia,',
'xxiw_item_requests xir,',
'xxiw_users_v xuv2',
'WHERE 1=1',
'and xia.status=''REQUEST_INFO''',
'and xia.enabled_flag=''Yes''',
'and xir.item_request_id=xia.item_request_id',
'and xuv2.user_id=xir.created_by',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xuv2.user_name)=upper(:APP_USER)'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(43797792962080079906)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Categories'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:P6_REQUEST_ID:&P5_REQUEST_ID.:'
,p_list_item_icon=>'fa-layers'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxiw_item_requests xir',
'where NOT EXISTS(select 1 from xxiw_ir_approvals xia where xia.item_request_id=xir.item_request_id )',
'and xir.item_request_id=:P5_REQUEST_ID ',
'UNION',
'select 1',
'from xxiw_ir_approvals xia',
'where xia.enabled_flag=''Yes''',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xia.approver_name)=upper(:APP_USER)',
'UNION',
'SELECT 1',
'from xxiw_ir_approvals xia,',
'xxiw_item_requests xir,',
'xxiw_users_v xuv2',
'WHERE 1=1',
'and xia.status=''REQUEST_INFO''',
'and xia.enabled_flag=''Yes''',
'and xir.item_request_id=xia.item_request_id',
'and xuv2.user_id=xir.created_by',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xuv2.user_name)=upper(:APP_USER)'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44193473611461618369)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Manufacturer Parts'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19:P19_REQUEST_ID:&P5_REQUEST_ID.:'
,p_list_item_icon=>'fa-network-triangle'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxiw_item_requests xir',
'where NOT EXISTS(select 1 from xxiw_ir_approvals xia where xia.item_request_id=xir.item_request_id )',
'and xir.item_request_id=:P5_REQUEST_ID ',
'UNION',
'select 1',
'from xxiw_ir_approvals xia',
'where xia.enabled_flag=''Yes''',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xia.approver_name)=upper(:APP_USER)',
'UNION',
'SELECT 1',
'from xxiw_ir_approvals xia,',
'xxiw_item_requests xir,',
'xxiw_users_v xuv2',
'WHERE 1=1',
'and xia.status=''REQUEST_INFO''',
'and xia.enabled_flag=''Yes''',
'and xir.item_request_id=xia.item_request_id',
'and xuv2.user_id=xir.created_by',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xuv2.user_name)=upper(:APP_USER)'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44201839122335935121)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Add Attachment'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20:P20_REQUEST_ID:&P5_REQUEST_ID.:'
,p_list_item_icon=>'fa-paperclip'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxiw_item_requests xir',
'where NOT EXISTS(select 1 from xxiw_ir_approvals xia where xia.item_request_id=xir.item_request_id )',
'and xir.item_request_id=:P5_REQUEST_ID ',
'UNION',
'select 1',
'from xxiw_ir_approvals xia',
'where xia.enabled_flag=''Yes''',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xia.approver_name)=upper(:APP_USER)',
'UNION',
'SELECT 1',
'from xxiw_ir_approvals xia,',
'xxiw_item_requests xir,',
'xxiw_users_v xuv2',
'WHERE 1=1',
'and xia.status=''REQUEST_INFO''',
'and xia.enabled_flag=''Yes''',
'and xir.item_request_id=xia.item_request_id',
'and xuv2.user_id=xir.created_by',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xuv2.user_name)=upper(:APP_USER)'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44320158173306220232)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Add Comment'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_REQUEST_ID:&P5_REQUEST_ID.:'
,p_list_item_icon=>'fa-comments'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(51144775722274007960)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Action History'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4:P4_REQUEST_ID:&P5_REQUEST_ID.:'
,p_list_item_icon=>'fa-users'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from xxiw_ir_approvals xia where xia.item_request_id=:P5_REQUEST_ID'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(86274718892277833196)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(86274718954999833196)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(86274719143583833196)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(86274719195036833196)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(86274719326557833196)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(86274719431332833196)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(52623909056700887119)
,p_name=>'xxiwAuthorizationScheme'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM xxiw_users_v',
'where user_name=''ADMIN''',
'AND  user_name=upper(:APP_USER)'))
,p_error_message=>'You are not authorized!'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(86276461941376959013)
,p_name=>'APPLICATION_TITLE'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(50062425490369898703)
,p_name=>'DEFAULT_MASTER_ORG'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(50062505191375683271)
,p_computation_sequence=>10
,p_computation_item=>'DEFAULT_MASTER_ORG'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return ''V1'';',
'end;'))
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(86276582639655747180)
,p_computation_sequence=>10
,p_computation_item=>'APPLICATION_TITLE'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return ''Item Work Bench'';',
'end;'))
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(50607867754630725572)
,p_lov_name=>'XXIW_APPROVERS_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'xuv.user_name||''''||nvl2(xau.user_name,'' - Final Approver '','' - User'') d,',
'xuv.user_name r',
'FROM xxiw_users_v xuv,',
'xxiw_admin_user xau',
'where xuv.user_name=xau.user_name(+)',
'and (upper(xuv.user_name) <> upper(:APP_USER) ',
'and xuv.user_id <> (select xir.created_by from xxiw_item_requests xir where xir.item_request_id=:P5_REQUEST_ID ))'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(44086130671238786165)
,p_lov_name=>'XXIW_ATTRIBUTE_GRP_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT name d, short_name r',
'FROM xxiw_flexfields_headers',
'WHERE enabled_flag=''Yes''',
'AND trunc(sysdate) between trunc(nvl(start_date,sysdate)) and trunc(nvl(end_date,sysdate))'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(44160562705385409873)
,p_lov_name=>'XXIW_CATEGORIES_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ITEM-CATE1'' d, ''ITEM-CATE1'' r from dual',
'union all',
'select ''ITEM-CATE2'' d, ''ITEM-CATE2'' r from dual',
'union all',
'select ''ITEM-CATE3'' d, ''ITEM-CATE3'' r from dual',
'union all',
'select ''ITEM-CATE4'' d, ''ITEM-CATE4'' r from dual',
'union all',
'select ''ITEM-CATE5'' d, ''ITEM-CATE5'' r from dual',
'union all',
'select ''ITEM-CATE6'' d, ''ITEM-CATE6'' r from dual',
'union all',
'select ''ITEM-CATE7'' d, ''ITEM-CATE7'' r from dual',
'union all',
'select ''ITEM-CATE8'' d, ''ITEM-CATE8'' r from dual',
'union all',
'select ''ITEM-PO1'' d, ''ITEM-PO1'' r from dual',
'union all',
'select ''ITEM-PO2'' d, ''ITEM-PO2'' r from dual',
'union all',
'select ''ITEM-PO3'' d, ''ITEM-PO3'' r from dual',
'union all',
'select ''ITEM-PO4'' d, ''ITEM-PO4'' r from dual',
'union all',
'select ''ITEM-PO5'' d, ''ITEM-PO5'' r from dual',
'union all',
'select ''ITEM-PO6'' d, ''ITEM-PO6'' r from dual',
'union all',
'select ''ITEM-PO7'' d, ''ITEM-PO7'' r from dual',
'union all',
'select ''ITEM-PO8'' d, ''ITEM-PO8'' r from dual'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(44928874922761009218)
,p_lov_name=>'XXIW_INV_MST_ORGS_LOV'
,p_lov_query=>'select organization_code d, organization_code r from xxiw_mst_organizations_v'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(44086243606836058708)
,p_lov_name=>'XXIW_INV_ORGANIZATION_LOV'
,p_lov_query=>'select organization_code d, organization_code r from xxiw_inv_organizations_v'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(44086310447977845730)
,p_lov_name=>'XXIW_INV_TEMPLATES_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  xt.template_name  D, xt.template_name r',
'FROM xxiw_ir_template_setups xit,',
'xxiw_templates_v xt',
'WHERE xit.template_id=xt.template_id',
'AND xit.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xit.start_date,SYSDATE)) AND TRUNC(NVL(xit.end_date,SYSDATE))',
'and xit.setup_id in (select xis.setup_id',
'from xxiw_ir_setups xis,',
'xxiw_mst_organizations_v xmo',
'WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(start_date,SYSDATE)) AND TRUNC(NVL(end_date,SYSDATE))',
'AND xmo.organization_code=:DEFAULT_MASTER_ORG',
'and xis.template_enabled in (''Yes'',''Both''))',
'union all ',
'select xt.template_name  D, xt.template_name r',
'from xxiw_templates_v xt',
'where 1=1',
'and 1 in (select decode(xis.template_enabled,''Yes'',2,1)',
'from xxiw_ir_setups xis,',
'xxiw_mst_organizations_v xmo',
'WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(start_date,SYSDATE)) AND TRUNC(NVL(end_date,SYSDATE))',
'AND xmo.organization_code=:DEFAULT_MASTER_ORG)',
'AND 1=nvl((select decode(xis.template_enabled,''Both'',2,1) from xxiw_ir_template_setups xits, ',
'                                                        xxiw_ir_setups xis,',
'														xxiw_mst_organizations_v xmo',
'							WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'and xis.template_enabled in (''No'',''Both'')',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xis.start_date,SYSDATE)) AND TRUNC(NVL(xis.end_date,SYSDATE))',
'AND xits.template_id=xt.template_id',
'AND xmo.organization_code=:DEFAULT_MASTER_ORG',
'AND xits.setup_id=xis.setup_id',
'AND xits.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xits.start_date,SYSDATE)) AND TRUNC(NVL(xits.end_date,SYSDATE))),1)'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(43800656918298171954)
,p_lov_name=>'XXIW_ITEM_CATEGORY_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT description d, description r FROM xxiw_categories_v',
'WHERE category_type=''ITEM_CATEGORY'''))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(45487712209306829594)
,p_lov_name=>'XXIW_ITEM_CATEGORY_SETUP_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT description, category_id FROM xxiw_categories_v',
'WHERE category_type=''ITEM_CATEGORY'''))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(44307842615386493684)
,p_lov_name=>'XXIW_MANUFACTURERS_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''MANUFACTURER-1'' d, ''MANUFACTURER-1'' r from dual',
'union all',
'select ''MANUFACTURER-2'' d, ''MANUFACTURER-2'' r from dual',
'union all',
'select ''MANUFACTURER-3'' d, ''MANUFACTURER-3'' r from dual',
'union all',
'select ''MANUFACTURER-4'' d, ''MANUFACTURER-4'' r from dual',
'union all',
'select ''MANUFACTURER-5'' d, ''MANUFACTURER-5'' r from dual',
'union all',
'select ''MANUFACTURER-6'' d, ''MANUFACTURER-6'' r from dual',
'union all',
'select ''MANUFACTURER-7'' d, ''MANUFACTURER-7'' r from dual',
'union all',
'select ''MANUFACTURER-8'' d, ''MANUFACTURER-8'' r from dual'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(43800858385035952673)
,p_lov_name=>'XXIW_PO_CATEGORY_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT description d, description r FROM xxiw_categories_v',
'WHERE category_type=''PURCHASE_CATEGORY'''))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(45487760369299833696)
,p_lov_name=>'XXIW_PO_CATEGORY_SETUP_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT description, category_id FROM xxiw_categories_v',
'WHERE category_type=''PURCHASE_CATEGORY'''))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(44949820591420763367)
,p_lov_name=>'XXIW_TEMPLATE_SETUP_LOV'
,p_lov_query=>'SELECT template_name, template_id FROM xxiw_templates_v'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(44086325747782075249)
,p_lov_name=>'XXIW_UOM_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  xt.unit_of_measure  D, xt.unit_of_measure r',
'FROM xxiw_ir_uom_setups xit,',
'xxiw_units_of_measure_v xt',
'WHERE xit.uom_code=xt.uom_code',
'AND xit.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xit.start_date,SYSDATE)) AND TRUNC(NVL(xit.end_date,SYSDATE))',
'and xit.setup_id in (select xis.setup_id',
'from xxiw_ir_setups xis,',
'xxiw_mst_organizations_v xmo',
'WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(start_date,SYSDATE)) AND TRUNC(NVL(end_date,SYSDATE))',
'AND xmo.organization_code=:DEFAULT_MASTER_ORG',
'and xis.uom_enabled in (''Yes'',''Both''))',
'union all ',
'select xt.unit_of_measure  D, xt.unit_of_measure r',
'from xxiw_units_of_measure_v xt',
'where 1=1',
'and 1 in (select decode(xis.uom_enabled,''Yes'',2,1)',
'from xxiw_ir_setups xis,',
'xxiw_mst_organizations_v xmo',
'WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(start_date,SYSDATE)) AND TRUNC(NVL(end_date,SYSDATE))',
'AND xmo.organization_code=:DEFAULT_MASTER_ORG)',
'AND 1=nvl((select decode(xis.uom_enabled,''Both'',2,1) from xxiw_ir_uom_setups xits, ',
'                                                        xxiw_ir_setups xis,',
'														xxiw_mst_organizations_v xmo',
'							WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'and xis.uom_enabled in (''No'',''Both'')',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xis.start_date,SYSDATE)) AND TRUNC(NVL(xis.end_date,SYSDATE))',
'AND xits.uom_code=xt.uom_code',
'AND xmo.organization_code=:DEFAULT_MASTER_ORG',
'AND xits.setup_id=xis.setup_id',
'AND xits.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xits.start_date,SYSDATE)) AND TRUNC(NVL(xits.end_date,SYSDATE))),1)'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(45502273871171442945)
,p_lov_name=>'XXIW_UOM_SETUP_LOV'
,p_lov_query=>'SELECT unit_of_measure, uom_code FROM xxiw_units_of_measure_v'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(44322220609722473331)
,p_lov_name=>'XXIW_USERS_LOV'
,p_lov_query=>'select user_name d, user_name r from xxiw_users_v'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(45071055871614110816)
,p_lov_name=>'XXIW_YES_NO_BOTH_LOV'
,p_lov_query=>'.'||wwv_flow_api.id(45071055871614110816)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(45071056109092110820)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Yes'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(45071056574610110822)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'No'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(45071057478503112618)
,p_lov_disp_sequence=>12
,p_lov_disp_value=>'Both'
,p_lov_return_value=>'Both'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(43788555080813419092)
,p_lov_name=>'XXIW_YES_NO_LOV'
,p_lov_query=>'.'||wwv_flow_api.id(43788555080813419092)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(43788555368311419093)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Yes'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(43788555745546419094)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'No'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(86274833017621833253)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(43550059218141370869)
,p_short_name=>'Requests'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(43551306791890253930)
,p_short_name=>'Reports'
,p_link=>'f?p=&APP_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(43551316173066257884)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(43551462596950280547)
,p_parent_id=>wwv_flow_api.id(43551316173066257884)
,p_short_name=>'Attribute Groups'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(43678818267822191838)
,p_parent_id=>wwv_flow_api.id(43551316173066257884)
,p_short_name=>'Lookups'
,p_link=>'f?p=&APP_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(43682490450599325920)
,p_parent_id=>wwv_flow_api.id(43551316173066257884)
,p_short_name=>'Attribute Association'
,p_link=>'f?p=&APP_ID.:17:&SESSION.'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(44322579047799524137)
,p_parent_id=>wwv_flow_api.id(43551316173066257884)
,p_short_name=>'Administrators'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(44928905083272021898)
,p_parent_id=>wwv_flow_api.id(43551316173066257884)
,p_short_name=>'Configuration'
,p_link=>'f?p=&APP_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(44938094372850244886)
,p_parent_id=>wwv_flow_api.id(44928905083272021898)
,p_short_name=>'Configuration : &P23_MST_ORGANIZATION.'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(51453577672456562000)
,p_parent_id=>wwv_flow_api.id(86274833363415833254)
,p_short_name=>'Search Results'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(86274833363415833254)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(86687539927803531550)
,p_parent_id=>wwv_flow_api.id(43550059218141370869)
,p_short_name=>'&P5_REQUEST_ID.: &P5_DESCRIPTION.'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(86687975985599663125)
,p_parent_id=>0
,p_short_name=>'GlobalPage'
,p_link=>'f?p=&APP_ID.:0:&SESSION.::&DEBUG.:::'
,p_page_id=>0
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(86274719569883833197)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274719719060833198)
,p_page_template_id=>wwv_flow_api.id(86274719569883833197)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274719795400833199)
,p_page_template_id=>wwv_flow_api.id(86274719569883833197)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274719893457833199)
,p_page_template_id=>wwv_flow_api.id(86274719569883833197)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274720012486833199)
,p_page_template_id=>wwv_flow_api.id(86274719569883833197)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274720123965833199)
,p_page_template_id=>wwv_flow_api.id(86274719569883833197)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274720184225833199)
,p_page_template_id=>wwv_flow_api.id(86274719569883833197)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274720307938833199)
,p_page_template_id=>wwv_flow_api.id(86274719569883833197)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274720407059833199)
,p_page_template_id=>wwv_flow_api.id(86274719569883833197)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(86274720523602833199)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274720559359833199)
,p_page_template_id=>wwv_flow_api.id(86274720523602833199)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274720666346833199)
,p_page_template_id=>wwv_flow_api.id(86274720523602833199)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274720786629833199)
,p_page_template_id=>wwv_flow_api.id(86274720523602833199)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274720874250833200)
,p_page_template_id=>wwv_flow_api.id(86274720523602833199)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274721008487833200)
,p_page_template_id=>wwv_flow_api.id(86274720523602833199)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274721080439833200)
,p_page_template_id=>wwv_flow_api.id(86274720523602833199)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274721187710833200)
,p_page_template_id=>wwv_flow_api.id(86274720523602833199)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274721307481833200)
,p_page_template_id=>wwv_flow_api.id(86274720523602833199)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274721427279833200)
,p_page_template_id=>wwv_flow_api.id(86274720523602833199)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(86274721484757833200)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274721564016833201)
,p_page_template_id=>wwv_flow_api.id(86274721484757833200)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274721704708833201)
,p_page_template_id=>wwv_flow_api.id(86274721484757833200)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(86274721793252833201)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274721883156833201)
,p_page_template_id=>wwv_flow_api.id(86274721793252833201)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274721960187833201)
,p_page_template_id=>wwv_flow_api.id(86274721793252833201)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274722109595833201)
,p_page_template_id=>wwv_flow_api.id(86274721793252833201)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274722156153833201)
,p_page_template_id=>wwv_flow_api.id(86274721793252833201)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274722303047833201)
,p_page_template_id=>wwv_flow_api.id(86274721793252833201)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274722422106833201)
,p_page_template_id=>wwv_flow_api.id(86274721793252833201)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274722495468833201)
,p_page_template_id=>wwv_flow_api.id(86274721793252833201)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274722613625833201)
,p_page_template_id=>wwv_flow_api.id(86274721793252833201)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274722659516833201)
,p_page_template_id=>wwv_flow_api.id(86274721793252833201)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(86274722810051833201)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274782925480833202)
,p_page_template_id=>wwv_flow_api.id(86274722810051833201)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274782978150833202)
,p_page_template_id=>wwv_flow_api.id(86274722810051833201)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274783080521833202)
,p_page_template_id=>wwv_flow_api.id(86274722810051833201)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274783206747833202)
,p_page_template_id=>wwv_flow_api.id(86274722810051833201)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274783338517833202)
,p_page_template_id=>wwv_flow_api.id(86274722810051833201)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274783434809833202)
,p_page_template_id=>wwv_flow_api.id(86274722810051833201)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274783521455833202)
,p_page_template_id=>wwv_flow_api.id(86274722810051833201)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(86274783600039833202)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274783691284833202)
,p_page_template_id=>wwv_flow_api.id(86274783600039833202)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274783814837833202)
,p_page_template_id=>wwv_flow_api.id(86274783600039833202)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274783928092833202)
,p_page_template_id=>wwv_flow_api.id(86274783600039833202)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(86274784102534833203)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274784242246833203)
,p_page_template_id=>wwv_flow_api.id(86274784102534833203)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274784331627833204)
,p_page_template_id=>wwv_flow_api.id(86274784102534833203)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274784365337833204)
,p_page_template_id=>wwv_flow_api.id(86274784102534833203)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274784451087833204)
,p_page_template_id=>wwv_flow_api.id(86274784102534833203)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274784569227833204)
,p_page_template_id=>wwv_flow_api.id(86274784102534833203)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274784745439833204)
,p_page_template_id=>wwv_flow_api.id(86274784102534833203)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274784750941833204)
,p_page_template_id=>wwv_flow_api.id(86274784102534833203)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274784911920833204)
,p_page_template_id=>wwv_flow_api.id(86274784102534833203)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(86274784964169833204)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274785099077833204)
,p_page_template_id=>wwv_flow_api.id(86274784964169833204)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274785232028833204)
,p_page_template_id=>wwv_flow_api.id(86274784964169833204)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274785308116833204)
,p_page_template_id=>wwv_flow_api.id(86274784964169833204)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274785405826833204)
,p_page_template_id=>wwv_flow_api.id(86274784964169833204)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274785535508833204)
,p_page_template_id=>wwv_flow_api.id(86274784964169833204)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274785554131833204)
,p_page_template_id=>wwv_flow_api.id(86274784964169833204)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274785680948833204)
,p_page_template_id=>wwv_flow_api.id(86274784964169833204)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(86274785785122833204)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274785905706833204)
,p_page_template_id=>wwv_flow_api.id(86274785785122833204)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274786001017833204)
,p_page_template_id=>wwv_flow_api.id(86274785785122833204)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274786057809833205)
,p_page_template_id=>wwv_flow_api.id(86274785785122833204)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(86274820848479833232)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(86274820896177833233)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(86274821030070833233)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274786349647833205)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274786400448833205)
,p_plug_template_id=>wwv_flow_api.id(86274786349647833205)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274788149546833207)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274788190880833207)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274788275906833208)
,p_plug_template_id=>wwv_flow_api.id(86274788190880833207)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274788435598833208)
,p_plug_template_id=>wwv_flow_api.id(86274788190880833207)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274788543285833208)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274788564917833208)
,p_plug_template_id=>wwv_flow_api.id(86274788543285833208)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274788727840833208)
,p_plug_template_id=>wwv_flow_api.id(86274788543285833208)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274789375429833208)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274789460482833208)
,p_plug_template_id=>wwv_flow_api.id(86274789375429833208)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274789631754833208)
,p_plug_template_id=>wwv_flow_api.id(86274789375429833208)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274792832421833210)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274792939763833210)
,p_plug_template_id=>wwv_flow_api.id(86274792832421833210)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274793005458833210)
,p_plug_template_id=>wwv_flow_api.id(86274792832421833210)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274794991200833212)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274795882113833213)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274795971273833213)
,p_plug_template_id=>wwv_flow_api.id(86274795882113833213)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274796586271833214)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274796713214833214)
,p_plug_template_id=>wwv_flow_api.id(86274796586271833214)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274797580830833214)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274797943479833215)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274798004105833215)
,p_plug_template_id=>wwv_flow_api.id(86274797943479833215)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274798050502833215)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274798230206833215)
,p_plug_template_id=>wwv_flow_api.id(86274798050502833215)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274798251362833215)
,p_plug_template_id=>wwv_flow_api.id(86274798050502833215)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274801286511833217)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274801379193833218)
,p_plug_template_id=>wwv_flow_api.id(86274801286511833217)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274801459637833218)
,p_plug_template_id=>wwv_flow_api.id(86274801286511833217)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274802457659833219)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(86274802939422833219)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(86274803024914833219)
,p_plug_template_id=>wwv_flow_api.id(86274802939422833219)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(86274811483577833225)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(86274813213281833226)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(86274815562466833228)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(86274816412839833228)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(86274817587044833229)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(86274818104335833230)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(86274818152928833230)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(86274818344213833230)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(86274818398317833230)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(86274819210984833231)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(86274819704924833231)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(86274803517284833220)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(86274803620324833220)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(86274805345848833221)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(86274807649065833222)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(86274807964593833223)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(86274808109950833223)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(86274808109950833223)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(86274809449899833224)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(86274809579444833224)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(86274810554055833225)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(86274820334776833232)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(86274820429436833232)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(86274820547702833232)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(86274820577531833232)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(86274820723719833232)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(86274821416264833234)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(86274821636423833234)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(86274821505013833234)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(86274822183478833236)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(86274784964169833204)
,p_default_dialog_template=>wwv_flow_api.id(86274783600039833202)
,p_error_template=>wwv_flow_api.id(86274721484757833200)
,p_printer_friendly_template=>wwv_flow_api.id(86274784964169833204)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(86274721484757833200)
,p_default_button_template=>wwv_flow_api.id(86274820896177833233)
,p_default_region_template=>wwv_flow_api.id(86274798050502833215)
,p_default_chart_template=>wwv_flow_api.id(86274798050502833215)
,p_default_form_template=>wwv_flow_api.id(86274798050502833215)
,p_default_reportr_template=>wwv_flow_api.id(86274798050502833215)
,p_default_tabform_template=>wwv_flow_api.id(86274798050502833215)
,p_default_wizard_template=>wwv_flow_api.id(86274798050502833215)
,p_default_menur_template=>wwv_flow_api.id(86274802457659833219)
,p_default_listr_template=>wwv_flow_api.id(86274798050502833215)
,p_default_irr_template=>wwv_flow_api.id(86274797580830833214)
,p_default_report_template=>wwv_flow_api.id(86274808109950833223)
,p_default_label_template=>wwv_flow_api.id(86274820429436833232)
,p_default_menu_template=>wwv_flow_api.id(86274821416264833234)
,p_default_calendar_template=>wwv_flow_api.id(86274821505013833234)
,p_default_list_template=>wwv_flow_api.id(86274815562466833228)
,p_default_nav_list_template=>wwv_flow_api.id(86274819210984833231)
,p_default_top_nav_list_temp=>wwv_flow_api.id(86274819210984833231)
,p_default_side_nav_list_temp=>wwv_flow_api.id(86274818344213833230)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(86274788543285833208)
,p_default_dialogr_template=>wwv_flow_api.id(86274788149546833207)
,p_default_option_label=>wwv_flow_api.id(86274820429436833232)
,p_default_required_label=>wwv_flow_api.id(86274820577531833232)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(86274818152928833230)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.1/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#HAMMERJS_URL#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(86274821674585833235)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(86274821771576833236)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(86274821890250833236)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(86274821961988833236)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(86274822052900833236)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274786629199833206)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274786843235833206)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274787068322833207)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274787342104833207)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274788837468833208)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274789032681833208)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274789719319833209)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274790071005833209)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274790743677833209)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274791312043833210)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274791458925833210)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274792414191833210)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274794022453833211)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274795234789833212)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274795617889833213)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274796113829833213)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274796965425833214)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274801644760833218)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274801773707833219)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274802157751833219)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274803079326833219)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274803684355833220)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274803909792833221)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274805523760833221)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274806216084833222)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274806444085833222)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274806844317833222)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274807682411833223)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274808228305833223)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274808490577833223)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274808653452833223)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274809706852833224)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274811586340833226)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274812408879833226)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274813396737833227)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274814127886833227)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274814405105833227)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274814740341833227)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274816108256833228)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274817022754833229)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274819758569833231)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274821072365833233)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274822268496833241)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274822496621833242)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274823303719833242)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274823533521833242)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274824261282833242)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274824492754833242)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274825291067833243)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274825472169833243)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274826253168833243)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274826542916833243)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274826683252833243)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274826859808833244)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274827083824833244)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274827276585833244)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274827513773833244)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274828192437833244)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274828930857833244)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274829428431833245)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274829634627833245)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274829784201833245)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274829971307833246)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274830307826833246)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274830561819833246)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274830765423833246)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274830995021833246)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(86274831154666833246)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Radio Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display for radio group items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274784019887833202)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(86274783600039833202)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274786150939833205)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(86274785785122833204)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274786470109833206)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(86274786349647833205)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274786685809833206)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274786349647833205)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(86274786629199833206)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274786876806833206)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274786349647833205)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(86274786843235833206)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274786975338833207)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274786349647833205)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(86274786843235833206)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274787181794833207)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274786349647833205)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(86274787068322833207)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274787427823833207)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274786349647833205)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(86274787342104833207)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274787454672833207)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274786349647833205)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(86274786629199833206)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274787642719833207)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274786349647833205)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(86274787068322833207)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274787718667833207)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(86274786349647833205)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(86274786629199833206)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274787811415833207)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274786349647833205)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(86274787068322833207)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274787852138833207)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274786349647833205)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(86274786629199833206)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274788034666833207)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274786349647833205)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(86274787342104833207)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274788902484833208)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(86274788543285833208)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274789148537833208)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(86274788543285833208)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(86274789032681833208)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274789203773833208)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(86274788543285833208)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274789292714833208)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(86274788543285833208)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(86274789032681833208)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274789759995833209)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(86274789719319833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274789867417833209)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(86274789719319833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274790044177833209)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(86274789719319833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274790177020833209)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(86274790071005833209)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274790256324833209)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(86274790071005833209)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274790432039833209)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(86274790071005833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274790471019833209)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(86274789719319833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274790589566833209)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(86274790071005833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274790811158833209)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274790916925833209)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274790963291833209)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274791068800833209)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274791225095833209)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274791381445833210)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(86274791312043833210)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274791571543833210)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(86274791458925833210)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274791657003833210)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(86274791312043833210)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274791847049833210)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274791852531833210)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274792020852833210)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274792100945833210)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(86274791458925833210)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274792183062833210)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274792325555833210)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274792476966833210)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(86274792414191833210)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274792573987833210)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(86274792414191833210)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274792727651833210)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274789375429833208)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274793125284833211)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(86274790071005833209)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274793186395833211)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(86274790071005833209)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274793254137833211)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(86274790071005833209)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274793378645833211)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(86274790071005833209)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274793477875833211)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274793618076833211)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274793701694833211)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274793768500833211)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274793942611833211)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274794144979833211)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(86274794022453833211)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274794236855833211)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(86274794022453833211)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274794300605833211)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(86274791458925833210)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274794395743833211)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274794509588833211)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274794616612833211)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274794684284833211)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274794793170833211)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(86274791458925833210)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274794885952833212)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274792832421833210)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274795085164833212)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274794991200833212)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274795320146833212)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274794991200833212)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(86274795234789833212)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274795360771833213)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274794991200833212)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(86274795234789833212)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274795485690833213)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274794991200833212)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(86274795234789833212)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274795667281833213)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274794991200833212)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(86274795617889833213)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274795822915833213)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274794991200833212)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(86274795617889833213)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274796194648833213)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274795882113833213)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(86274796113829833213)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274796295886833213)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274795882113833213)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274796418486833214)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274795882113833213)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274796511312833214)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274795882113833213)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274796807945833214)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(86274796586271833214)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274796912706833214)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274796586271833214)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274797083038833214)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274796586271833214)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(86274796965425833214)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274797201834833214)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274796586271833214)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(86274796965425833214)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274797281802833214)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274796586271833214)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274797363652833214)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274796586271833214)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274797503967833214)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274796586271833214)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(86274796965425833214)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274797680905833214)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274797580830833214)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274797779929833214)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274797580830833214)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274798429154833216)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(86274790071005833209)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274798485055833216)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(86274790071005833209)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274798621704833216)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(86274790071005833209)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274798651124833216)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(86274790071005833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274798774189833216)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274798855492833216)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274798971099833216)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274799137040833216)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274799156803833216)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274799319753833216)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274799401009833217)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274799523775833217)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274799646482833217)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274799653091833217)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274799823415833217)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274799911277833217)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274799996004833217)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274800108593833217)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274800223407833217)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(86274790743677833209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274800319426833217)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(86274791312043833210)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274800440325833217)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(86274791458925833210)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274800462854833217)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(86274791312043833210)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274800555783833217)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274800686271833217)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274800792870833217)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274800877625833217)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(86274791458925833210)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274800990028833217)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274801123298833217)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274801167920833217)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(86274798050502833215)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(86274788837468833208)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274801728045833218)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274801286511833217)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(86274801644760833218)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274801872080833219)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274801286511833217)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(86274801773707833219)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274802006555833219)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274801286511833217)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274802057818833219)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274801286511833217)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(86274801773707833219)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274802298956833219)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274801286511833217)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(86274802157751833219)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274802395465833219)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274801286511833217)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(86274802157751833219)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274802558003833219)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(86274802457659833219)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(86274795234789833212)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274802685788833219)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(86274802457659833219)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274802808534833219)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(86274802457659833219)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(86274795234789833212)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274803197260833219)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(86274802939422833219)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(86274803079326833219)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274803260362833220)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274802939422833219)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(86274803079326833219)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274803428989833220)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(86274802939422833219)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274803829950833221)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(86274803684355833220)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274803999459833221)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274804098464833221)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(86274803684355833220)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274804226238833221)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274804285951833221)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(86274803684355833220)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274804387306833221)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274804502343833221)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274804602862833221)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(86274803684355833220)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274804734222833221)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(86274803684355833220)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274804811047833221)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274804942910833221)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274805042242833221)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274805083970833221)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274805186064833221)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274803620324833220)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274805355538833221)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274805559466833222)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(86274805523760833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274805668164833222)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274805794802833222)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(86274805523760833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274805910139833222)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274806047688833222)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(86274805523760833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274806127845833222)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274806257007833222)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(86274806216084833222)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274806524726833222)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(86274806444085833222)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274806599480833222)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(86274806444085833222)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274806683654833222)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(86274806216084833222)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274806892419833222)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(86274806844317833222)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274806992703833222)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(86274806844317833222)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274807111168833222)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(86274806216084833222)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274807242372833222)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274807255707833222)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(86274805523760833221)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274807395317833222)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274807488576833222)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274805345848833221)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274807842480833223)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274807649065833222)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(86274807682411833223)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274807875756833223)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274807649065833222)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(86274807682411833223)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274808312486833223)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274808109950833223)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(86274808228305833223)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274808359546833223)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274808109950833223)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(86274808228305833223)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274808612707833223)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274808109950833223)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(86274808490577833223)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274808808040833223)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274808109950833223)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(86274808653452833223)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274808882237833223)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(86274808109950833223)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(86274808653452833223)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274808980046833224)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(86274808109950833223)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(86274808653452833223)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274809124710833224)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274808109950833223)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(86274808490577833223)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274809247384833224)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274808109950833223)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274809310341833224)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274808109950833223)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(86274808653452833223)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274809548953833224)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(86274809449899833224)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(86274806216084833222)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274809773859833224)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(86274809579444833224)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(86274809706852833224)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274809880776833224)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274809579444833224)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(86274809706852833224)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274810030898833224)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274809579444833224)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(86274809706852833224)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274810079878833224)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274809579444833224)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274810204338833224)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274809579444833224)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274810330978833224)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(86274809579444833224)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(86274809706852833224)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274810372683833224)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(86274809579444833224)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(86274809706852833224)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274810531081833224)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(86274809579444833224)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(86274809706852833224)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274810672214833225)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(86274810554055833225)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(86274809706852833224)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274810778128833225)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274810554055833225)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(86274809706852833224)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274810948048833225)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274810554055833225)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(86274809706852833224)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274811024309833225)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(86274810554055833225)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274811142196833225)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(86274810554055833225)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(86274803909792833221)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274811237485833225)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(86274810554055833225)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(86274809706852833224)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274811283983833225)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(86274810554055833225)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(86274809706852833224)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274811375953833225)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(86274810554055833225)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(86274809706852833224)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274811745421833226)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274811833646833226)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274811885568833226)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274811954506833226)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274812085629833226)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274812159247833226)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274812270124833226)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274812497273833226)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(86274812408879833226)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274812586311833226)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(86274812408879833226)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274812670261833226)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274812800588833226)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(86274812408879833226)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274812877171833226)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274812975584833226)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(86274812408879833226)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274813095410833226)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(86274811483577833225)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(86274812408879833226)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274813309898833227)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274813485394833227)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(86274813396737833227)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274813619234833227)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274813712667833227)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(86274813396737833227)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274813801840833227)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274813905810833227)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(86274813396737833227)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274813966484833227)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274814166263833227)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(86274814127886833227)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274814269306833227)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274814535945833227)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(86274814405105833227)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274814606592833227)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(86274814127886833227)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274814791182833227)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(86274814740341833227)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274814851408833227)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(86274814740341833227)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274814952419833227)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(86274814127886833227)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274815055211833227)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274815177540833227)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(86274813396737833227)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274815306999833227)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(86274814405105833227)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274815378214833227)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274815543636833228)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274813213281833226)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274815712661833228)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274815562466833228)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(86274814127886833227)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274815769939833228)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(86274815562466833228)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274815859497833228)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274815562466833228)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274815954385833228)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274815562466833228)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274816206639833228)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274815562466833228)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(86274816108256833228)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274816274601833228)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274815562466833228)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(86274816108256833228)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274816500087833228)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274816412839833228)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274816638146833228)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274816412839833228)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274816733992833229)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(86274816412839833228)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274816767324833229)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(86274816412839833228)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274816903054833229)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(86274816412839833228)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274817061638833229)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274816412839833228)
,p_css_classes=>'t-MediaList--large'
,p_group_id=>wwv_flow_api.id(86274817022754833229)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274817187668833229)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(86274816412839833228)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274817295653833229)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274816412839833228)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274817376573833229)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274816412839833228)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274817496790833229)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(86274816412839833228)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274817655396833229)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(86274817587044833229)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274817821268833230)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274817587044833229)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274817853501833230)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274817587044833229)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274818034006833230)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(86274817587044833229)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274818491236833230)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274818398317833230)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(86274814740341833227)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274818586653833230)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(86274818398317833230)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(86274811586340833226)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274818667805833230)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274818398317833230)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(86274814740341833227)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274818765004833230)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274818398317833230)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(86274817022754833229)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274818923874833231)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274818398317833230)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(86274814127886833227)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274818989448833231)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274818398317833230)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(86274814127886833227)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274819050880833231)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(86274818398317833230)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(86274817022754833229)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274819279846833231)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(86274819210984833231)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274819363078833231)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(86274819210984833231)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274819503142833231)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(86274819210984833231)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274819575061833231)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(86274819210984833231)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274819918483833231)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274819704924833231)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(86274819758569833231)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274820012186833231)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(86274819704924833231)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(86274819758569833231)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274820117747833231)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(86274819704924833231)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(86274819758569833231)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274820157154833231)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(86274819704924833231)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274821194935833233)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(86274821072365833233)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274821280489833233)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(86274821072365833233)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274822407050833241)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(86274822268496833241)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274822562579833242)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(86274822496621833242)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274822659974833242)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(86274822268496833241)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274822805846833242)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(86274822496621833242)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274822876405833242)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(86274822268496833241)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274822998843833242)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(86274822496621833242)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274823125919833242)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(86274822268496833241)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274823154424833242)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(86274822496621833242)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274823436075833242)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(86274823303719833242)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274823625895833242)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(86274823533521833242)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274823726610833242)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(86274823303719833242)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274823790685833242)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(86274823533521833242)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274823935667833242)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(86274823303719833242)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274824028411833242)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(86274823533521833242)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274824119942833242)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(86274823303719833242)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274824244334833242)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(86274823533521833242)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274824375991833242)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(86274824261282833242)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274824621516833242)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(86274824492754833242)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274824702353833242)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(86274824261282833242)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274824771293833243)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(86274824492754833242)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274824948484833243)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(86274824261282833242)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274824963122833243)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(86274824492754833242)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274825083919833243)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(86274824261282833242)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274825188604833243)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(86274824492754833242)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274825438193833243)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(86274825291067833243)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274825583826833243)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(86274825472169833243)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274825715492833243)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(86274825291067833243)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274825762816833243)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(86274825472169833243)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274825931331833243)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(86274825291067833243)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274825964744833243)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(86274825472169833243)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274826082089833243)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(86274825291067833243)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274826183158833243)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(86274825472169833243)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274826434671833243)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(86274826253168833243)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274826647144833243)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(86274826542916833243)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274826830274833244)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(86274826683252833243)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274827002509833244)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(86274826859808833244)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274827162267833244)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(86274827083824833244)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274827422112833244)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(86274827276585833244)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274827634335833244)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(86274827513773833244)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274827731205833244)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(86274827513773833244)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274827800201833244)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(86274826542916833243)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274827903517833244)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(86274826683252833243)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274828040888833244)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(86274826859808833244)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274828126379833244)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(86274827083824833244)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274828283809833244)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(86274828192437833244)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274828420285833244)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(86274828192437833244)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274828543209833244)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(86274828192437833244)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274828570504833244)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(86274826253168833243)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274828720427833244)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(86274827513773833244)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274828849514833244)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(86274827276585833244)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274828985683833244)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(86274828930857833244)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274829118938833245)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(86274826253168833243)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274829243402833245)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(86274827276585833244)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274829313824833245)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(86274826253168833243)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274829546337833245)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(86274829428431833245)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274829651122833245)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(86274829634627833245)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274829923628833245)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(86274829784201833245)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274830052722833246)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(86274829971307833246)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274830168696833246)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(86274829971307833246)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274830385005833246)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(86274830307826833246)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274830479679833246)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(86274829634627833245)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274830693103833246)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(86274830561819833246)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274830925468833246)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(86274830765423833246)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274831055711833246)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(86274830995021833246)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274831342193833246)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(86274831154666833246)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274831445485833246)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(86274831477341833246)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(86274830561819833246)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(44398198569541576360)
,p_name=>'xxiwCustomAuthentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'xxiw_admin_util_pkg.authenticate'
,p_attribute_05=>'N'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(86274831873051833248)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(86274831723813833247)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&SESSION.'
,p_theme_style_by_user_pref=>true
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(86274719518734833196)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(86274818344213833230)
,p_nav_list_template_options=>'#DEFAULT#'
,p_css_file_urls=>'#IMAGE_PREFIX#pkgapp_ui/css/5.0#MIN#.css'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(86274831618988833247)
,p_nav_bar_list_template_id=>wwv_flow_api.id(86274818152928833230)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'Default Page'
,p_page_mode=>'NORMAL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180228133451'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(86687947874752429773)
,p_plug_name=>'Title Bar'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274802457659833219)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(86274833017621833253)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(86274821416264833234)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'1,28,31,29,13,4,16,24,25,26,27,3,8,6,18,22,19,14,7,20'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'&APPLICATION_TITLE.'
,p_alias=>'HOME'
,p_page_mode=>'NORMAL'
,p_step_title=>'&APPLICATION_TITLE.'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(86274784964169833204)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180306115319'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44519516454245667903)
,p_name=>'Notification'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--horizontalBorders'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'xia.ir_approval_id,',
'xia.item_request_id,',
'xia.approver_name,',
'xia.approver_id,',
'xia.last_update_date,',
'xir.request_description,',
'xia.comments,',
'xuv.user_name from_user,',
'xia.subject',
'FROM xxiw_ir_approvals xia,',
'xxiw_item_requests xir,',
'xxiw_users_v xuv',
'WHERE 1=1',
'and xia.enabled_flag=''Yes''',
'and xia.status<>''REQUEST_INFO''',
'and xir.item_request_id=xia.item_request_id',
'and xuv.user_id(+)=xia.created_by',
'and upper(xia.approver_name)=upper(:APP_USER)',
'union all',
'SELECT',
'xia.ir_approval_id,',
'xia.item_request_id,',
'xia.approver_name,',
'xia.approver_id,',
'xia.last_update_date,',
'xir.request_description,',
'xia.comments,',
'xuv.user_name from_user,',
'xia.subject',
'FROM xxiw_ir_approvals xia,',
'xxiw_item_requests xir,',
'xxiw_users_v xuv,',
'xxiw_users_v xuv2',
'WHERE 1=1',
'and xia.status in (''REQUEST_INFO'',''REJECTED'',''APPROVED'')',
'and xia.enabled_flag=''Yes''',
'and xir.item_request_id=xia.item_request_id',
'and xuv.user_id(+)=xia.created_by',
'and xuv2.user_id=xir.created_by',
'and upper(xuv2.user_name)=upper(:APP_USER)',
'order by last_update_date desc'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_row_count_max=>20
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44519516544414667904)
,p_query_column_id=>1
,p_column_alias=>'IR_APPROVAL_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44519516666641667905)
,p_query_column_id=>2
,p_column_alias=>'ITEM_REQUEST_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44519516765381667906)
,p_query_column_id=>3
,p_column_alias=>'APPROVER_NAME'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44519516818098667907)
,p_query_column_id=>4
,p_column_alias=>'APPROVER_ID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44519516938619667908)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'<spab class="u-VisuallyHidden">LAST_UPDATE_DATE</span>'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE_SHORT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44519517050286667909)
,p_query_column_id=>6
,p_column_alias=>'REQUEST_DESCRIPTION'
,p_column_display_sequence=>5
,p_column_heading=>'Requests'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="f?p=&APP_ID.:5:&APP_SESSION.::NO:RP:P5_REQUEST_ID,P5_DESCRIPTION,P5_IR_APPROVAL_ID:#ITEM_REQUEST_ID#,#REQUEST_DESCRIPTION#,#IR_APPROVAL_ID#">',
'#SUBJECT#</a><br/>',
'<strong>#ITEM_REQUEST_ID#: #REQUEST_DESCRIPTION# </strong><br/>',
'<small>#COMMENTS# </small><br/>',
'<small>Assigned by #FROM_USER# </small>'))
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51351706721477795101)
,p_query_column_id=>7
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51351706878626795102)
,p_query_column_id=>8
,p_column_alias=>'FROM_USER'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52198437439540804401)
,p_query_column_id=>9
,p_column_alias=>'SUBJECT'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51351707999792795113)
,p_plug_name=>'Request Summary'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(86274798050502833215)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(51351708053505795114)
,p_region_id=>wwv_flow_api.id(51351707999792795113)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(51351708104778795115)
,p_chart_id=>wwv_flow_api.id(51351708053505795114)
,p_seq=>10
,p_name=>'Chart'
,p_data_source_type=>'SQL_QUERY'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT status request_status,',
'       COUNT(xir.item_request_id) request_count',
' FROM xxiw_item_requests xir',
'GROUP BY status'))
,p_series_name_column_name=>'REQUEST_STATUS'
,p_items_value_column_name=>'REQUEST_COUNT'
,p_group_name_column_name=>'REQUEST_STATUS'
,p_items_label_column_name=>'REQUEST_STATUS'
,p_color=>'#22396A'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(51351708576572795119)
,p_chart_id=>wwv_flow_api.id(51351708053505795114)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(51351708623198795120)
,p_chart_id=>wwv_flow_api.id(51351708053505795114)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(51351708739732795121)
,p_chart_id=>wwv_flow_api.id(51351708053505795114)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(52512434342756014704)
,p_name=>'Updates'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--horizontalBorders'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'xir.item_request_id,',
'xir.request_description,',
'xic.ir_comment_id,',
'xic.comments,',
'xu.user_name commented_by,',
'xic.creation_date creation_date',
'FROM xxiw_item_requests xir,',
'xxiw_ir_comments xic,',
'xxiw_users_v xu',
'where xir.item_request_id=xic.item_request_id',
'and xic.created_by=xu.user_id',
'and xir.item_request_id in ',
'(select xia.item_request_id',
'from xxiw_ir_approvals xia,',
'xxiw_users_v xuv',
'where xuv.user_id=xia.created_by',
'and upper(xuv.user_name)=upper(:APP_USER)',
'UNION',
'select xia.item_request_id',
'from xxiw_ir_approvals xia',
'where upper(xia.approver_name)=upper(:APP_USER)',
')',
'and upper(xu.user_name) <>  upper(:APP_USER)',
'and rownum <20',
'order by xic.ir_comment_id desc'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_row_count_max=>20
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52512434781165014708)
,p_query_column_id=>1
,p_column_alias=>'ITEM_REQUEST_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52512435349343014714)
,p_query_column_id=>2
,p_column_alias=>'REQUEST_DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Comments'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="f?p=&APP_ID.:5:&APP_SESSION.::NO:RP:P5_REQUEST_ID,P5_DESCRIPTION:#ITEM_REQUEST_ID#,#REQUEST_DESCRIPTION#">',
'#ITEM_REQUEST_ID#: #REQUEST_DESCRIPTION#</a><br/>',
'<small>#COMMENTS# </small><br/>',
'<small>Commented by #COMMENTED_BY# on #CREATION_DATE# </small>'))
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52512436101304014722)
,p_query_column_id=>3
,p_column_alias=>'IR_COMMENT_ID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52512434938219014710)
,p_query_column_id=>4
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52512436265756014723)
,p_query_column_id=>5
,p_column_alias=>'COMMENTED_BY'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52512436328742014724)
,p_query_column_id=>6
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52512435557776014716)
,p_plug_name=>'Request Summary'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(86274798050502833215)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52512435612767014717)
,p_region_id=>wwv_flow_api.id(52512435557776014716)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52512435716229014718)
,p_chart_id=>wwv_flow_api.id(52512435612767014717)
,p_seq=>10
,p_name=>'Chart'
,p_data_source_type=>'SQL_QUERY'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT status request_status,',
'       COUNT(xir.item_request_id) request_count',
' FROM xxiw_item_requests xir',
'GROUP BY status'))
,p_series_name_column_name=>'REQUEST_STATUS'
,p_items_value_column_name=>'REQUEST_COUNT'
,p_group_name_column_name=>'REQUEST_STATUS'
,p_items_label_column_name=>'REQUEST_STATUS'
,p_color=>'#22396A'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52512435849622014719)
,p_chart_id=>wwv_flow_api.id(52512435612767014717)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52512435959898014720)
,p_chart_id=>wwv_flow_api.id(52512435612767014717)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52512436084741014721)
,p_chart_id=>wwv_flow_api.id(52512435612767014717)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(86274833527016833255)
,p_plug_name=>'&APPLICATION_TITLE.'
,p_icon_css_classes=>'fa-ticket'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274795882113833213)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ( select ''Track and Manage Item Request Process'' preference_value',
'            from dual',
'          ) loop',
'    sys.htp.p(''<p>''||apex_escape.html(c1.preference_value)||''</p>'');',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50059942767486539924)
,p_plug_name=>'materOrg'
,p_parent_plug_id=>wwv_flow_api.id(86274833527016833255)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44519517173665667910)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44519516454245667903)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(86274820848479833232)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44519517212503667911)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(44519516454245667903)
,p_button_name=>'VIEW_REQUESTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(86274820848479833232)
,p_button_image_alt=>'View Requests'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2,RIR::'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50059942511777539922)
,p_name=>'P1_DEFAULT_MASTER_ORG'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50059942767486539924)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return :DEFAULT_MASTER_ORG;',
'end;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select XMO.organization_code d,',
'XMO.organization_code r',
'from xxiw_ir_setups xis,',
'xxiw_mst_organizations_v xmo',
'WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(start_date,SYSDATE)) AND TRUNC(NVL(end_date,SYSDATE))',
';'))
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50059942828139539925)
,p_name=>'Change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DEFAULT_MASTER_ORG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50059943300196539930)
,p_event_id=>wwv_flow_api.id(50059942828139539925)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50059943411312539931)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ChangeOrganization'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':DEFAULT_MASTER_ORG:=:P1_DEFAULT_MASTER_ORG;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Default Master Organization has been changed to &P1_DEFAULT_MASTER_ORG.'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'Requests'
,p_page_mode=>'NORMAL'
,p_step_title=>'Requests'
,p_step_sub_title=>'Requests'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180221091734'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43678379536093907916)
,p_plug_name=>'About Requests'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<small><i><p>Item Request to be created for creating items in Oracle apps using IWB',
'<br>Click on column headings to sort and filter specific columns. Click the Action button to control column selection and view additional options. </p></i></small>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(86276834816618222445)
,p_plug_name=>'Requests'
,p_region_template_options=>'js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274797580830833214)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select xir.item_request_id,',
'xir.request_description,',
'xir.request_type,',
'xir.status status,',
'TO_CHAR (xir.creation_date, ''DD-MON-YYYY'') creation_date,',
'xuv.user_name requester,',
'xir.organization_code,',
'xir.item_number,',
'null copy',
'from xxiw_item_requests xir,',
'     xxiw_users_v xuv',
'where xir.created_by=xuv.user_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(86276834941055222446)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'BK.ELEX@GMAIL.COM'
,p_internal_uid=>86276834941055222446
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43678379079117907911)
,p_db_column_name=>'ITEM_REQUEST_ID'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'Request#'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_REQUEST_ID,P5_DESCRIPTION:#ITEM_REQUEST_ID#,#REQUEST_DESCRIPTION#'
,p_column_linktext=>'#ITEM_REQUEST_ID#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch t-Button--small"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43678379156330907912)
,p_db_column_name=>'REQUEST_DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43678379237142907913)
,p_db_column_name=>'REQUEST_TYPE'
,p_display_order=>30
,p_column_identifier=>'H'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43550057590502370861)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43550057904353370861)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Creation Date'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51137862013751254031)
,p_db_column_name=>'REQUESTER'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Requester'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43678379391113907914)
,p_db_column_name=>'ORGANIZATION_CODE'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Organization'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43678379480148907915)
,p_db_column_name=>'ITEM_NUMBER'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Item#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51351707035693795104)
,p_db_column_name=>'COPY'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Copy'
,p_column_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:RP,28:P28_OLD_REQUEST_ID,P28_OLD_DESCRIPTION:#ITEM_REQUEST_ID#,#REQUEST_DESCRIPTION#'
,p_column_linktext=>'<span class="t-Icon fa fa-window-restore"></span><span class="u-VisuallyHidden">Copy Request</span>'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--warning t-Button--small t-Button--noLabel t-Button--icon t-Button--iconOnly t-Button--stretch"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(86411886437169461342)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'435500583'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ITEM_REQUEST_ID:REQUEST_DESCRIPTION:REQUEST_TYPE:STATUS:CREATION_DATE:REQUESTER:ORGANIZATION_CODE:ITEM_NUMBER::COPY'
,p_sort_column_1=>'ITEM_REQUEST_ID'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43545583097229989506)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'CREATE_REQUEST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Request'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_REQUEST_TYPE:New'
,p_icon_css_classes=>'fa-caret-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43550058705422370866)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(86276834816618222445)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820848479833232)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'createUpdateRequest'
,p_page_mode=>'MODAL'
,p_step_title=>'Request'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180306093256'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(86275415303348880485)
,p_plug_name=>'Request'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs:t-Form--labelsAbove:margin-top-sm'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(86275415587482880488)
,p_plug_name=>'FooterRN'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(86275416780213880500)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(86275415587482880488)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(86275415708539880489)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(86275415587482880488)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(86275417118422880503)
,p_branch_name=>'GotoPageRequestEdit'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,5:P5_REQUEST_ID,P5_DESCRIPTION:&P3_REQUEST_ID.,&P3_DESCRIPTION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P3_STATUS'
,p_branch_condition_text=>'S'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43787929861654378108)
,p_name=>'P3_REQUEST_TYPE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086060506766922808)
,p_name=>'P3_PO_CATEGORY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_prompt=>'Purchasing Category'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct purchasing_category d, purchasing_category r',
'from xxiw_attribute_association',
'WHERE enabled_flag=''Yes''',
'and item_category =:P3_ITEM_CATEGORY',
'AND trunc(sysdate) between trunc(nvl(start_date,sysdate)) and trunc(nvl(end_date,sysdate))'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P3_ITEM_CATEGORY'
,p_ajax_items_to_submit=>'P3_ITEM_CATEGORY'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820547702833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51955911586162560126)
,p_name=>'P3_ATTRIBUTE_GROUP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86275415432269880486)
,p_name=>'P3_REQUEST_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86275415525172880487)
,p_name=>'P3_STATUS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86275415838339880490)
,p_name=>'P3_DESCRIPTION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86275415881674880491)
,p_name=>'P3_ORGANIZATION_CODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_prompt=>'Master Organization'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'XXIW_INV_MST_ORGS_LOV'
,p_lov=>'select organization_code d, organization_code r from xxiw_mst_organizations_v'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P3_REQUEST_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86275415994142880492)
,p_name=>'P3_UOM'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  xt.unit_of_measure  D, xt.unit_of_measure r',
'FROM xxiw_ir_uom_setups xit,',
'xxiw_units_of_measure_v xt',
'WHERE xit.uom_code=xt.uom_code',
'AND xit.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xit.start_date,SYSDATE)) AND TRUNC(NVL(xit.end_date,SYSDATE))',
'and xit.setup_id in (select xis.setup_id',
'from xxiw_ir_setups xis,',
'xxiw_mst_organizations_v xmo',
'WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(start_date,SYSDATE)) AND TRUNC(NVL(end_date,SYSDATE))',
'AND xmo.organization_code=:P3_ORGANIZATION_CODE',
'and xis.uom_enabled in (''Yes'',''Both''))',
'union all ',
'select xt.unit_of_measure  D, xt.unit_of_measure r',
'from xxiw_units_of_measure_v xt',
'where 1=1',
'and 1 in (select decode(xis.uom_enabled,''Yes'',2,1)',
'from xxiw_ir_setups xis,',
'xxiw_mst_organizations_v xmo',
'WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(start_date,SYSDATE)) AND TRUNC(NVL(end_date,SYSDATE))',
'AND xmo.organization_code=:P3_ORGANIZATION_CODE)',
'AND 1=nvl((select decode(xis.uom_enabled,''Both'',2,1) from xxiw_ir_uom_setups xits, ',
'                                                        xxiw_ir_setups xis,',
'														xxiw_mst_organizations_v xmo',
'							WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'and xis.uom_enabled in (''No'',''Both'')',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xis.start_date,SYSDATE)) AND TRUNC(NVL(xis.end_date,SYSDATE))',
'AND xits.uom_code=xt.uom_code',
'AND xmo.organization_code=:P3_ORGANIZATION_CODE',
'AND xits.setup_id=xis.setup_id',
'AND xits.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xits.start_date,SYSDATE)) AND TRUNC(NVL(xits.end_date,SYSDATE))),1)'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P3_ORGANIZATION_CODE'
,p_ajax_items_to_submit=>'P3_ORGANIZATION_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86275416083362880493)
,p_name=>'P3_ITEM_CATEGORY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_prompt=>'Item Category'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct item_category d, item_category r',
'from xxiw_attribute_association',
'WHERE enabled_flag=''Yes''',
'AND trunc(sysdate) between trunc(nvl(start_date,sysdate)) and trunc(nvl(end_date,sysdate))'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(86274820547702833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86275416205101880494)
,p_name=>'P3_TEMPLATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_prompt=>'Template'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  xt.template_name  D, xt.template_name r',
'FROM xxiw_ir_template_setups xit,',
'xxiw_templates_v xt',
'WHERE xit.template_id=xt.template_id',
'AND xit.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xit.start_date,SYSDATE)) AND TRUNC(NVL(xit.end_date,SYSDATE))',
'and xit.setup_id in (select xis.setup_id',
'from xxiw_ir_setups xis,',
'xxiw_mst_organizations_v xmo',
'WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(start_date,SYSDATE)) AND TRUNC(NVL(end_date,SYSDATE))',
'AND xmo.organization_code=:P3_ORGANIZATION_CODE',
'and xis.template_enabled in (''Yes'',''Both''))',
'union all ',
'select xt.template_name  D, xt.template_name r',
'from xxiw_templates_v xt',
'where 1=1',
'and 1 in (select decode(xis.template_enabled,''Yes'',2,1)',
'from xxiw_ir_setups xis,',
'xxiw_mst_organizations_v xmo',
'WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(start_date,SYSDATE)) AND TRUNC(NVL(end_date,SYSDATE))',
'AND xmo.organization_code=:P3_ORGANIZATION_CODE)',
'AND 1=nvl((select decode(xis.template_enabled,''Both'',2,1) from xxiw_ir_template_setups xits, ',
'                                                        xxiw_ir_setups xis,',
'														xxiw_mst_organizations_v xmo',
'							WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'and xis.template_enabled in (''No'',''Both'')',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xis.start_date,SYSDATE)) AND TRUNC(NVL(xis.end_date,SYSDATE))',
'AND xits.template_id=xt.template_id',
'AND xmo.organization_code=:P3_ORGANIZATION_CODE',
'AND xits.setup_id=xis.setup_id',
'AND xits.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xits.start_date,SYSDATE)) AND TRUNC(NVL(xits.end_date,SYSDATE))),1)'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P3_ORGANIZATION_CODE'
,p_ajax_items_to_submit=>'P3_ORGANIZATION_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86275416458077880497)
,p_name=>'P3_ENABLED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_item_default=>'''Yes'''
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Enabled'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'XXIW_YES_NO_LOV'
,p_lov=>'.'||wwv_flow_api.id(43788555080813419092)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86275416585143880498)
,p_name=>'P3_START_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_item_default=>'xxiw_admin_util_pkg.get_default_date'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86275416690975880499)
,p_name=>'P3_END_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(86275415303348880485)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(86275416914689880501)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FetchProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF(:P3_REQUEST_ID IS NOT NULL) THEN',
'    SELECT xir.request_description,',
'	      xir.organization_code,',
'	      xir.template_name,',
'		  xir.unit_of_measure,',
'		  xir.item_category,',
'		  xir.purchasing_category,',
'		  xir.request_type,',
'          xir.enabled_flag,',
'          to_char(xir.start_date,''DD-Mon-YYYY'') start_date,',
'          to_char(xir.end_date,''DD-Mon-YYYY'') end_date',
'       INTO ',
'	      :p3_description,',
'		  :p3_organization_code,',
'		  :p3_template,',
'		  :p3_uom,',
'		  :p3_item_category,',
'		  :p3_po_category,',
'		  :p3_request_type,',
'          :p3_enabled,',
'	      :p3_start_date,',
'	      :p3_end_date',
'    FROM xxiw_item_requests xir',
'    WHERE 1         =1',
'    AND xir.item_request_id=:P3_REQUEST_ID;	',
'  ELSE',
'    :p3_description:=NULL;',
'    :p3_organization_code:=NULL;',
'	:p3_template:=NULL;',
'	:p3_uom:=NULL;',
'	:p3_item_category:=NULL;',
'	:p3_po_category:=NULL;',
'	--:p3_request_type:=NULL;',
'    :p3_enabled:=NULL;',
'	:p3_start_date:=NULL;',
'	:p3_end_date:=NULL;',
'  END IF;',
'EXCEPTION',
'WHEN OTHERS THEN',
'    :p3_description:=NULL;',
'    :p3_organization_code:=NULL;',
'	:p3_template:=NULL;',
'	:p3_uom:=NULL;',
'	:p3_item_category:=NULL;',
'	:p3_po_category:=NULL;',
'	--:p3_request_type:=NULL;',
'    :p3_enabled:=NULL;',
'	:p3_start_date:=NULL;',
'	:p3_end_date:=NULL;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(86275417043482880502)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode        NUMBER;',
'  x_errbuf         VARCHAR2(4000);',
'  l_user_id        NUMBER;',
'  l_msg            VARCHAR2(3000);',
'  l_item_request_id number;',
'  l_org_assignments xxiw_ir_utils_pkg.org_assignments_type;',
'  end_date_error   EXCEPTION;',
'  l_end_date_error VARCHAR2(1000);',
'  l_categories xxiw_ir_utils_pkg.ir_categories_type;',
'  l_categories_po xxiw_ir_utils_pkg.ir_categories_type;',
'  l_item_category_id number;',
'  l_po_category_id number;',
'  l_item_category_old VARCHAR2(300);',
'  l_po_category_old VARCHAR2(300);',
'  l_organization_code_old VARCHAR2(300);',
'  l_org_assinment_id NUMBER;',
'BEGIN',
'  l_user_id:=xxiw_admin_util_pkg.get_userid(:app_user);',
'  ',
' IF(:P3_REQUEST_ID IS NOT NULL) THEN',
' ',
' BEGIN',
'  SELECT item_category,purchasing_category,organization_code',
'   into l_item_category_old,l_po_category_old,l_organization_code_old',
'  FROM xxiw_item_requests',
'  WHERE item_request_id=:P3_REQUEST_ID;',
'  EXCEPTION WHEN OTHERS THEN ',
'  l_item_category_old:=null;',
'  l_po_category_old:=null;',
'  l_organization_code_old:=null;',
'  END;',
' ',
'  BEGIN',
'  SELECT org_assinment_id',
'   into l_org_assinment_id',
'  FROM xxiw_org_assignments',
'  WHERE organization_code=l_organization_code_old',
'   and item_request_id=:P3_REQUEST_ID;',
'  EXCEPTION WHEN OTHERS THEN ',
'  l_org_assinment_id:=null;',
'  END;',
'  ',
'  BEGIN',
'  SELECT ir_category_id',
'   into l_item_category_id',
'  FROM xxiw_ir_categories',
'  WHERE category_name=l_item_category_old',
'   and item_request_id=:P3_REQUEST_ID;',
'  EXCEPTION WHEN OTHERS THEN ',
'  l_item_category_id:=null;',
'  END;',
'  ',
'  BEGIN',
'  SELECT ir_category_id',
'   into l_po_category_id',
'  FROM xxiw_ir_categories',
'  WHERE category_name=l_po_category_old',
'   and item_request_id=:P3_REQUEST_ID;',
'  EXCEPTION WHEN OTHERS THEN ',
'      l_po_category_id:=null;',
'  END;',
'  ',
' END IF;',
' ',
'  IF(:P3_DESCRIPTION IS NOT NULL) THEN',
'    xxiw_ir_utils_pkg.create_update_item_request(',
'	p_item_request_id =>:P3_REQUEST_ID, ',
'	p_request_desc =>:P3_DESCRIPTION, ',
'	p_organization_code =>:P3_ORGANIZATION_CODE, ',
'	p_template_name =>:P3_TEMPLATE, ',
'	p_unit_of_measure =>:P3_UOM, ',
'	p_item_category =>:P3_ITEM_CATEGORY, ',
'	p_purchasing_category =>:P3_PO_CATEGORY, ',
'	p_request_type => :p3_request_type,',
'	p_enabled_flag =>:P3_ENABLED, ',
'	p_start_date =>:p3_start_date, ',
'	p_end_date =>:p3_end_date, ',
'	p_creation_date => sysdate, ',
'	p_created_by => l_user_id, ',
'	p_last_update_date => sysdate, ',
'	p_last_updated_by =>l_user_id, ',
'	p_retcode =>x_retcode, ',
'	p_errbuf =>x_errbuf,',
'    x_item_request_id=>l_item_request_id);',
'    :p3_status:=''S'';',
'    :P3_REQUEST_ID:=l_item_request_id;',
'	',
'	IF(l_item_request_id is not null ) then',
'   l_org_assignments(1).org_assinment_id  := l_org_assinment_id;',
'   l_org_assignments(1).item_request_id  := l_item_request_id ; ',
'   l_org_assignments(1).organization_code := :P3_ORGANIZATION_CODE;',
'   l_org_assignments(1).template_name     := :P3_TEMPLATE;',
'   l_org_assignments(1).enabled_flag      := :P3_ENABLED;',
'   l_org_assignments(1).start_date        := :p3_start_date;',
'   l_org_assignments(1).end_date          := :p3_end_date;',
'    IF (l_org_assignments(1).end_date        IS NOT NULL AND to_date(l_org_assignments(1).end_date,''DD-MON-YYYY'') < to_date(l_org_assignments(1).start_date,''DD-MON-YYYY'') ) THEN',
'      raise end_date_error;',
'    END IF;',
'  xxiw_ir_utils_pkg.create_update_org_assignments( ',
'  p_org_assignments => l_org_assignments , ',
'  p_creation_date => sysdate, ',
'  p_created_by => l_user_id, ',
'  p_last_update_date => sysdate, ',
'  p_last_updated_by =>l_user_id, ',
'  p_retcode =>x_retcode, ',
'  p_errbuf =>x_errbuf);',
'  ',
' ',
'  ',
'  --insert item category',
'  l_categories(1).ir_category_id  := l_item_category_id;',
'  l_categories(1).item_request_id := l_item_request_id;',
'  l_categories(1).organization_code := :P3_ORGANIZATION_CODE;',
'  l_categories(1).category_set_name := ''Inventory'';',
'  l_categories(1).category_name   := :P3_ITEM_CATEGORY;',
'  l_categories(1).enabled_flag    := :P3_ENABLED;',
'  l_categories(1).start_date      := :p3_start_date;',
'  l_categories(1).end_date        := :p3_end_date;',
'  xxiw_ir_utils_pkg.create_update_categories( ',
'  p_categories => l_categories , ',
'  p_creation_date => sysdate, ',
'  p_created_by => l_user_id, ',
'  p_last_update_date => sysdate, ',
'  p_last_updated_by =>l_user_id, ',
'  p_retcode =>x_retcode, ',
'  p_errbuf =>x_errbuf);',
'  ',
'  ',
'   --insert po category',
'  l_categories_po(1).ir_category_id  := l_po_category_id;',
'  l_categories_po(1).item_request_id := l_item_request_id;',
'  l_categories_po(1).organization_code := :P3_ORGANIZATION_CODE;',
'  l_categories_po(1).category_set_name := ''Purchasing'';',
'  l_categories_po(1).category_name   := :p3_po_category;',
'  l_categories_po(1).enabled_flag    := :P3_ENABLED;',
'  l_categories_po(1).start_date      := :p3_start_date;',
'  l_categories_po(1).end_date        := :p3_end_date;',
'  xxiw_ir_utils_pkg.create_update_categories( ',
'  p_categories => l_categories_po , ',
'  p_creation_date => sysdate, ',
'  p_created_by => l_user_id, ',
'  p_last_update_date => sysdate, ',
'  p_last_updated_by =>l_user_id, ',
'  p_retcode =>x_retcode, ',
'  p_errbuf =>x_errbuf);',
'  ',
'  END IF;',
'	',
'  ELSE',
'    :p3_status:=''E'';',
'  END IF;',
'  ',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :p3_status                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(86275415708539880489)
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'approvalHistoryPG'
,p_page_mode=>'MODAL'
,p_step_title=>'Action History'
,p_reload_on_submit=>'A'
,p_step_sub_title=>'approvalHistoryPG'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'1000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180305120543'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(51137759990429254010)
,p_name=>'Approval History'
,p_template=>wwv_flow_api.id(86274788149546833207)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'xia.ir_approval_id,',
'xia.item_request_id,',
'xuv.user_name from_user,',
'xia.approver_name,',
'replace(initcap(xia.status),''_'','' '') status,',
'xia.comments,',
'to_char(xia.creation_date,''DD-MON-YYYY HH24:MI:SS'') creation_date',
'FROM xxiw_ir_approvals xia,',
'     xxiw_users_v xuv',
'where xia.item_request_id=:P4_REQUEST_ID',
'and xia.created_by = xuv.user_id(+)',
'order by creation_date desc'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51137760098393254011)
,p_query_column_id=>1
,p_column_alias=>'IR_APPROVAL_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51137760154742254012)
,p_query_column_id=>2
,p_column_alias=>'ITEM_REQUEST_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51137760719164254018)
,p_query_column_id=>3
,p_column_alias=>'FROM_USER'
,p_column_display_sequence=>3
,p_column_heading=>'From User'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51137760219191254013)
,p_query_column_id=>4
,p_column_alias=>'APPROVER_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'To User'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51137760306321254014)
,p_query_column_id=>5
,p_column_alias=>'STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51137760476784254015)
,p_query_column_id=>6
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>6
,p_column_heading=>'Comments'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51137760551265254016)
,p_query_column_id=>7
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51143866246217975188)
,p_branch_name=>'goToPageEditRequestPage'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51137760607140254017)
,p_name=>'P4_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51137759990429254010)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51143865257440975185)
,p_name=>'OnClick'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(86859752405915493903)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51143865736192975187)
,p_event_id=>wwv_flow_api.id(51143865257440975185)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'  apex.widget.tabular.addRow();',
'} '))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51143864881566975185)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode NUMBER;',
'  x_errbuf  VARCHAR2(4000);',
'  l_user_id NUMBER;',
'  l_msg     VARCHAR2(3000);',
'  l_org_assignments xxiw_ir_utils_pkg.org_assignments_type;',
'  end_date_error   EXCEPTION;',
'  l_end_date_error VARCHAR2(1000);',
'BEGIN',
'  FOR i IN 1 .. apex_application.g_f04.count',
'  LOOP',
'   l_org_assignments(i).org_assinment_id  := apex_application.g_f02(i);',
'   l_org_assignments(i).item_request_id  := :P5_REQUEST_ID ; ',
'   l_org_assignments(i).organization_code := apex_application.g_f04(i);',
'   l_org_assignments(i).template_name     := apex_application.g_f05(i);',
'   l_org_assignments(i).enabled_flag      := apex_application.g_f06(i);',
'   l_org_assignments(i).start_date        := apex_application.g_f07(i);',
'   l_org_assignments(i).end_date          := apex_application.g_f08(i);',
'    IF (l_org_assignments(i).end_date        IS NOT NULL AND to_date(l_org_assignments(i).end_date,''DD-MON-YYYY'') < to_date(l_org_assignments(i).start_date,''DD-MON-YYYY'') ) THEN',
'      raise end_date_error;',
'    END IF;',
'  END LOOP;',
'  l_user_id :=xxiw_admin_util_pkg.get_userid(:app_user);',
'  xxiw_ir_utils_pkg.create_update_org_assignments( ',
'  p_org_assignments => l_org_assignments , ',
'  p_creation_date => sysdate, ',
'  p_created_by => l_user_id, ',
'  p_last_update_date => sysdate, ',
'  p_last_updated_by =>l_user_id, ',
'  p_retcode =>x_retcode, ',
'  p_errbuf =>x_errbuf);',
'',
'EXCEPTION',
'WHEN end_date_error THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Line Level End Date should be equal or greater than Start Date.  ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'WHEN OTHERS THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'requestDetailPG'
,p_page_mode=>'NORMAL'
,p_step_title=>'&P5_DESCRIPTION.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(86274721793252833201)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180305133050'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44086059806317922801)
,p_name=>'Categories'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ir_category_id,  ',
'  item_request_id,',
'  category_name,',
'  enabled_flag,',
'  start_date,',
'  end_date',
'FROM xxiw_ir_categories',
'where item_request_id=:p5_request_id;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Categories found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086059964632922802)
,p_query_column_id=>1
,p_column_alias=>'IR_CATEGORY_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086060013669922803)
,p_query_column_id=>2
,p_column_alias=>'ITEM_REQUEST_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086060150223922804)
,p_query_column_id=>3
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086060239306922805)
,p_query_column_id=>4
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>4
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086060378513922806)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086060497319922807)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44086073485658922837)
,p_name=>'Manufacturer Parts'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ir_mpn_id,',
'  item_request_id,',
'  seq_number,',
'  mpn_name,',
'  manufacture_name,',
'  enabled_flag,',
'  start_date,',
'  end_date',
'FROM xxiw_ir_mpns',
'WHERE ITEM_REQUEST_ID=:P5_REQUEST_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Manufacturer Part Numbers found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086074114986922844)
,p_query_column_id=>1
,p_column_alias=>'IR_MPN_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086073642266922839)
,p_query_column_id=>2
,p_column_alias=>'ITEM_REQUEST_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086074240267922845)
,p_query_column_id=>3
,p_column_alias=>'SEQ_NUMBER'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086074364881922846)
,p_query_column_id=>4
,p_column_alias=>'MPN_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Part Number'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086074465039922847)
,p_query_column_id=>5
,p_column_alias=>'MANUFACTURE_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'Manufacturer'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086073832931922841)
,p_query_column_id=>6
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>10
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086073986460922842)
,p_query_column_id=>7
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086074062187922843)
,p_query_column_id=>8
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44086074591382922848)
,p_name=>'Attachments'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    IR_ATTACHMENT_ID,',
'    ''<a href="''||APEX_UTIL.GET_BLOB_FILE_SRC(''P20_FILE_BLOB'',IR_ATTACHMENT_ID)||''">''||apex_escape.html(filename)||''</a>'' filename,',
'    file_mimetype,',
'    file_charset,',
'    apex_util.filesize_mask(dbms_lob.getlength(file_blob)) f_len,',
'    substr(file_comments,1,50)||decode(greatest(length(file_comments),50),50,'''',''...'') FILE_COMMENTS,',
'    case when instr(upper(FILENAME),''.PPT'') > 0or instr(upper(FILENAME),''.PPTX'') > 0 then',
'        ''fa fa fa-file-powerpoint-o''',
'    when instr(upper(FILENAME),''.XLS'') > 0 or instr(upper(FILENAME),''.XLSX'') > 0 then',
'        ''fa fa fa-file-excel-o''',
'    when instr(upper(FILENAME),''.DOC'') > 0 or instr(upper(FILENAME),''.DOCX'') > 0 then',
'        ''fa fa fa-file-word-o''',
'    when instr(upper(FILENAME),''.PDF'') > 0 then',
'        ''fa fa fa-file-pdf-o''',
'    when instr(upper(FILENAME),''.GIF'') > 0 or',
'         instr(upper(FILENAME),''.PNG'') > 0 or',
'         instr(upper(FILENAME),''.TIFF'') > 0 or',
'         instr(upper(FILENAME),''.JPG'') > 0 then',
'        ''fa fa fa-file-image-o''',
'    else',
'        ''fa fa fa-file-o''',
'    end file_type,',
'    case when instr(upper(FILENAME),''.PPT'') > 0or instr(upper(FILENAME),''.PPTX'') > 0 then',
'        ''MS Powerpoint File''',
'    when instr(upper(FILENAME),''.XLS'') > 0 or instr(upper(FILENAME),''.XLSX'') > 0 then',
'        ''MS Excel File''',
'    when instr(upper(FILENAME),''.DOC'') > 0 or instr(upper(FILENAME),''.DOCX'') > 0 then',
'        ''MS Word File''',
'    when instr(upper(FILENAME),''.PDF'') > 0 then',
'        ''Adobe PDF File''',
'    when instr(upper(FILENAME),''.GIF'') > 0 or',
'         instr(upper(FILENAME),''.PNG'') > 0 or',
'         instr(upper(FILENAME),''.TIFF'') > 0 or',
'         instr(upper(FILENAME),''.JPG'') > 0 then',
'        ''Image File''',
'    else',
'        ''Text File''',
'    end file_type_title,',
'    creation_date,',
'    lower(created_by) created_by',
'from xxiw_ir_attachments f',
'where item_request_id = :P5_REQUEST_ID ',
'order by creation_date desc;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Attachments found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086074651019922849)
,p_query_column_id=>1
,p_column_alias=>'IR_ATTACHMENT_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086074732413922850)
,p_query_column_id=>2
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303848660201334001)
,p_query_column_id=>3
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303848780163334002)
,p_query_column_id=>4
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303848866630334003)
,p_query_column_id=>5
,p_column_alias=>'F_LEN'
,p_column_display_sequence=>7
,p_column_heading=>'Size'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303848958499334004)
,p_query_column_id=>6
,p_column_alias=>'FILE_COMMENTS'
,p_column_display_sequence=>8
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303849019279334005)
,p_query_column_id=>7
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="#FILE_TYPE#" title="#FILE_TYPE_TITLE#"></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303849155633334006)
,p_query_column_id=>8
,p_column_alias=>'FILE_TYPE_TITLE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303849269870334007)
,p_query_column_id=>9
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Date Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303849337390334008)
,p_query_column_id=>10
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44303849440155334009)
,p_name=>'Comments'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''' class, --use grayComment for gray look',
'        ''Note'' note_type,',
'        replace(apex_escape.html(dbms_lob.substr(COMMENTS,1000,1)),chr(10),''<br />'') comment_text,',
' '''' attribute_1,',
'        '''' attribute_2,',
'        '''' attribute_3,',
'        '''' attribute_4,',
'        lower(created_by) user_name,',
'        substr(created_by,0,2) user_icon,',
'        ''u-color-''||ora_hash(created_by,29) icon_modifier,',
'        apex_util.get_since(CREATION_DATE) comment_date,',
'        '' '' actions,',
'        CREATION_DATE',
'from XXIW_IR_COMMENTS',
'where   ITEM_REQUEST_ID = :P5_REQUEST_ID',
'order by 9 desc'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274807649065833222)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Comments found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303849504270334010)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303849654527334011)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303849714514334012)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Comment text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303850580183334020)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>10
,p_column_heading=>'Attribute 1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303850689894334021)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>11
,p_column_heading=>'Attribute 2'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303850702325334022)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>12
,p_column_heading=>'Attribute 3'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303850879981334023)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>13
,p_column_heading=>'Attribute 4'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303849852004334013)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'User name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303849935287334014)
,p_query_column_id=>9
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>5
,p_column_heading=>'User icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303850081814334015)
,p_query_column_id=>10
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>6
,p_column_heading=>'Icon modifier'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303850115686334016)
,p_query_column_id=>11
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Comment date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303850297934334017)
,p_query_column_id=>12
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>8
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303850386470334018)
,p_query_column_id=>13
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Creation date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(86275417296957880505)
,p_name=>'Request'
,p_template=>wwv_flow_api.id(86274788149546833207)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--variableLabelMedium:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select xir.item_request_id,',
'xir.request_description,',
'xir.request_type,',
'xir.status status,',
'TO_CHAR (xir.creation_date, ''DD-MON-YYYY'') creation_date,',
'xir.organization_code,',
'xir.item_number,',
'xxiw_ir_utils_pkg.get_long_desc(xir.item_request_id) long_desc',
'from xxiw_item_requests xir',
'where item_request_id=:P5_REQUEST_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274809579444833224)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678379666740907917)
,p_query_column_id=>1
,p_column_alias=>'ITEM_REQUEST_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678379761972907918)
,p_query_column_id=>2
,p_column_alias=>'REQUEST_DESCRIPTION'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678379809747907919)
,p_query_column_id=>3
,p_column_alias=>'REQUEST_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(86687948329923429777)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(86275418650192880518)
,p_query_column_id=>5
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Creation Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678379916201907920)
,p_query_column_id=>6
,p_column_alias=>'ORGANIZATION_CODE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678380013263907921)
,p_query_column_id=>7
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>6
,p_column_heading=>'Item#'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44086073252768922835)
,p_query_column_id=>8
,p_column_alias=>'LONG_DESC'
,p_column_display_sequence=>8
,p_column_heading=>'Long desc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(86687948604803429780)
,p_plug_name=>'Profile List'
,p_component_template_options=>'#DEFAULT#:t-LinksList--actions:t-LinksList--showIcons'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_api.id(86689371130795056505)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(86274815562466833228)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(86687950332948429797)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(86687950357619429798)
,p_name=>'Organizations'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org_assinment_id ,',
'    item_request_id   ,',
'    organization_code ,',
'	template_name,',
'	enabled_flag,',
'	start_date,',
'	end_date ',
'from xxiw_org_assignments',
'WHERE item_request_id=:P5_REQUEST_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Organization found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43787929167849378101)
,p_query_column_id=>1
,p_column_alias=>'ORG_ASSINMENT_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43787929233181378102)
,p_query_column_id=>2
,p_column_alias=>'ITEM_REQUEST_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43787929381656378103)
,p_query_column_id=>3
,p_column_alias=>'ORGANIZATION_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'Organization'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43787929499026378104)
,p_query_column_id=>4
,p_column_alias=>'TEMPLATE_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Template'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43787929523102378105)
,p_query_column_id=>5
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>5
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43787929603187378106)
,p_query_column_id=>6
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43787929709251378107)
,p_query_column_id=>7
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(86687947960170429774)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'EDIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Request'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_REQUEST_ID:&P5_REQUEST_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxiw_item_requests xir',
'where NOT EXISTS(select 1 from xxiw_ir_approvals xia where xia.item_request_id=xir.item_request_id )',
'and xir.item_request_id=:P5_REQUEST_ID ',
'UNION',
'select 1',
'from xxiw_ir_approvals xia',
'where xia.enabled_flag=''Yes''',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xia.approver_name)=upper(:APP_USER)',
'UNION',
'SELECT 1',
'from xxiw_ir_approvals xia,',
'xxiw_item_requests xir,',
'xxiw_users_v xuv2',
'WHERE 1=1',
'and xia.status=''REQUEST_INFO''',
'and xia.enabled_flag=''Yes''',
'and xir.item_request_id=xia.item_request_id',
'and xuv2.user_id=xir.created_by',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xuv2.user_name)=upper(:APP_USER)'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44433627517961736404)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'SUBMIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14:P14_REQUEST_ID,P14_STATUS_ACTION:&P5_REQUEST_ID.,SENT_FOR_APPROVAL'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxiw_item_requests xir',
'where NOT EXISTS(select 1 from xxiw_ir_approvals xia where xia.item_request_id=xir.item_request_id )',
'and xir.item_request_id=:P5_REQUEST_ID',
'UNION',
'SELECT 1',
'from xxiw_ir_approvals xia,',
'xxiw_item_requests xir,',
'xxiw_users_v xuv2',
'WHERE 1=1',
'and xia.status=''REQUEST_INFO''',
'and xia.enabled_flag=''Yes''',
'and xir.item_request_id=xia.item_request_id',
'and xuv2.user_id=xir.created_by',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xuv2.user_name)=upper(:APP_USER)'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51137759761835254008)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'APPROVE_FORWARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve > Forward'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14:P14_REQUEST_ID,P14_STATUS_ACTION:&P5_REQUEST_ID.,APPROVE_FORWARD'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxiw_ir_approvals xia',
'where xia.enabled_flag=''Yes''',
'and xia.status <>''REQUEST_INFO''',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xia.approver_name)=upper(:APP_USER)'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52099458813683111903)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'REQUEST_INFO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request More Info'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31:P31_REQUEST_ID,P31_ACTION_NAME,P31_ACTION_STATUS:&P5_REQUEST_ID.,Request Info,REQUEST_INFO'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxiw_ir_approvals xia',
'where xia.enabled_flag=''Yes''',
'and xia.status <>''REQUEST_INFO''',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xia.approver_name)=upper(:APP_USER)'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50933014396131483201)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'APPROVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxiw_ir_approvals xia,',
'xxiw_admin_user xau',
'where upper(xau.user_name)=upper(xia.approver_name)',
'and xia.enabled_flag=''Yes''',
'and xia.status <>''REQUEST_INFO''',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xia.approver_name)=upper(:APP_USER)'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51137759545118254006)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'WITHDRAWN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Withdrawn'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxiw_item_requests xir,',
'     xxiw_users_v xuv,',
'	 xxiw_ir_approvals xia ',
'where xir.created_by=xuv.user_id',
'and upper(xuv.user_name)=upper(:APP_USER)',
'and xir.item_request_id=:P5_REQUEST_ID',
'and xia.item_request_id=xir.item_request_id ',
'and xia.enabled_flag=''Yes'' ',
'and xia.status in (''APPROVE_FORWARD'',''SENT_FOR_APPROVAL'')'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51137759647781254007)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'REJECT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reject'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxiw_ir_approvals xia',
'where xia.enabled_flag=''Yes''',
'and xia.status <>''REQUEST_INFO''',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xia.approver_name)=upper(:APP_USER)'))
,p_button_condition_type=>'EXISTS'
);
end;
/
begin
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52512434007333014701)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'OK_BTN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ok'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'from xxiw_ir_approvals xia,',
'xxiw_item_requests xir,',
'xxiw_users_v xuv2',
'WHERE 1=1',
'and xia.status in (''REJECTED'',''APPROVED'')',
'and xia.enabled_flag=''Yes''',
'and xir.item_request_id=xia.item_request_id',
'and xuv2.user_id=xir.created_by',
'and xia.item_request_id=:P5_REQUEST_ID',
'and upper(xuv2.user_name)=upper(:APP_USER)'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(52512434228596014703)
,p_branch_name=>'GotoRequestREPORT'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(52512434007333014701)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51137759193118254002)
,p_name=>'P5_IR_APPROVAL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(86275417296957880505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51137759270695254003)
,p_name=>'P5_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(86275417296957880505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86687948092785429775)
,p_name=>'P5_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(86275417296957880505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86687948210272429776)
,p_name=>'P5_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(86275417296957880505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51137761199027254022)
,p_name=>'RejectDynamicAction'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(51137759647781254007)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51137861280379254023)
,p_event_id=>wwv_flow_api.id(51137761199027254022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure, want to Reject the Request ?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51137861337340254024)
,p_event_id=>wwv_flow_api.id(51137761199027254022)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'REJECT'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51137861460752254025)
,p_name=>'WithdrawnDynamicAction'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(51137759545118254006)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51137861524588254026)
,p_event_id=>wwv_flow_api.id(51137861460752254025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure, want to Withdrawn the Request ?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51137861688455254027)
,p_event_id=>wwv_flow_api.id(51137861460752254025)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'WITHDRAWN'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51137861772825254028)
,p_name=>'ApproveDynamicAction'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(50933014396131483201)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51137861898407254029)
,p_event_id=>wwv_flow_api.id(51137861772825254028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure, want to Final Approve the Request ?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51137861997140254030)
,p_event_id=>wwv_flow_api.id(51137861772825254028)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'APPROVE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51137761057011254021)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FetchProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT',
'xia.ir_approval_id ',
'into :P5_IR_APPROVAL_ID',
'FROM xxiw_ir_approvals xia,',
'     xxiw_item_requests xir,',
'	 xxiw_users_v xuv',
'WHERE 1=1',
'and xia.status=''OPEN''',
'and xia.item_request_id=:P5_REQUEST_ID',
'and xia.item_request_id=xir.item_request_id',
'and xir.created_by=xuv.user_id',
'and (upper(xia.approver_name)=upper(:APP_USER) or upper(xuv.user_name)= upper(:APP_USER));',
'EXCEPTION WHEN OTHERS THEN',
':P5_IR_APPROVAL_ID:=NULL;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51137759403595254005)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ApproveProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode        NUMBER;',
'  x_errbuf         VARCHAR2(4000);',
'  l_user_id        NUMBER;',
'  l_msg            VARCHAR2(3000);',
'  l_approver_name  VARCHAR2(100);',
'BEGIN',
'  l_user_id:=xxiw_admin_util_pkg.get_userid(:app_user);',
'    xxiw_ir_utils_pkg.create_update_approvals(',
'	p_ir_approval_id => null,',
'	p_item_request_id =>:P5_REQUEST_ID, ',
'   	p_approver_name => null,',
'	p_comments => ''Approved'',',
'	p_status => ''APPROVED'',',
'	p_creation_date => sysdate, ',
'	p_created_by => l_user_id, ',
'	p_last_update_date => sysdate, ',
'	p_last_updated_by =>l_user_id, ',
'	p_retcode =>x_retcode, ',
'	p_errbuf =>x_errbuf);',
'    :P5_STATUS:=''S'';  ',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :P5_STATUS                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(50933014396131483201)
,p_process_success_message=>'Request Approved!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51137760845305254019)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RejectProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode        NUMBER;',
'  x_errbuf         VARCHAR2(4000);',
'  l_user_id        NUMBER;',
'  l_msg            VARCHAR2(3000);',
'  l_approver_name  VARCHAR2(100);',
'BEGIN',
'  l_user_id:=xxiw_admin_util_pkg.get_userid(:app_user);',
'    xxiw_ir_utils_pkg.create_update_approvals(',
'	p_ir_approval_id => null,',
'	p_item_request_id =>:P5_REQUEST_ID, ',
'   	p_approver_name => null,',
'	p_comments => ''Rejected'',',
'	p_status => ''REJECTED'',',
'	p_creation_date => sysdate, ',
'	p_created_by => l_user_id, ',
'	p_last_update_date => sysdate, ',
'	p_last_updated_by =>l_user_id, ',
'	p_retcode =>x_retcode, ',
'	p_errbuf =>x_errbuf);',
'    :P5_STATUS:=''S'';',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :P5_STATUS                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(51137759647781254007)
,p_process_success_message=>'Request Rejected!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51137760973320254020)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'WithdrawntProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode        NUMBER;',
'  x_errbuf         VARCHAR2(4000);',
'  l_user_id        NUMBER;',
'  l_msg            VARCHAR2(3000);',
'  l_approver_name  VARCHAR2(100);',
'BEGIN',
'  l_user_id:=xxiw_admin_util_pkg.get_userid(:app_user);',
'  l_approver_name:=upper(:APP_USER);',
'    xxiw_ir_utils_pkg.create_update_approvals(',
'	p_ir_approval_id => null,',
'	p_item_request_id =>:P5_REQUEST_ID, ',
'   	p_approver_name => null,',
'	p_comments => ''Withdrawn'',',
'	p_status => ''WITHDRAWN'',',
'	p_creation_date => sysdate, ',
'	p_created_by => l_user_id, ',
'	p_last_update_date => sysdate, ',
'	p_last_updated_by =>l_user_id, ',
'	p_retcode =>x_retcode, ',
'	p_errbuf =>x_errbuf);',
'    :P5_STATUS:=''S'';',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :P5_STATUS                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(51137759545118254006)
,p_process_success_message=>'Request Withdrawn!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52512434165114014702)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OkProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode        NUMBER;',
'  x_errbuf         VARCHAR2(4000);',
'  l_user_id        NUMBER;',
'  l_msg            VARCHAR2(3000);',
'  l_approver_name  VARCHAR2(100);',
'BEGIN',
'  l_user_id:=xxiw_admin_util_pkg.get_userid(:app_user);',
'  l_approver_name:=upper(:APP_USER);',
'     UPDATE xxiw_ir_approvals ',
'      SET enabled_flag=''No'',',
'        last_update_date     =SYSDATE, ',
'        last_updated_by      =l_user_id ',
'      WHERE item_request_id  =:P5_REQUEST_ID;',
'    :P5_STATUS:=''S'';',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :P5_STATUS                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52512434007333014701)
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'Categories'
,p_page_mode=>'MODAL'
,p_step_title=>'Categories'
,p_reload_on_submit=>'A'
,p_step_sub_title=>'Categories'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'1000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180222125630'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(130656838663144315040)
,p_name=>'Categories'
,p_template=>wwv_flow_api.id(86274788149546833207)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ir_category_id,  ',
'  item_request_id,',
'  organization_code,',
'  category_set_name,',
'  category_name,',
'  enabled_flag,',
'  start_date,',
'  end_date',
'FROM xxiw_ir_categories',
'where item_request_id=:p6_request_id;'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43787929993012378109)
,p_query_column_id=>1
,p_column_alias=>'IR_CATEGORY_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43797143808830824308)
,p_query_column_id=>2
,p_column_alias=>'ITEM_REQUEST_ID'
,p_column_display_sequence=>3
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51351710956170795143)
,p_query_column_id=>3
,p_column_alias=>'ORGANIZATION_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Organization'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organization_code d, organization_code r',
'from xxiw_org_assignments',
'WHERE item_request_id=:P6_REQUEST_ID'))
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51351711005740795144)
,p_query_column_id=>4
,p_column_alias=>'CATEGORY_SET_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Category Set'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select category_set_name d, category_set_name r',
'from xxiw_category_sets_v'))
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43787930096922378110)
,p_query_column_id=>5
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP'
,p_named_lov=>wwv_flow_api.id(44160562705385409873)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43797145093054824308)
,p_query_column_id=>6
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(43788555080813419092)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_column_default=>'''Yes'''
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43797145485738824309)
,p_query_column_id=>7
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_column_default=>'xxiw_admin_util_pkg.get_default_date'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43797145843518824309)
,p_query_column_id=>8
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43797143044028824306)
,p_query_column_id=>9
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130891302158325836526)
,p_plug_name=>'buttonBar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43797146247201824310)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(130656838663144315040)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43797147317419824316)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(130891302158325836526)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43797147746169824316)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(130891302158325836526)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43797149587339824327)
,p_branch_name=>'goToPageEditRequestPage'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(43797147746169824316)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43797146612785824312)
,p_name=>'P6_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(130656838663144315040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43797148562988824323)
,p_name=>'OnClick'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43797146247201824310)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43797149059891824325)
,p_event_id=>wwv_flow_api.id(43797148562988824323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'  apex.widget.tabular.addRow();',
'} '))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43797148199185824322)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode NUMBER;',
'  x_errbuf  VARCHAR2(4000);',
'  l_user_id NUMBER;',
'  l_msg     VARCHAR2(3000);',
'  l_categories xxiw_ir_utils_pkg.ir_categories_type;',
'  end_date_error   EXCEPTION;',
'  l_end_date_error VARCHAR2(1000);',
'BEGIN',
'  FOR i IN 1 .. apex_application.g_f03.count',
'  LOOP',
'    l_categories(i).ir_category_id  := apex_application.g_f02(i);',
'	l_categories(i).item_request_id := :p6_request_id;',
'	l_categories(i).organization_code   := apex_application.g_f04(i);',
'	l_categories(i).category_set_name   := apex_application.g_f05(i);',
'    l_categories(i).category_name   := apex_application.g_f06(i);',
'    l_categories(i).enabled_flag    := apex_application.g_f07(i);',
'    l_categories(i).start_date      := apex_application.g_f08(i);',
'    l_categories(i).end_date        := apex_application.g_f09(i);',
'    IF (l_categories(i).end_date    IS NOT NULL AND to_date(l_categories(i).end_date,''DD-MON-YYYY'') < to_date(l_categories(i).start_date,''DD-MON-YYYY'') ) THEN',
'      raise end_date_error;',
'    END IF;',
'  END LOOP;',
'  l_user_id :=xxiw_admin_util_pkg.get_userid(:app_user);',
'  xxiw_ir_utils_pkg.create_update_categories( ',
'  p_categories => l_categories , ',
'  p_creation_date => sysdate, ',
'  p_created_by => l_user_id, ',
'  p_last_update_date => sysdate, ',
'  p_last_updated_by =>l_user_id, ',
'  p_retcode =>x_retcode, ',
'  p_errbuf =>x_errbuf);',
'EXCEPTION',
'WHEN end_date_error THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Line Level End Date should be equal or greater than Start Date.  ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'WHEN OTHERS THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43797147746169824316)
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'addComments'
,p_page_mode=>'MODAL'
,p_step_title=>'Comments'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'addComments'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180123121702'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130591565329223536207)
,p_plug_name=>'Request'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs:t-Form--labelsAbove:margin-top-sm'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130591565613357536210)
,p_plug_name=>'FooterRN'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44316166729591658664)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(130591565613357536210)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44316167135476658665)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(130591565613357536210)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Comment'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44316168394863658673)
,p_branch_name=>'GotoPageRequestEdit'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,5:P5_REQUEST_ID,P5_DESCRIPTION:&P7_REQUEST_ID.,&P7_DESCRIPTION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P7_STATUS'
,p_branch_condition_text=>'S'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44303850445990334019)
,p_name=>'P7_IR_COMMENT_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(130591565329223536207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44316161678647658657)
,p_name=>'P7_COMMENTS'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(130591565329223536207)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44316165201296658661)
,p_name=>'P7_REQUEST_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(130591565329223536207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44316165686343658661)
,p_name=>'P7_STATUS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(130591565329223536207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44316167863811658671)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode        NUMBER;',
'  x_errbuf         VARCHAR2(4000);',
'  l_user_id        NUMBER;',
'  l_msg            VARCHAR2(3000);',
'BEGIN',
'  l_user_id:=xxiw_admin_util_pkg.get_userid(:app_user);  ',
' ',
'  IF(:P7_COMMENTS IS NOT NULL) THEN',
'    xxiw_ir_utils_pkg.create_update_comments(',
'	p_ir_comment_id => :p7_ir_comment_id,',
'	p_item_request_id =>:p7_request_id, ',
'	p_comments =>:p7_comments, ',
'	p_creation_date => sysdate, ',
'	p_created_by => l_user_id, ',
'	p_last_update_date => sysdate, ',
'	p_last_updated_by =>l_user_id, ',
'	p_retcode =>x_retcode, ',
'	p_errbuf =>x_errbuf);',
'    :p7_status:=''S'';',
'  ELSE',
'    :p7_status:=''E'';',
'  END IF;',
'  ',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :p7_status                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44316167135476658665)
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'orgAssignmentPG'
,p_page_mode=>'MODAL'
,p_step_title=>'Org Assignment'
,p_reload_on_submit=>'A'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'1000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180222095309'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(86859750843122493887)
,p_name=>'Org Assignment'
,p_template=>wwv_flow_api.id(86274788149546833207)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org_assinment_id ,',
'    item_request_id   ,',
'    organization_code ,',
'	template_name,',
'	enabled_flag,',
'	start_date,',
'	end_date ',
'from xxiw_org_assignments',
'WHERE item_request_id=:P8_REQUEST_ID'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678380198513907922)
,p_query_column_id=>1
,p_column_alias=>'ORG_ASSINMENT_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678380257167907923)
,p_query_column_id=>2
,p_column_alias=>'ITEM_REQUEST_ID'
,p_column_display_sequence=>3
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678380321740907924)
,p_query_column_id=>3
,p_column_alias=>'ORGANIZATION_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Organization'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select xio.organization_code d, xio.organization_code r ',
'from xxiw_inv_organizations_v xio,',
'     xxiw_mst_organizations_v xmo,',
'	 xxiw_item_requests xir',
'where xmo.organization_id=xio.master_organization_id',
'AND xir.organization_code=xmo.organization_code',
'and xir.item_request_id=:P8_REQUEST_ID'))
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678380437544907925)
,p_query_column_id=>4
,p_column_alias=>'TEMPLATE_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Template'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  xt.template_name  D, xt.template_name r',
'FROM xxiw_ir_template_setups xit,',
'xxiw_templates_v xt',
'WHERE xit.template_id=xt.template_id',
'AND xit.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xit.start_date,SYSDATE)) AND TRUNC(NVL(xit.end_date,SYSDATE))',
'and xit.setup_id in (select xis.setup_id',
'from xxiw_ir_setups xis,',
'xxiw_mst_organizations_v xmo',
'WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(start_date,SYSDATE)) AND TRUNC(NVL(end_date,SYSDATE))',
'AND xmo.organization_code=(select xir.organization_code from xxiw_item_requests xir where xir.item_request_id=:P8_REQUEST_ID)',
'and xis.template_enabled in (''Yes'',''Both''))',
'union all ',
'select xt.template_name  D, xt.template_name r',
'from xxiw_templates_v xt',
'where 1=1',
'and 1 in (select decode(xis.template_enabled,''Yes'',2,1)',
'from xxiw_ir_setups xis,',
'xxiw_mst_organizations_v xmo',
'WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(start_date,SYSDATE)) AND TRUNC(NVL(end_date,SYSDATE))',
'AND xmo.organization_code=(select xir.organization_code from xxiw_item_requests xir where xir.item_request_id=:P8_REQUEST_ID))',
'AND 1=nvl((select decode(xis.template_enabled,''Both'',2,1) from xxiw_ir_template_setups xits, ',
'                                                        xxiw_ir_setups xis,',
'														xxiw_mst_organizations_v xmo',
'							WHERE xis.master_organization_id=xmo.organization_id',
'AND xis.enabled_flag=''Yes''',
'and xis.template_enabled in (''No'',''Both'')',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xis.start_date,SYSDATE)) AND TRUNC(NVL(xis.end_date,SYSDATE))',
'AND xits.template_id=xt.template_id',
'AND xmo.organization_code=(select xir.organization_code from xxiw_item_requests xir where xir.item_request_id=:P8_REQUEST_ID)',
'AND xits.setup_id=xis.setup_id',
'AND xits.enabled_flag=''Yes''',
'AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(xits.start_date,SYSDATE)) AND TRUNC(NVL(xits.end_date,SYSDATE))),1)'))
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678380561675907926)
,p_query_column_id=>5
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(43788555080813419092)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_column_default=>'''Yes'''
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678380658393907927)
,p_query_column_id=>6
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_column_default=>'xxiw_admin_util_pkg.get_default_date'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678380795362907928)
,p_query_column_id=>7
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(86859752281423493902)
,p_query_column_id=>8
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87094214338304015373)
,p_plug_name=>'buttonBar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(86859752405915493903)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(86859750843122493887)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(87094214489907015375)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(87094214338304015373)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(87094214359360015374)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(87094214338304015373)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(87094214610617015376)
,p_branch_name=>'goToPageEditRequestPage'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(87094214359360015374)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86859752210864493901)
,p_name=>'P8_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(86859750843122493887)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(86859752455315493904)
,p_name=>'OnClick'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(86859752405915493903)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(86859752625813493905)
,p_event_id=>wwv_flow_api.id(86859752455315493904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'  apex.widget.tabular.addRow();',
'} '))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(87094214205678015372)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode NUMBER;',
'  x_errbuf  VARCHAR2(4000);',
'  l_user_id NUMBER;',
'  l_msg     VARCHAR2(3000);',
'  l_org_assignments xxiw_ir_utils_pkg.org_assignments_type;',
'  end_date_error   EXCEPTION;',
'  l_end_date_error VARCHAR2(1000);',
'BEGIN',
'  FOR i IN 1 .. apex_application.g_f04.count',
'  LOOP',
'   l_org_assignments(i).org_assinment_id  := apex_application.g_f02(i);',
'   l_org_assignments(i).item_request_id  := :P5_REQUEST_ID ; ',
'   l_org_assignments(i).organization_code := apex_application.g_f04(i);',
'   l_org_assignments(i).template_name     := apex_application.g_f05(i);',
'   l_org_assignments(i).enabled_flag      := apex_application.g_f06(i);',
'   l_org_assignments(i).start_date        := apex_application.g_f07(i);',
'   l_org_assignments(i).end_date          := apex_application.g_f08(i);',
'    IF (l_org_assignments(i).end_date        IS NOT NULL AND to_date(l_org_assignments(i).end_date,''DD-MON-YYYY'') < to_date(l_org_assignments(i).start_date,''DD-MON-YYYY'') ) THEN',
'      raise end_date_error;',
'    END IF;',
'  END LOOP;',
'  l_user_id :=xxiw_admin_util_pkg.get_userid(:app_user);',
'  xxiw_ir_utils_pkg.create_update_org_assignments( ',
'  p_org_assignments => l_org_assignments , ',
'  p_creation_date => sysdate, ',
'  p_created_by => l_user_id, ',
'  p_last_update_date => sysdate, ',
'  p_last_updated_by =>l_user_id, ',
'  p_retcode =>x_retcode, ',
'  p_errbuf =>x_errbuf);',
'',
'EXCEPTION',
'WHEN end_date_error THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Line Level End Date should be equal or greater than Start Date.  ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'WHEN OTHERS THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(87094214359360015374)
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'Reports'
,p_page_mode=>'NORMAL'
,p_step_title=>'Reports'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180116081928'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'Administrators'
,p_page_mode=>'NORMAL'
,p_step_title=>'Administrators'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Administrators'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180307114348'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88000927678171428880)
,p_plug_name=>'About Administrator'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<small><i><p>To create final approvers from EBS users',
'<br>Click on column headings to sort and filter specific columns. Click the Action button to control column selection and view additional options. </p></i></small>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127964138590716055740)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(168088837323950700443)
,p_name=>'Administrator'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'admin_user_id ,',
'    user_name ,',
'    description ,',
'    enabled_flag,',
'    start_date,',
'    end_date',
'from xxiw_admin_user'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303850925648334024)
,p_query_column_id=>1
,p_column_alias=>'ADMIN_USER_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303851093046334025)
,p_query_column_id=>2
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'User'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP'
,p_named_lov=>wwv_flow_api.id(44322220609722473331)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44303851150666334026)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44322576237586524131)
,p_query_column_id=>4
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>5
,p_column_heading=>'Enabled '
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(43788555080813419092)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_column_default=>'''Yes'''
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44322576637577524131)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_column_default=>'xxiw_admin_util_pkg.get_default_date'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44322577021578524132)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44322574652043524128)
,p_query_column_id=>7
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44322573912558524123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(127964138590716055740)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44322577815266524132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(168088837323950700443)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Add Row'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44322579218194524139)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'Cancel_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44322573540079524122)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(127964138590716055740)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44322579680174524140)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'APPLY_CHANGES_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44322578232653524133)
,p_name=>'P10_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(168088837323950700443)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44322580444108524142)
,p_name=>'OnClick'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(44322577815266524132)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44322580922025524144)
,p_event_id=>wwv_flow_api.id(44322580444108524142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'  apex.widget.tabular.addRow();',
'} '))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44322580083235524141)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'createUpdateAttribute'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode NUMBER;',
'  x_errbuf  VARCHAR2(4000);',
'  l_user_id NUMBER;',
'  l_msg     VARCHAR2(3000);',
'  l_admin_user xxiw_admin_util_pkg.admin_user_type;',
'  end_date_error   EXCEPTION;',
'  l_end_date_error VARCHAR2(1000);',
'BEGIN',
'  FOR i IN 1 .. apex_application.g_f03.count',
'  LOOP',
'    l_admin_user(i).admin_user_id      := apex_application.g_f02(i);',
'    l_admin_user(i).user_name       := apex_application.g_f03(i);',
'    l_admin_user(i).description := apex_application.g_f04(i);',
'    l_admin_user(i).enabled_flag        := apex_application.g_f05(i);',
'    l_admin_user(i).start_date          := apex_application.g_f06(i);',
'    l_admin_user(i).end_date            := apex_application.g_f07(i);',
'    IF (l_admin_user(i).end_date        IS NOT NULL AND to_date(l_admin_user(i).end_date,''DD-MON-YYYY'') < to_date(l_admin_user(i).start_date,''DD-MON-YYYY'') ) THEN',
'      raise end_date_error;',
'    END IF;',
'  END LOOP;',
'  l_user_id :=xxiw_admin_util_pkg.get_userid(:app_user);',
'  xxiw_admin_util_pkg.create_update_admins( ',
'  p_admin_user => l_admin_user , ',
'  p_creation_date => sysdate, ',
'  p_created_by => l_user_id, ',
'  p_last_update_date => sysdate, ',
'  p_last_updated_by =>l_user_id, ',
'  p_retcode =>x_retcode, ',
'  p_errbuf =>x_errbuf);',
'  :p10_status:=''S'';',
'EXCEPTION',
'WHEN end_date_error THEN',
'  :p10_status                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Line Level End Date should be equal or greater than Start Date.  ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'WHEN OTHERS THEN',
'  :p10_status                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES:APPLY_CHANGES_1'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'Administration'
,p_page_mode=>'NORMAL'
,p_step_title=>'Administration'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180306104610'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52512436421127014725)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-MediaList--cols t-MediaList--2cols'
,p_plug_template=>wwv_flow_api.id(86274798050502833215)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(52619468677995439909)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(86274816412839833228)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'Attribute Groups'
,p_page_mode=>'NORMAL'
,p_step_title=>'Attribute Groups'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Flex Fields'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180307114308'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43545583390630989509)
,p_plug_name=>'About Attribute Groups'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<small><i><p>To enable item description format',
'<br>Click on column headings to sort and filter specific columns. Click the Action button to control column selection and view additional options. </p></i></small>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83196052460694656436)
,p_plug_name=>'Attribute Groups'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274797580830833214)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select header_id,',
'NULL edit,',
'name,',
'description,',
'xxiw_admin_util_pkg.get_flexfield_status(short_name) status,',
'creation_date',
'from xxiw_flexfields_headers'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(83196052559065656437)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'XXIW'
,p_internal_uid=>83196052559065656437
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43551449380014280540)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Header id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43551461337527280542)
,p_db_column_name=>'EDIT'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13:P13_HEADER_ID:#HEADER_ID#'
,p_column_linktext=>'<span class="t-Icon fa fa-pencil-square-o"></span><span class="u-VisuallyHidden">Open Link</span>'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--small t-Button--noLabel t-Button--icon t-Button--iconOnly t-Button--stretch"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43551449786385280541)
,p_db_column_name=>'NAME'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43551450135486280541)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43551450543492280542)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43551450931342280542)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(83196105249462392407)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'435514617'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'EDIT:NAME:DESCRIPTION:STATUS:CREATION_DATE:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43551448648993280535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Attribute Groups'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13::'
,p_icon_css_classes=>'fa-caret-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43545583224095989508)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(83196052460694656436)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820848479833232)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'CreateUpdateAttributeGroupPG'
,p_page_mode=>'MODAL'
,p_step_title=>'Attribute Group'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'CreateUpdateFlexFieldPG'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1100'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180307094143'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83318866073733997661)
,p_plug_name=>'Attribute Group'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(83318867994272997680)
,p_name=>'Lines'
,p_parent_plug_id=>wwv_flow_api.id(83318866073733997661)
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT line_id ,',
'  seq_number ,',
'  attribute ,',
'  meaning ,',
'  description ,',
'  enabled_flag ,',
'  start_date ,',
'  end_date end_date,',
'header_id',
'FROM xxiw_flexfields_lines',
'where header_id=:p13_header_id'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43674339655575621861)
,p_query_column_id=>1
,p_column_alias=>'LINE_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43674340072778621861)
,p_query_column_id=>2
,p_column_alias=>'SEQ_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'SEQ'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_report_column_width=>3
,p_column_width=>3
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43674340454965621861)
,p_query_column_id=>3
,p_column_alias=>'ATTRIBUTE'
,p_column_display_sequence=>4
,p_column_heading=>'ATTRIBUTE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ATTRIBUTE1'' d, ''ATTRIBUTE1'' r from dual',
'union all',
'select ''ATTRIBUTE2'' d, ''ATTRIBUTE2'' r from dual',
'union all',
'select ''ATTRIBUTE3'' d, ''ATTRIBUTE3'' r from dual',
'union all',
'select ''ATTRIBUTE4'' d, ''ATTRIBUTE4'' r from dual',
'union all',
'select ''ATTRIBUTE5'' d, ''ATTRIBUTE5'' r from dual',
'union all',
'select ''ATTRIBUTE6'' d, ''ATTRIBUTE6'' r from dual',
'union all',
'select ''ATTRIBUTE7'' d, ''ATTRIBUTE7'' r from dual',
'union all',
'select ''ATTRIBUTE8'' d, ''ATTRIBUTE8'' r from dual',
'union all',
'select ''ATTRIBUTE9'' d, ''ATTRIBUTE9'' r from dual',
'union all',
'select ''ATTRIBUTE10'' d, ''ATTRIBUTE10'' r from dual'))
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43674340846319621862)
,p_query_column_id=>4
,p_column_alias=>'MEANING'
,p_column_display_sequence=>5
,p_column_heading=>'Meaning'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43674341228385621862)
,p_query_column_id=>5
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>6
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43674341659741621862)
,p_query_column_id=>6
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Enabled '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(43788555080813419092)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_column_default=>'''Yes'''
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43674342067841621863)
,p_query_column_id=>7
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Start date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_column_default=>'xxiw_admin_util_pkg.get_default_date'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678378124543907902)
,p_query_column_id=>8
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'End date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43674339223119621860)
,p_query_column_id=>9
,p_column_alias=>'HEADER_ID'
,p_column_display_sequence=>10
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43674342896600621863)
,p_query_column_id=>10
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83329018491215682350)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43674343259842621864)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(83318867994272997680)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Add Row'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43678378421922907905)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(83329018491215682350)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43674335002525621851)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(83329018491215682350)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43674345701719621942)
,p_branch_name=>'Go To Page 8'
,p_branch_action=>'12'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43674335713608621855)
,p_name=>'P13_SHORT_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(83318866073733997661)
,p_prompt=>'Short Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43674336195230621856)
,p_name=>'P13_HEADER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(83318866073733997661)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43674336507964621857)
,p_name=>'P13_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(83318866073733997661)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43674336913254621857)
,p_name=>'P13_DESC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(83318866073733997661)
,p_prompt=>'Desciption'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820547702833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43674337366403621857)
,p_name=>'P13_ENABLED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(83318866073733997661)
,p_item_default=>'Yes'
,p_prompt=>'Enabled'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'XXIW_YES_NO_LOV'
,p_lov=>'.'||wwv_flow_api.id(43788555080813419092)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(86274820547702833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43674337720923621858)
,p_name=>'P13_START_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(83318866073733997661)
,p_item_default=>'return to_char(sysdate,''DD-Mon-YY'');'
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820547702833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43674338170013621858)
,p_name=>'P13_END_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(83318866073733997661)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820547702833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43674338578550621858)
,p_name=>'P13_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(83318866073733997661)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43674344798172621940)
,p_name=>'OnClick'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43674343259842621864)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43674345260777621941)
,p_event_id=>wwv_flow_api.id(43674344798172621940)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'  apex.widget.tabular.addRow();',
'} '))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43674344332374621939)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FetchProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF(:P13_HEADER_ID IS NOT NULL) THEN',
'    SELECT xfh.short_name,',
'      xfh.name,',
'	  xfh.description,',
'      xfh.enabled_flag,',
'      xfh.start_date,',
'      xfh.end_date',
'    INTO :p13_short_name,',
'      :p13_name,',
'	  :p13_desc,',
'      :p13_enabled,',
'      :p13_start_date,',
'      :p13_end_date',
'    FROM xxiw_flexfields_headers xfh',
'    WHERE 1         =1',
'    AND xfh.header_id=:P13_HEADER_ID;',
'  ELSE',
'    :P13_HEADER_ID     :=NULL;',
'	:p13_short_name   :=NULL;',
'    :p13_name   :=NULL;',
'    :p13_desc   :=NULL;',
'    :p13_enabled :=NULL;',
'    :p13_start_date   :=NULL;',
'    :p13_end_date     :=NULL;',
'  END IF;',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :P13_HEADER_ID     :=NULL;',
'  :p13_short_name   :=NULL;',
'  :p13_name   :=NULL;',
'  :p13_desc   :=NULL;',
'  :p13_enabled :=NULL;',
'  :p13_start_date   :=NULL;',
'  :p13_end_date     :=NULL;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43674344033260621939)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateFlexField'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode NUMBER;',
'  x_errbuf  VARCHAR2(4000);',
'  l_user_id NUMBER;',
'  l_msg     VARCHAR2(3000);',
'  l_flexfields_lines xxiw_admin_util_pkg.flexfields_lines_type;',
'  end_date_error EXCEPTION;',
'  l_end_date_error varchar2(1000);',
'BEGIN',
'FOR i IN 1 .. apex_application.g_f02.COUNT',
'   LOOP',
' --  IF apex_application.g_f03(i) IS NOT NULL AND apex_application.g_f04(i) IS NOT NULL',
'  -- THEN',
'	l_flexfields_lines(i).line_id  := apex_application.g_f02(i);',
'	l_flexfields_lines(i).seq_number := apex_application.g_f03(i);',
'	l_flexfields_lines(i).ATTRIBUTE      := apex_application.g_f04(i);   ',
'	l_flexfields_lines(i).meaning     := apex_application.g_f05(i);',
'	l_flexfields_lines(i).description := apex_application.g_f06(i);',
'	l_flexfields_lines(i).enabled_flag   := apex_application.g_f07(i);',
'	l_flexfields_lines(i).start_date     := apex_application.g_f08(i);',
'	l_flexfields_lines(i).end_date     := TO_DATE(apex_application.g_f09(i),''DD-MON-YYYY'') ;',
'	l_flexfields_lines(i).header_id     := apex_application.g_f10(i);',
'	',
'	',
'	if (l_flexfields_lines(i).end_date is not null AND TO_DATE(l_flexfields_lines(i).end_date,''DD-MON-YYYY'') < TO_DATE(l_flexfields_lines(i).start_date,''DD-MON-YYYY'') ) then',
'	  RAISE end_date_error;',
'   end if;',
'   ',
'  -- END IF;',
'END LOOP;',
'',
'  l_user_id :=xxiw_admin_util_pkg.get_userid(:app_user);',
'  if(:P13_SHORT_NAME is not null) then',
'  xxiw_admin_util_pkg.create_update_flexfield(p_header_id         =>:P13_HEADER_ID,',
'                                       p_short_name       =>:P13_SHORT_NAME,',
'									   p_name       =>:P13_NAME,',
'									    p_description       =>:P13_NAME,',
'                                       p_enabled_flag     =>:P13_ENABLED,',
'                                       p_start_date       =>:P13_START_DATE,',
'                                       p_end_date         =>:P13_END_DATE,',
'                                       p_flexfields_lines => l_flexfields_lines ,',
'	                                   p_creation_date    => sysdate,',
'	                                   p_created_by       => l_user_id,',
'                                       p_last_update_date => sysdate, ',
'                                       p_last_updated_by  =>l_user_id, ',
'                                       p_retcode          =>x_retcode,',
'                                       p_errbuf           =>x_errbuf);',
'									   ',
'									   ',
' :P13_STATUS:=''S'';',
'  ELSE',
' :p13_status:=''E'';',
' END IF;',
' EXCEPTION',
'WHEN end_date_error THEN',
':p13_status:=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Line Level End Date should be equal or greater than Start Date.  ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'WHEN OTHERS THEN',
' :p13_status:=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39654763834112063606)
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'approvalsPG'
,p_page_mode=>'MODAL'
,p_step_title=>'Approval'
,p_step_sub_title=>'approvalsPG'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180301121909'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88519578659852868931)
,p_plug_name=>'Item Description'
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(175691777994439952215)
,p_plug_name=>'buttonBar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44433610131522949131)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(175691777994439952215)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44433610518624949133)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(175691777994439952215)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44433611843443949138)
,p_branch_name=>'NavigateToRequestEdit'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P14_STATUS'
,p_branch_condition_text=>'S'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44433521033989949121)
,p_name=>'P14_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(88519578659852868931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44433601496125949123)
,p_name=>'P14_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(88519578659852868931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44433627203585736401)
,p_name=>'P14_IR_APPROVAL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(88519578659852868931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44433627333464736402)
,p_name=>'P14_APPROVER_NAME'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(88519578659852868931)
,p_prompt=>'Approver'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'XXIW_APPROVERS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'xuv.user_name||''''||nvl2(xau.user_name,'' - Final Approver '','' - User'') d,',
'xuv.user_name r',
'FROM xxiw_users_v xuv,',
'xxiw_admin_user xau',
'where xuv.user_name=xau.user_name(+)',
'and (upper(xuv.user_name) <> upper(:APP_USER) ',
'and xuv.user_id <> (select xir.created_by from xxiw_item_requests xir where xir.item_request_id=:P5_REQUEST_ID ))'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44433627493053736403)
,p_name=>'P14_COMMENTS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(88519578659852868931)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>90
,p_cMaxlength=>150
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52198437520146804402)
,p_name=>'P14_STATUS_ACTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(88519578659852868931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44433611386610949137)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode        NUMBER;',
'  x_errbuf         VARCHAR2(4000);',
'  l_user_id        NUMBER;',
'  l_msg            VARCHAR2(3000);',
'BEGIN',
'  l_user_id:=xxiw_admin_util_pkg.get_userid(:app_user);',
'  ',
'  IF(:P14_APPROVER_NAME IS NOT NULL) THEN',
'    xxiw_ir_utils_pkg.create_update_approvals(',
'	p_ir_approval_id => :P14_IR_APPROVAL_ID,',
'	p_item_request_id =>:P14_REQUEST_ID, ',
'   	p_approver_name => :P14_APPROVER_NAME,',
'	p_comments => :P14_COMMENTS,',
'	p_status => :P14_STATUS_ACTION,',
'	p_creation_date => sysdate, ',
'	p_created_by => l_user_id, ',
'	p_last_update_date => sysdate, ',
'	p_last_updated_by =>l_user_id, ',
'	p_retcode =>x_retcode, ',
'	p_errbuf =>x_errbuf);',
'    :P14_STATUS:=''S'';',
'  ELSE',
'    :P14_STATUS:=''E'';',
'  END IF;',
'  ',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :P14_STATUS                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44433610518624949133)
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'Lookups'
,p_page_mode=>'NORMAL'
,p_step_title=>'Lookups'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Lookups'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180117084203'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43678378233449907903)
,p_plug_name=>'About Lookups'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<small><i><p>Lookups to be created for Quick Codes defined in IWB',
'<br>Click on column headings to sort and filter specific columns. Click the Action button to control column selection and view additional options. </p></i></small>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64392650445664349614)
,p_plug_name=>'LookUP'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_api.id(86274797580830833214)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_type_id ,',
'lookup_type ,',
'NULL edit,',
'name ,',
'description ,',
'xxiw_admin_util_pkg.get_lookup_status(lookup_type) status,',
'creation_date',
'from xxiw_lookup_types;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(64392650618973349616)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'BK.ELEX@GMAIL.COM'
,p_internal_uid=>64392650618973349616
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43678816324464191831)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'H'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP:P16_LOOKUP_TYPE_ID:#LOOKUP_TYPE_ID#'
,p_column_linktext=>'<span class="t-Icon fa fa-pencil-square-o"></span><span class="u-VisuallyHidden">Open Link</span>'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--small t-Button--noLabel t-Button--icon t-Button--iconOnly t-Button--stretch"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43678813935563191828)
,p_db_column_name=>'LOOKUP_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43678814311452191830)
,p_db_column_name=>'NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43678814732681191830)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43678815142010191830)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43678815567168191831)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43678815919326191831)
,p_db_column_name=>'LOOKUP_TYPE_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Lookup type id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(83315667760579436786)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'436788167'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'EDIT:LOOKUP_TYPE:NAME:DESCRIPTION:STATUS:CREATION_DATE:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43678817492312191836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'CREATE_LOOKUP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create LookUp'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP,16::'
,p_icon_css_classes=>'fa-caret-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43678378386022907904)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(64392650445664349614)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820848479833232)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP,15::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'CreateUpdateLookUps'
,p_page_mode=>'MODAL'
,p_step_title=>'Lookup'
,p_reload_on_submit=>'A'
,p_step_sub_title=>'CreateUpdateLookUps'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180121063830'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64392791395283142524)
,p_plug_name=>'LookUps'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(64392792125625142531)
,p_name=>'Lookup Values'
,p_parent_plug_id=>wwv_flow_api.id(64392791395283142524)
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LOOKUP_TYPE_id,',
'LOOKUP_ID,',
'LOOKUP_CODE,MEANING ,DESCRIPTION,TAG,ENABLED_flag,start_date,end_date from xxiw_lookup_values where lookup_type_id=:p16_lookup_type_id;'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678933833609984641)
,p_query_column_id=>1
,p_column_alias=>'LOOKUP_TYPE_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678932672860984640)
,p_query_column_id=>2
,p_column_alias=>'LOOKUP_ID'
,p_column_display_sequence=>3
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678933079153984640)
,p_query_column_id=>3
,p_column_alias=>'LOOKUP_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Lookup Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678933492213984640)
,p_query_column_id=>4
,p_column_alias=>'MEANING'
,p_column_display_sequence=>5
,p_column_heading=>'Meaning'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678934694849984641)
,p_query_column_id=>5
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>6
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678934261050984641)
,p_query_column_id=>6
,p_column_alias=>'TAG'
,p_column_display_sequence=>7
,p_column_heading=>'Tag'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>5
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678935056402984641)
,p_query_column_id=>7
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>8
,p_column_heading=>'Enabled '
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(43788555080813419092)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_column_default=>'''Yes'''
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678935436879984642)
,p_query_column_id=>8
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_column_default=>'xxiw_admin_util_pkg.get_default_date'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678935874558984642)
,p_query_column_id=>9
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43678932211067984639)
,p_query_column_id=>10
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83442722038497638401)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43678378533178907906)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(83442722038497638401)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43678936247567984643)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(64392792125625142531)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Add Row'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43678888099925984631)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(83442722038497638401)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43678938495909984657)
,p_branch_name=>'Go To Page Lookup Report'
,p_branch_action=>'15'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43678888749800984634)
,p_name=>'P16_LOOKUP_TYPE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(64392791395283142524)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43678889106035984635)
,p_name=>'P16_LOOKUP_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(64392791395283142524)
,p_prompt=>'Lookup Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43678889535667984635)
,p_name=>'P16_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(64392791395283142524)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43678889905529984636)
,p_name=>'P16_DESC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(64392791395283142524)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43678890399807984636)
,p_name=>'P16_ENABLED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(64392791395283142524)
,p_item_default=>'Yes'
,p_prompt=>'Enabled'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'XXIW_YES_NO_LOV'
,p_lov=>'.'||wwv_flow_api.id(43788555080813419092)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(86274820547702833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43678890794635984636)
,p_name=>'P16_START_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(64392791395283142524)
,p_item_default=>'return to_char(sysdate,''DD-Mon-YY'');'
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820547702833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43678891114085984637)
,p_name=>'P16_END_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(64392791395283142524)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43678931547939984637)
,p_name=>'P16_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(64392791395283142524)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43678937400374984655)
,p_name=>'Onclick'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43678936247567984643)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43678937938732984656)
,p_event_id=>wwv_flow_api.id(43678937400374984655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'  apex.widget.tabular.addRow();',
'} '))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43678936693248984653)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH PROCESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF(:P16_Lookup_type_ID IS NOT NULL) THEN',
'    SELECT xlt.Lookup_type,',
'      xlt.name,',
'	  xlt.description,',
'      xlt.enabled_flag,',
'      xlt.start_date,',
'      xlt.end_date',
'    INTO :p16_Lookup_type,',
'      :p16_name,',
'	  :p16_desc,',
'      :p16_enabled,',
'      :p16_start_date,',
'      :p16_end_date',
'    FROM xxiw_lookup_types xlt',
'    WHERE 1         =1',
'    AND xlt.lookup_type_id=:P16_lookup_type_id;',
'  ELSE',
'    :P16_lookup_type_id     :=NULL;',
'	:p16_lookup_type   :=NULL;',
'    :p16_name   :=NULL;',
'    :p16_desc   :=NULL;',
'    :p16_enabled :=NULL;',
'    :p16_start_date   :=NULL;',
'    :p16_end_date     :=NULL;',
'  END IF;',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :P16_Lookup_type_ID     :=NULL;',
'  :p16_name   :=NULL;',
'  :p16_name   :=NULL;',
'  :p16_desc   :=NULL;',
'  :p16_enabled :=NULL;',
'  :p16_start_date   :=NULL;',
'  :p16_end_date     :=NULL;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43678937077977984654)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateLookUp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode NUMBER;',
'  x_errbuf  VARCHAR2(4000);',
'  l_user_id NUMBER;',
'  l_msg     VARCHAR2(3000);',
'  l_lookup_values xxiw_admin_util_pkg.lookup_values_type;',
'  end_date_error EXCEPTION;',
'  l_end_date_error varchar2(1000);',
'BEGIN',
'FOR i IN 1 .. apex_application.g_f02.COUNT',
'   LOOP',
' --  IF apex_application.g_f03(i) IS NOT NULL AND apex_application.g_f04(i) IS NOT NULL',
'  -- THEN',
'	l_lookup_values(i).lookup_type_id  := apex_application.g_f02(i);',
'	l_lookup_values(i).lookup_id := apex_application.g_f03(i);',
'	l_lookup_values(i).lookup_code     := apex_application.g_f04(i);   ',
'	l_lookup_values(i).meaning     := apex_application.g_f05(i);',
'	l_lookup_values(i).description := apex_application.g_f06(i);',
'	l_lookup_values(i).tag   := apex_application.g_f07(i);',
'	l_lookup_values(i).enabled_flag     := apex_application.g_f08(i);',
'	l_lookup_values(i).start_date     := apex_application.g_f09(i);',
'	l_lookup_values(i).end_date    := apex_application.g_f10(i);',
'	',
'	if (l_lookup_values(i).end_date is not null AND TO_DATE(l_lookup_values(i).end_date,''DD-MON-YYYY'') < TO_DATE(l_lookup_values(i).start_date,''DD-MON-YYYY'') ) then',
'	  RAISE end_date_error;',
'   end if;',
'  -- END IF;',
'END LOOP;',
'',
'  l_user_id :=xxiw_admin_util_pkg.get_userid(:app_user);',
'  if(:P16_LOOKUP_TYPE is not null) then',
'  xxiw_admin_util_pkg.create_update_lookup(p_lookup_type_id         =>:P16_LOOKUP_TYPE_ID,',
'                                       p_lookup_type       =>:P16_LOOKUP_TYPE,',
'									   p_name       =>:P16_NAME,',
'									    p_description       =>:P16_DESC,',
'                                       p_enabled_flag     =>:P16_ENABLED,',
'                                       p_start_date       =>:P16_START_DATE,',
'                                       p_end_date         =>:P16_END_DATE,',
'                                       p_lookup_values => l_lookup_values ,',
'	                                   p_creation_date    => sysdate,',
'	                                   p_created_by       => l_user_id,',
'                                       p_last_update_date => sysdate, ',
'                                       p_last_updated_by  =>l_user_id, ',
'                                       p_retcode          =>x_retcode,',
'                                       p_errbuf           =>x_errbuf);',
'									   ',
'									   ',
' :P16_STATUS:=''S'';',
'  ELSE',
' :p16_status:=''E'';',
' END IF;',
' EXCEPTION',
'WHEN end_date_error THEN',
':p16_status:=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Line Level End Date should be equal or greater than Start Date.  ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'WHEN OTHERS THEN',
' :p16_status:=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39763837399501656815)
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'Attribute Association'
,p_page_mode=>'NORMAL'
,p_step_title=>'Attribute Association'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Attribute Association'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180307114329'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43678378617895907907)
,p_plug_name=>'About Attribute Association'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<small><i><p>To map attribute group with categories',
'<br>Click on column headings to sort and filter specific columns. Click the Action button to control column selection and view additional options. </p></i></small>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83641589530440534767)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(123766288263675179470)
,p_name=>'AttributeAssociation'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT association_id,',
'  item_category,',
'  purchasing_category,',
'  attribute_group,',
'  enabled_flag  ,',
'  start_date ,',
'  end_date  ',
'FROM xxiw_attribute_association'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43682489250505325918)
,p_query_column_id=>1
,p_column_alias=>'ASSOCIATION_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43682486839063325915)
,p_query_column_id=>2
,p_column_alias=>'ITEM_CATEGORY'
,p_column_display_sequence=>3
,p_column_heading=>'Item Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP'
,p_named_lov=>wwv_flow_api.id(43800656918298171954)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43682487265774325916)
,p_query_column_id=>3
,p_column_alias=>'PURCHASING_CATEGORY'
,p_column_display_sequence=>4
,p_column_heading=>'Purchasing Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP'
,p_named_lov=>wwv_flow_api.id(43800858385035952673)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43682487645522325916)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_GROUP'
,p_column_display_sequence=>5
,p_column_heading=>'Attribute Group'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP'
,p_named_lov=>wwv_flow_api.id(44086130671238786165)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43682488070891325916)
,p_query_column_id=>5
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Enabled '
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(43788555080813419092)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_column_default=>'''Yes'''
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43682488470712325917)
,p_query_column_id=>6
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_column_default=>'xxiw_admin_util_pkg.get_default_date'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43682488828620325917)
,p_query_column_id=>7
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43682486400704325914)
,p_query_column_id=>8
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43678378798898907908)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(83641589530440534767)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43682489647494325918)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(123766288263675179470)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Add Row'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43678378895147907909)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'Cancel_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43682485845980325912)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(83641589530440534767)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43678378943507907910)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'APPLY_CHANGES_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43682485109042325909)
,p_name=>'P17_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(123766288263675179470)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43682491084386325922)
,p_name=>'OnClick'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43682489647494325918)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43682531590103325924)
,p_event_id=>wwv_flow_api.id(43682491084386325922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'  apex.widget.tabular.addRow();',
'} '))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43682490630386325921)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'createUpdateAttribute'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode NUMBER;',
'  x_errbuf  VARCHAR2(4000);',
'  l_user_id NUMBER;',
'  l_msg     VARCHAR2(3000);',
'  l_attribute_association xxiw_admin_util_pkg.attribute_association_type;',
'  end_date_error   EXCEPTION;',
'  l_end_date_error VARCHAR2(1000);',
'BEGIN',
'  FOR i IN 1 .. apex_application.g_f03.count',
'  LOOP',
'   ',
'    --  IF apex_application.g_f03(i) IS NOT NULL AND apex_application.g_f04(i) IS NOT NULL',
'    -- THEN',
'    l_attribute_association(i).association_id      := apex_application.g_f02(i);',
'    l_attribute_association(i).item_category       := apex_application.g_f03(i);',
'    l_attribute_association(i).purchasing_category := apex_application.g_f04(i);',
'    l_attribute_association(i).attribute_group     := apex_application.g_f05(i);',
'    l_attribute_association(i).enabled_flag        := apex_application.g_f06(i);',
'    l_attribute_association(i).start_date          := apex_application.g_f07(i);',
'    l_attribute_association(i).end_date            := apex_application.g_f08(i);',
'    IF (l_attribute_association(i).end_date        IS NOT NULL AND to_date(l_attribute_association(i).end_date,''DD-MON-YYYY'') < to_date(l_attribute_association(i).start_date,''DD-MON-YYYY'') ) THEN',
'      raise end_date_error;',
'    END IF;',
'    -- END IF;',
'  END LOOP;',
'  l_user_id :=xxiw_admin_util_pkg.get_userid(:app_user);',
'  xxiw_admin_util_pkg.create_update_attribute( p_attribute_association => l_attribute_association , p_creation_date => sysdate, p_created_by => l_user_id, p_last_update_date => sysdate, p_last_updated_by =>l_user_id, p_retcode =>x_retcode, p_errbuf ='
||'>x_errbuf);',
'  :p17_status:=''S'';',
'EXCEPTION',
'WHEN end_date_error THEN',
'  :p17_status                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Line Level End Date should be equal or greater than Start Date.  ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'WHEN OTHERS THEN',
'  :p17_status                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES:APPLY_CHANGES_1'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'itemDescriptionPG'
,p_page_mode=>'MODAL'
,p_step_title=>'Description'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180123100115'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44086060645071922809)
,p_plug_name=>'Item Description'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131258259979659006093)
,p_plug_name=>'buttonBar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44164045954791990724)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(131258259979659006093)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44164046301456990725)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(131258259979659006093)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44086073172352922834)
,p_branch_name=>'NavigateToRequestEdit'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P18_STATUS'
,p_branch_condition_text=>'S'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086060713303922810)
,p_name=>'P18_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086060827606922811)
,p_name=>'P18_ATTRIBUTE1_DESP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086060936516922812)
,p_name=>'P18_ATTRIBUTE1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_prompt=>'&P18_ATTRIBUTE1_DESP.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P18_ATTRIBUTE1_DESP'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086061116608922814)
,p_name=>'P18_ATTRIBUTE2_DESP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086071251401922815)
,p_name=>'P18_ATTRIBUTE3_DESP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086071388569922816)
,p_name=>'P18_ATTRIBUTE4_DESP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086071463108922817)
,p_name=>'P18_ATTRIBUTE5_DESP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086071522713922818)
,p_name=>'P18_ATTRIBUTE6_DESP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086071652640922819)
,p_name=>'P18_ATTRIBUTE7_DESP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086071795745922820)
,p_name=>'P18_ATTRIBUTE8_DESP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086071860916922821)
,p_name=>'P18_ATTRIBUTE9_DESP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086071973789922822)
,p_name=>'P18_ATTRIBUTE10_DESP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086072099088922823)
,p_name=>'P18_ATTRIBUTE2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_prompt=>'&P18_ATTRIBUTE2_DESP.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P18_ATTRIBUTE2_DESP'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086072122118922824)
,p_name=>'P18_ATTRIBUTE3'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_prompt=>'&P18_ATTRIBUTE3_DESP.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P18_ATTRIBUTE3_DESP'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086072240420922825)
,p_name=>'P18_ATTRIBUTE4'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_prompt=>'&P18_ATTRIBUTE4_DESP.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P18_ATTRIBUTE4_DESP'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086072313871922826)
,p_name=>'P18_ATTRIBUTE5'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_prompt=>'&P18_ATTRIBUTE5_DESP.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P18_ATTRIBUTE5_DESP'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086072490160922827)
,p_name=>'P18_ATTRIBUTE6'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_prompt=>'&P18_ATTRIBUTE6_DESP.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P18_ATTRIBUTE6_DESP'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086072521225922828)
,p_name=>'P18_ATTRIBUTE7'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_prompt=>'&P18_ATTRIBUTE7_DESP.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P18_ATTRIBUTE7_DESP'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086072633324922829)
,p_name=>'P18_ATTRIBUTE8'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_prompt=>'&P18_ATTRIBUTE8_DESP.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P18_ATTRIBUTE8_DESP'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086072798870922830)
,p_name=>'P18_ATTRIBUTE9'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_prompt=>'&P18_ATTRIBUTE9_DESP.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P18_ATTRIBUTE9_DESP'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086072881972922831)
,p_name=>'P18_ATTRIBUTE10'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_prompt=>'&P18_ATTRIBUTE10_DESP.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P18_ATTRIBUTE10_DESP'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086072903423922832)
,p_name=>'P18_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(44086060645071922809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44086061007794922813)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FetchProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_header_id number;',
'BEGIN',
'BEGIN',
'select header_id into l_header_id',
'from xxiw_flexfields_headers xfh,',
'xxiw_item_requests xir',
'where 1=1',
'AND xfh.enabled_flag=''Yes''',
'and trunc(sysdate) between trunc(nvl(xfh.start_date,sysdate)) and trunc(nvl(xfh.end_date,sysdate))',
'and xfh.name=xir.attribute_group',
'and xir.item_request_id=:P18_REQUEST_ID;',
'SELECT',
'REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || '','')).extract (''//text()''), '',''), ''[^,]+'', 1, 1)  attribute1,',
'REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || '','')).extract (''//text()''), '',''), ''[^,]+'', 1, 2)  attribute2,',
'REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || '','')).extract (''//text()''), '',''), ''[^,]+'', 1, 3)  attribute3,',
'REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || '','')).extract (''//text()''), '',''), ''[^,]+'', 1, 4)  attribute4,',
'REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || '','')).extract (''//text()''), '',''), ''[^,]+'', 1, 5)  attribute5,',
'REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || '','')).extract (''//text()''), '',''), ''[^,]+'', 1, 6)  attribute6,',
'REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || '','')).extract (''//text()''), '',''), ''[^,]+'', 1, 7)  attribute7,',
'REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || '','')).extract (''//text()''), '',''), ''[^,]+'', 1, 8)  attribute8,',
'REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || '','')).extract (''//text()''), '',''), ''[^,]+'', 1, 9)  attribute9,',
'REGEXP_SUBSTR (rtrim (xmlagg (xmlelement (e, xfl.meaning || '','')).extract (''//text()''), '',''), ''[^,]+'', 1, 10)  attribute10',
'INTO ',
':P18_ATTRIBUTE1_DESP,',
':P18_ATTRIBUTE2_DESP,',
':P18_ATTRIBUTE3_DESP,',
':P18_ATTRIBUTE4_DESP,',
':P18_ATTRIBUTE5_DESP,',
':P18_ATTRIBUTE6_DESP,',
':P18_ATTRIBUTE7_DESP,',
':P18_ATTRIBUTE8_DESP,',
':P18_ATTRIBUTE9_DESP,',
':P18_ATTRIBUTE10_DESP',
'FROM xxiw_flexfields_lines xfl',
'WHERE 1=1',
'AND xfl.enabled_flag=''Yes''',
'and trunc(sysdate) between trunc(nvl(xfl.start_date,sysdate)) and trunc(nvl(xfl.end_date,sysdate))',
'and xfl.HEADER_ID=l_header_id',
'order by to_number(trim(replace(xfl.attribute,''ATTRIBUTE'','''')));',
'EXCEPTION WHEN OTHERS THEN',
':P18_ATTRIBUTE1_DESP:=NULL;',
':P18_ATTRIBUTE2_DESP:=NULL;',
':P18_ATTRIBUTE3_DESP:=NULL;',
':P18_ATTRIBUTE4_DESP:=NULL;',
':P18_ATTRIBUTE5_DESP:=NULL;',
':P18_ATTRIBUTE6_DESP:=NULL;',
':P18_ATTRIBUTE7_DESP:=NULL;',
':P18_ATTRIBUTE8_DESP:=NULL;',
':P18_ATTRIBUTE9_DESP:=NULL;',
':P18_ATTRIBUTE10_DESP:=NULL;',
'END;',
'',
'BEGIN',
'SELECT attribute1,',
'attribute2,',
'attribute3,',
'attribute4,',
'attribute5,',
'attribute6,',
'attribute7,',
'attribute8,',
'attribute9,',
'attribute10',
'into ',
':P18_ATTRIBUTE1,',
':P18_ATTRIBUTE2,',
':P18_ATTRIBUTE3,',
':P18_ATTRIBUTE4,',
':P18_ATTRIBUTE5,',
':P18_ATTRIBUTE6,',
':P18_ATTRIBUTE7,',
':P18_ATTRIBUTE8,',
':P18_ATTRIBUTE9,',
':P18_ATTRIBUTE10',
'FROM xxiw_item_requests',
'where item_request_id=:P18_REQUEST_ID;',
'EXCEPTION WHEN OTHERS THEN',
':P18_ATTRIBUTE1:=NULL;',
':P18_ATTRIBUTE2:=NULL;',
':P18_ATTRIBUTE3:=NULL;',
':P18_ATTRIBUTE4:=NULL;',
':P18_ATTRIBUTE5:=NULL;',
':P18_ATTRIBUTE6:=NULL;',
':P18_ATTRIBUTE7:=NULL;',
':P18_ATTRIBUTE8:=NULL;',
':P18_ATTRIBUTE9:=NULL;',
':P18_ATTRIBUTE10:=NULL;',
'END;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44086073090950922833)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode        NUMBER;',
'  x_errbuf         VARCHAR2(4000);',
'  l_user_id        NUMBER;',
'  l_msg            VARCHAR2(3000);',
'BEGIN',
'  l_user_id:=xxiw_admin_util_pkg.get_userid(:app_user);',
'  ',
'  IF(:P18_ATTRIBUTE1 IS NOT NULL) THEN',
'    xxiw_ir_utils_pkg.create_update_long_desc(',
'	p_item_request_id =>:P3_REQUEST_ID, ',
'    p_attribute1 => :P18_ATTRIBUTE1,',
'	p_attribute2 => :P18_ATTRIBUTE2,',
'	p_attribute3 => :P18_ATTRIBUTE3,',
'	p_attribute4 => :P18_ATTRIBUTE4,',
'	p_attribute5 => :P18_ATTRIBUTE5,',
'	p_attribute6 => :P18_ATTRIBUTE6,',
'	p_attribute7 => :P18_ATTRIBUTE7,',
'	p_attribute8 => :P18_ATTRIBUTE8,',
'	p_attribute9 => :P18_ATTRIBUTE9,',
'	p_attribute10 => :P18_ATTRIBUTE10,',
'	p_creation_date => sysdate, ',
'	p_created_by => l_user_id, ',
'	p_last_update_date => sysdate, ',
'	p_last_updated_by =>l_user_id, ',
'	p_retcode =>x_retcode, ',
'	p_errbuf =>x_errbuf);',
'    :P18_STATUS:=''S'';',
'  ELSE',
'    :P18_STATUS:=''E'';',
'  END IF;',
'  ',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :P18_STATUS                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44164046301456990725)
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'manufacturerPartNumberPG'
,p_page_mode=>'MODAL'
,p_step_title=>'Manufacturer Part Numbers'
,p_reload_on_submit=>'A'
,p_step_sub_title=>'manufacturerPartNumberPG'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'1000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180123094955'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(85265453213076059021)
,p_name=>'MPNs'
,p_template=>wwv_flow_api.id(86274788149546833207)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ir_mpn_id,',
'  seq_number,',
'  mpn_name,',
'  manufacture_name,',
'  item_request_id,',
'  enabled_flag,',
'  start_date,',
'  end_date',
'FROM xxiw_ir_mpns',
'WHERE ITEM_REQUEST_ID=:P19_REQUEST_ID'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44193438038578611243)
,p_query_column_id=>1
,p_column_alias=>'IR_MPN_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44193438447264611244)
,p_query_column_id=>2
,p_column_alias=>'SEQ_NUMBER'
,p_column_display_sequence=>4
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44193438836071611244)
,p_query_column_id=>3
,p_column_alias=>'MPN_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Part Number'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44193439273991611245)
,p_query_column_id=>4
,p_column_alias=>'MANUFACTURE_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Manufacture'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP'
,p_named_lov=>wwv_flow_api.id(44307842615386493684)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44193439642918611245)
,p_query_column_id=>5
,p_column_alias=>'ITEM_REQUEST_ID'
,p_column_display_sequence=>3
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44193440035404611245)
,p_query_column_id=>6
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Enabled '
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(43788555080813419092)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_column_default=>'''YES'''
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44193440423077611246)
,p_query_column_id=>7
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_column_default=>'xxiw_admin_util_pkg.get_default_date'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44193440892245611246)
,p_query_column_id=>8
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44193451229210611246)
,p_query_column_id=>9
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(85265454237900059031)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44193452065336611248)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(85265453213076059021)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44193453117166611250)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(85265454237900059031)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44193453551474611250)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(85265454237900059031)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44086073389604922836)
,p_branch_name=>'NavigatetoRequestEdit'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44193453551474611250)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44193452424823611248)
,p_name=>'P19_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(85265453213076059021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44193454381254611251)
,p_name=>'OnClick'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(44193452065336611248)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44193454805139611252)
,p_event_id=>wwv_flow_api.id(44193454381254611251)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'  apex.widget.tabular.addRow();',
'} '))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44193453908689611251)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode NUMBER;',
'  x_errbuf  VARCHAR2(4000);',
'  l_user_id NUMBER;',
'  l_msg     VARCHAR2(3000);',
'  l_mpns xxiw_ir_utils_pkg.ir_mpns_type;',
'  end_date_error   EXCEPTION;',
'  l_end_date_error VARCHAR2(1000);',
'BEGIN',
'  FOR i IN 1 .. apex_application.g_f03.count',
'  LOOP',
'    --  IF apex_application.g_f03(i) IS NOT NULL AND apex_application.g_f04(i) IS NOT NULL',
'    -- THEN',
'    l_mpns(i).ir_mpn_id        := apex_application.g_f02(i);',
'	l_mpns(i).item_request_id  := :P19_REQUEST_ID;',
'    l_mpns(i).seq_number       := apex_application.g_f04(i);		',
'    l_mpns(i).mpn_name         := apex_application.g_f05(i);',
'    l_mpns(i).manufacture_name := apex_application.g_f06(i);',
'    l_mpns(i).enabled_flag     := apex_application.g_f07(i);',
'    l_mpns(i).start_date       := apex_application.g_f08(i);',
'    l_mpns(i).end_date         := apex_application.g_f09(i);',
'    IF (l_mpns(i).end_date     IS NOT NULL AND to_date(l_mpns(i).end_date,''DD-MON-YYYY'') < to_date(l_mpns(i).start_date,''DD-MON-YYYY'') ) THEN',
'      raise end_date_error;',
'    END IF;',
'    -- END IF;',
'  END LOOP;',
'  l_user_id :=xxiw_admin_util_pkg.get_userid(:app_user);',
'  xxiw_ir_utils_pkg.create_update_mpns( ',
'  p_mpns => l_mpns , ',
'  p_creation_date => sysdate, ',
'  p_created_by => l_user_id, ',
'  p_last_update_date => sysdate, ',
'  p_last_updated_by =>l_user_id, ',
'  p_retcode =>x_retcode, ',
'  p_errbuf =>x_errbuf);',
'EXCEPTION',
'WHEN end_date_error THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Line Level End Date should be equal or greater than Start Date.  ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'WHEN OTHERS THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44193453551474611250)
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'Attachment'
,p_page_mode=>'MODAL'
,p_step_title=>'Attachment'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Attachment'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180123121823'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(85451705077169935206)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88627686711339978219)
,p_plug_name=>'Attachment'
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44200260790799841707)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(85451705077169935206)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44200261135465841708)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(85451705077169935206)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P20_IR_ATTACHMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44200321550583841708)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(85451705077169935206)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P20_IR_ATTACHMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44200321906101841709)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(85451705077169935206)
,p_button_name=>'ATTACH_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P20_IR_ATTACHMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44200328483783841727)
,p_branch_name=>'Go To Page &LAST_VIEW.'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44200321906101841709)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44200322600311841710)
,p_name=>'P20_IR_ATTACHMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(88627686711339978219)
,p_use_cache_before_default=>'NO'
,p_source=>'IR_ATTACHMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44200323077116841712)
,p_name=>'P20_REQUEST_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(88627686711339978219)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEM_REQUEST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44200323402977841712)
,p_name=>'P20_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(88627686711339978219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name:'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P20_IR_ATTACHMENT_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44200323807976841712)
,p_name=>'P20_FILE_MIMETYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(88627686711339978219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype:'
,p_source=>'FILE_MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P20_IR_ATTACHMENT_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44200324201199841713)
,p_name=>'P20_FILE_BLOB'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(88627686711339978219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File'
,p_post_element_text=>'<p><em>Attachments must be under 15M in size.</em></p>'
,p_source=>'FILE_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(86274820577531833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'FILE_MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_04=>'FILE_CHARSET'
,p_attribute_05=>'LAST_UPDATE_DATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44200325007125841714)
,p_name=>'P20_FILE_COMMENTS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(88627686711339978219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'FILE_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44200327434519841725)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(44200260790799841707)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44200327965718841726)
,p_event_id=>wwv_flow_api.id(44200327434519841725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44200326298411841724)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from XXIW_IR_ATTACHMENTS'
,p_attribute_02=>'XXIW_IR_ATTACHMENTS'
,p_attribute_03=>'P20_IR_ATTACHMENT_ID'
,p_attribute_04=>'IR_ATTACHMENT_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44200327027890841724)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44200261135465841708)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44200325850190841723)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44200326641384841724)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XXIW_IR_ATTACHMENTS'
,p_attribute_02=>'XXIW_IR_ATTACHMENTS'
,p_attribute_03=>'P20_IR_ATTACHMENT_ID'
,p_attribute_04=>'IR_ATTACHMENT_ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'Configuration'
,p_page_mode=>'NORMAL'
,p_step_title=>'Configuration'
,p_step_sub_title=>'Configuration'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180307114408'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88607271678498926707)
,p_plug_name=>'About Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<small><i><p>To configure master organization and its attributes for item requests',
'<br>Click on column headings to sort and filter specific columns. Click the Action button to control column selection and view additional options. </p></i></small>',
''))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131205726959023241236)
,p_plug_name=>'Configurations'
,p_region_template_options=>'js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274797580830833214)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
' xis.setup_id ,',
' xis.master_organization_id,',
' mp.organization_code,',
' xis.item_num_prefix,',
' xis.defualt_flag,',
' xis.template_enabled,',
' xis.uom_enabled,',
' xis.item_category_enabled,',
' xis.po_category_enabled,',
' xxiw_admin_util_pkg.get_setup_status(xis.setup_id) status',
'FROM xxiw_ir_setups xis,',
'     xxiw_mst_organizations_v mp',
'WHERE mp.organization_id=xis.master_organization_id;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(131205727083460241237)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'BK.ELEX@GMAIL.COM'
,p_internal_uid=>131205727083460241237
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44928903004405021889)
,p_db_column_name=>'ORGANIZATION_CODE'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Master Organization'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:P23_SETUP_ID,P23_MST_ORGANIZATION:#SETUP_ID#,#ORGANIZATION_CODE#'
,p_column_linktext=>'#ORGANIZATION_CODE#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch t-Bu0tton--small"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44928928659252029001)
,p_db_column_name=>'SETUP_ID'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Setup id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44928928779453029002)
,p_db_column_name=>'MASTER_ORGANIZATION_ID'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Master organization id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44928928901373029004)
,p_db_column_name=>'DEFUALT_FLAG'
,p_display_order=>40
,p_column_identifier=>'N'
,p_column_label=>'Defualt'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44928928882649029003)
,p_db_column_name=>'ITEM_NUM_PREFIX'
,p_display_order=>50
,p_column_identifier=>'M'
,p_column_label=>'Item Number Prefix'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44928929019185029005)
,p_db_column_name=>'TEMPLATE_ENABLED'
,p_display_order=>60
,p_column_identifier=>'O'
,p_column_label=>'Template'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44928929192969029006)
,p_db_column_name=>'UOM_ENABLED'
,p_display_order=>70
,p_column_identifier=>'P'
,p_column_label=>'UOM'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44928929210835029007)
,p_db_column_name=>'ITEM_CATEGORY_ENABLED'
,p_display_order=>80
,p_column_identifier=>'Q'
,p_column_label=>'Item Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44928929350024029008)
,p_db_column_name=>'PO_CATEGORY_ENABLED'
,p_display_order=>90
,p_column_identifier=>'R'
,p_column_label=>'Purchasing Category '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44928901033922021887)
,p_db_column_name=>'STATUS'
,p_display_order=>100
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(131340778579574480133)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'449289038'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ORGANIZATION_CODE:ITEM_NUM_PREFIX:DEFUALT_FLAG:TEMPLATE_ENABLED:UOM_ENABLED:ITEM_CATEGORY_ENABLED:PO_CATEGORY_ENABLED:STATUS:'
,p_sort_column_1=>'ITEM_REQUEST_ID'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44928905298140021900)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'CREATE_REQUEST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Configuration'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP,22::'
,p_icon_css_classes=>'fa-caret-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44928904216560021893)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(131205726959023241236)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820848479833232)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:2,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'createUpdateConfiguration'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'createUpdateConfiguration'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180307101825'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131204542439416942211)
,p_plug_name=>'Request'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs:t-Form--labelsAbove:margin-top-sm'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131204542723550942214)
,p_plug_name=>'FooterRN'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44929161148825064820)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(131204542723550942214)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44929161580491064821)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(131204542723550942214)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(86274821030070833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44929162857386064827)
,p_branch_name=>'GotoPageConfiguarionEdit'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,23:P23_SETUP_ID,P23_MST_ORGANIZATION:&P22_SETUP_ID.,&P22_ORGANIZATION_CODE_DISPLAY.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P22_STATUS'
,p_branch_condition_text=>'S'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44928929465297029009)
,p_name=>'P22_DEFAULT_FLAG'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(131204542439416942211)
,p_item_default=>'No'
,p_prompt=>'Default'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'XXIW_YES_NO_LOV'
,p_lov=>'.'||wwv_flow_api.id(43788555080813419092)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44928929511131029010)
,p_name=>'P22_PREFIX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(131204542439416942211)
,p_prompt=>'Item Number PREFIX'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820547702833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44928930514521029020)
,p_name=>'P22_ORGANIZATION_CODE_DISPLAY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(131204542439416942211)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44929156452296064816)
,p_name=>'P22_ORGANIZATION_CODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(131204542439416942211)
,p_prompt=>'Master Organization'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'XXIW_INV_MST_ORGS_LOV'
,p_lov=>'select organization_code d, organization_code r from xxiw_mst_organizations_v'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44929158473861064818)
,p_name=>'P22_ENABLED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(131204542439416942211)
,p_item_default=>'''Yes'''
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Enabled'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'XXIW_YES_NO_LOV'
,p_lov=>'.'||wwv_flow_api.id(43788555080813419092)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44929158878595064818)
,p_name=>'P22_START_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(131204542439416942211)
,p_item_default=>'xxiw_admin_util_pkg.get_default_date'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44929159238349064819)
,p_name=>'P22_END_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(131204542439416942211)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44929159661786064819)
,p_name=>'P22_SETUP_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(131204542439416942211)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44929160072695064819)
,p_name=>'P22_STATUS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(131204542439416942211)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51955911283282560123)
,p_name=>'P22_DESCRIPTION_SELECTION'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(131204542439416942211)
,p_prompt=>'Description Selection'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ATTRIBUTE_GROUP'' d, ''ATTRIBUTE_GROUP'' r from dual',
'union all',
'select ''ATTRIBUTE_ASSOCIATION'' d, ''ATTRIBUTE_ASSOCIATION'' r from dual',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51955911349588560124)
,p_name=>'P22_CATEGORY1_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(131204542439416942211)
,p_prompt=>'Item Category'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820547702833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51955911412321560125)
,p_name=>'P22_CATEGORY2_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(131204542439416942211)
,p_prompt=>'Purchasing Category'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(86274820547702833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45063001006721062209)
,p_validation_name=>'ValidateOrgConfiguration'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT count(1)',
'FROM xxiw_ir_setups'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Configuration for this Organization has already been configured!'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44929161999066064826)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FetchProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF(:P22_SETUP_ID IS NOT NULL) THEN',
'    SELECT mp.organization_code,',
'		  xis.defualt_flag,',
'	      xis.item_num_prefix,',
'          xis.enabled_flag,',
'          to_char(xis.start_date,''DD-Mon-YYYY'') start_date,',
'          to_char(xis.end_date,''DD-Mon-YYYY'') end_date,',
'		  description_type,',
'		  category1_name,',
'		  category2_name',
'       INTO ',
'	      :P22_ORGANIZATION_CODE,',
'		  :P22_DEFAULT_FLAG,',
'		  :P22_PREFIX,',
'		  :p22_enabled,',
'	      :p22_start_date,',
'	      :p22_end_date,',
'		  :P22_DESCRIPTION_SELECTION,',
'		  :P22_CATEGORY1_NAME,',
'		  :P22_CATEGORY2_NAME',
'    FROM xxiw_ir_setups xis,',
'	     xxiw_mst_organizations_v mp',
'    WHERE 1         =1',
'	and mp.organization_id=xis.master_organization_id',
'    AND xis.setup_id=:P22_SETUP_ID;	',
'  ELSE',
'    :P22_ORGANIZATION_CODE:=NULL;',
'    :P22_DEFAULT_FLAG:=NULL;',
'	:P22_PREFIX:=NULL;',
'	:p22_enabled:=NULL;',
'	:p22_start_date:=NULL;',
'	:p22_end_date:=NULL;',
'	',
'	:P22_DESCRIPTION_SELECTION:=NULL;',
'	:P22_CATEGORY1_NAME:=NULL;',
'	:P22_CATEGORY2_NAME:=NULL;',
'  END IF;',
'EXCEPTION',
'WHEN OTHERS THEN',
'    :P22_ORGANIZATION_CODE:=NULL;',
'    :P22_DEFAULT_FLAG:=NULL;',
'	:P22_PREFIX:=NULL;',
'	:p22_enabled:=NULL;',
'	:p22_start_date:=NULL;',
'	:p22_end_date:=NULL;	',
'	:P22_DESCRIPTION_SELECTION:=NULL;',
'	:P22_CATEGORY1_NAME:=NULL;',
'	:P22_CATEGORY2_NAME:=NULL;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44929162300322064826)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode        NUMBER;',
'  x_errbuf         VARCHAR2(4000);',
'  l_user_id        NUMBER;',
'  l_msg            VARCHAR2(3000);',
'  x_setup_id NUMBER;',
'BEGIN',
'  l_user_id:=xxiw_admin_util_pkg.get_userid(:app_user);  ',
'   IF(:P22_ORGANIZATION_CODE IS NOT NULL) THEN',
'    xxiw_admin_util_pkg.create_update_setup(',
'	p_setup_id =>:P22_SETUP_ID, ',
'	p_master_org_code =>:P22_ORGANIZATION_CODE, ',
'	p_default_flag =>:P22_DEFAULT_FLAG, ',
'	p_prefix =>:P22_PREFIX, ',
'	p_description_selection =>:P22_DESCRIPTION_SELECTION, ',
'	p_category1_name =>:P22_CATEGORY1_NAME, ',
'	p_category2_name =>:P22_CATEGORY2_NAME, ',
'	p_enabled_flag =>:P22_ENABLED, ',
'	p_start_date =>:p22_start_date, ',
'	p_end_date =>:p22_end_date, ',
'	p_creation_date => sysdate, ',
'	p_created_by => l_user_id, ',
'	p_last_update_date => sysdate, ',
'	p_last_updated_by =>l_user_id, ',
'	p_retcode =>x_retcode, ',
'	p_errbuf =>x_errbuf,',
'	x_setup_id => x_setup_id);',
'	:P22_SETUP_ID:=x_setup_id;',
'    :p22_status:=''S'';   ',
'	select organization_code into :P22_ORGANIZATION_CODE_DISPLAY from xxiw_mst_organizations_v where organization_code=:P22_ORGANIZATION_CODE;',
'    ELSE',
'    :p22_status:=''E'';',
'  END IF;  ',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :p22_status                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44929161580491064821)
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'configurationDetailPG'
,p_page_mode=>'NORMAL'
,p_step_title=>'Configuration Edit'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'configurationDetailPG'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(86274721793252833201)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180222092021'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(50059940819617539906)
,p_name=>'Item Categories'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT xic.category_setup_id,  ',
'  xic.setup_id,',
'  xc.description category_name,',
'  xic.enabled_flag,',
'  xic.start_date,',
'  xic.end_date',
'FROM xxiw_ir_categories_setups xic,',
'xxiw_categories_v xc',
'where xic.setup_id=:p23_setup_id',
'and xic.category_id=xc.category_id',
'and xic.category_type=''ITEM_CATEGORY'';'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Categories found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059941521006539913)
,p_query_column_id=>1
,p_column_alias=>'CATEGORY_SETUP_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059941005279539908)
,p_query_column_id=>2
,p_column_alias=>'SETUP_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059941684122539914)
,p_query_column_id=>3
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Item Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059941463730539912)
,p_query_column_id=>4
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>3
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059941211708539910)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059941370255539911)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(50059941738786539915)
,p_name=>'Purchase Categories'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT xic.category_setup_id,  ',
'  xic.setup_id,',
'  xc.description category_name,',
'  xic.enabled_flag,',
'  xic.start_date,',
'  xic.end_date',
'FROM xxiw_ir_categories_setups xic,',
'xxiw_categories_v xc',
'where xic.setup_id=:p23_setup_id',
'and xic.category_id=xc.category_id',
'and xic.category_type=''PURCHASE_CATEGORY'';'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Categories found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059942335345539920)
,p_query_column_id=>1
,p_column_alias=>'CATEGORY_SETUP_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059941906093539916)
,p_query_column_id=>2
,p_column_alias=>'SETUP_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059942473780539921)
,p_query_column_id=>3
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Purchase Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059942209493539919)
,p_query_column_id=>4
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>2
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059942090530539917)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059942186334539918)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(89024098350329164598)
,p_name=>'Unit of Measure'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT xiu.uom_setup_id,  ',
'  xiu.setup_id,',
'  xu.uom_code uom_name,',
'  xiu.enabled_flag,',
'  xiu.start_date,',
'  xiu.end_date',
'FROM xxiw_ir_uom_setups xiu,',
'xxiw_units_of_measure_v xu',
'where xiu.setup_id=:p23_setup_id',
'and xiu.uom_code=xu.uom_code;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Categories found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059940511476539903)
,p_query_column_id=>1
,p_column_alias=>'UOM_SETUP_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059940675980539904)
,p_query_column_id=>2
,p_column_alias=>'SETUP_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059940744080539905)
,p_query_column_id=>3
,p_column_alias=>'UOM_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'UOM'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44938076140666244867)
,p_query_column_id=>4
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>2
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44938076587601244868)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44938076941772244868)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(131213455840969122302)
,p_name=>'Configuration'
,p_template=>wwv_flow_api.id(86274788149546833207)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--variableLabelMedium:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
' xis.setup_id ,',
' xis.master_organization_id,',
' mp.organization_code,',
' xis.item_num_prefix,',
' xis.defualt_flag,',
' xis.template_enabled,',
' xis.uom_enabled,',
' xis.item_category_enabled,',
' xis.po_category_enabled,',
'xxiw_admin_util_pkg.get_setup_status(xis.setup_id) status',
'FROM xxiw_ir_setups xis,',
'     xxmtl_parameters mp',
'WHERE mp.organization_id=xis.master_organization_id',
'and xis.setup_id=:P23_SETUP_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274809579444833224)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44928929621693029011)
,p_query_column_id=>1
,p_column_alias=>'SETUP_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44928929791735029012)
,p_query_column_id=>2
,p_column_alias=>'MASTER_ORGANIZATION_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44938079906421244871)
,p_query_column_id=>3
,p_column_alias=>'ORGANIZATION_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Master Organization'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44928929840439029013)
,p_query_column_id=>4
,p_column_alias=>'ITEM_NUM_PREFIX'
,p_column_display_sequence=>5
,p_column_heading=>'Item Number Prefix'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44928929965775029014)
,p_query_column_id=>5
,p_column_alias=>'DEFUALT_FLAG'
,p_column_display_sequence=>4
,p_column_heading=>'Defualt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44928930001112029015)
,p_query_column_id=>6
,p_column_alias=>'TEMPLATE_ENABLED'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44928930156189029016)
,p_query_column_id=>7
,p_column_alias=>'UOM_ENABLED'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44928930204704029017)
,p_query_column_id=>8
,p_column_alias=>'ITEM_CATEGORY_ENABLED'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44928930364924029018)
,p_query_column_id=>9
,p_column_alias=>'PO_CATEGORY_ENABLED'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44938078076529244869)
,p_query_column_id=>10
,p_column_alias=>'STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131625987148814671577)
,p_plug_name=>'Profile List'
,p_component_template_options=>'#DEFAULT#:t-LinksList--actions:t-LinksList--showIcons'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_api.id(44944635433081396851)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(86274815562466833228)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131625988876959671594)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(131625988901630671595)
,p_name=>'Templates'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT xit.template_setup_id,  ',
'  xit.setup_id,',
'  xt.template_name template_name ,',
'  xit.enabled_flag,',
'  xit.start_date,',
'  xit.end_date',
'FROM xxiw_ir_template_setups xit,',
'xxiw_templates_v xt',
'where setup_id=:p23_setup_id',
'and xit.template_id=xt.template_id;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Organization found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059940389354539901)
,p_query_column_id=>1
,p_column_alias=>'TEMPLATE_SETUP_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50059940479526539902)
,p_query_column_id=>2
,p_column_alias=>'SETUP_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44938083682693244876)
,p_query_column_id=>3
,p_column_alias=>'TEMPLATE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Template'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44938084007835244876)
,p_query_column_id=>4
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>2
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44938084409733244877)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44938084801207244877)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44938094908952244888)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(86687947874752429773)
,p_button_name=>'EDIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Configuration'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22:P22_SETUP_ID:&P23_SETUP_ID.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44938080733348244871)
,p_name=>'P23_SETUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(131213455840969122302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44938081175435244872)
,p_name=>'P23_MST_ORGANIZATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(131213455840969122302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'templateSetup'
,p_page_mode=>'MODAL'
,p_step_title=>'Templates'
,p_reload_on_submit=>'A'
,p_step_sub_title=>'templateSetup'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'1000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180129130217'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(175604442475218108388)
,p_name=>'Templates'
,p_template=>wwv_flow_api.id(86274788149546833207)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT xit.template_setup_id,  ',
'  xit.setup_id,',
'  xt.template_id template_name ,',
'  xit.enabled_flag,',
'  xit.start_date,',
'  xit.end_date',
'FROM xxiw_ir_template_setups xit,',
'xxiw_templates_v xt',
'where setup_id=:p24_setup_id',
'and xit.template_id=xt.template_id;'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44928930613623029021)
,p_query_column_id=>1
,p_column_alias=>'TEMPLATE_SETUP_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44928930748318029022)
,p_query_column_id=>2
,p_column_alias=>'SETUP_ID'
,p_column_display_sequence=>3
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45063000321181062202)
,p_query_column_id=>3
,p_column_alias=>'TEMPLATE_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Template'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUPKEY'
,p_named_lov=>wwv_flow_api.id(44949820591420763367)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44947643086017796279)
,p_query_column_id=>4
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>5
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(43788555080813419092)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_column_default=>'''Yes'''
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44947643483035796280)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_column_default=>'xxiw_admin_util_pkg.get_default_date'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44947643873414796280)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44947642283218796277)
,p_query_column_id=>7
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(175838905970399629874)
,p_plug_name=>'buttonBar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44947645075094796281)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(175604442475218108388)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44947646197794796284)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(175838905970399629874)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44947646575717796284)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(175838905970399629874)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44947648326114796288)
,p_branch_name=>'goToPageEditConfiguration'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44947646575717796284)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44947645470489796282)
,p_name=>'P24_SETUP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(175604442475218108388)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45063000438918062203)
,p_name=>'P24_TEMPLATE_ENABLED'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(175604442475218108388)
,p_item_default=>'No'
,p_prompt=>'Template Enabled'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'XXIW_YES_NO_BOTH_LOV'
,p_lov=>'.'||wwv_flow_api.id(45071055871614110816)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44947647371307796286)
,p_name=>'OnClick'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(44947645075094796281)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44947647819954796287)
,p_event_id=>wwv_flow_api.id(44947647371307796286)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'  apex.widget.tabular.addRow();',
'} '))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45063000568382062204)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FetchProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select template_enabled into :P24_TEMPLATE_ENABLED',
'from xxiw_ir_Setups ',
'where setup_id=:p24_setup_id;',
'exception when others then ',
':P24_TEMPLATE_ENABLED:=''No'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44947646911317796285)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode NUMBER;',
'  x_errbuf  VARCHAR2(4000);',
'  l_user_id NUMBER;',
'  l_msg     VARCHAR2(3000);',
'  l_template_setups xxiw_admin_util_pkg.ir_template_setups_type;',
'  end_date_error   EXCEPTION;',
'  l_end_date_error VARCHAR2(1000);',
'BEGIN',
'  FOR i IN 1 .. apex_application.g_f03.count',
'  LOOP',
'    l_template_setups(i).template_setup_id  := apex_application.g_f02(i);',
'	l_template_setups(i).setup_id := :p24_setup_id;',
'    l_template_setups(i).template_id   := apex_application.g_f04(i);',
'    l_template_setups(i).enabled_flag    := apex_application.g_f06(i);',
'    l_template_setups(i).start_date      := apex_application.g_f07(i);',
'    l_template_setups(i).end_date        := apex_application.g_f08(i);',
'    IF (l_template_setups(i).end_date    IS NOT NULL AND to_date(l_template_setups(i).end_date,''DD-MON-YYYY'') < to_date(l_template_setups(i).start_date,''DD-MON-YYYY'') ) THEN',
'      raise end_date_error;',
'    END IF;',
'  END LOOP;',
'  l_user_id :=xxiw_admin_util_pkg.get_userid(:app_user);',
'  xxiw_admin_util_pkg.create_update_template_setups( ',
'  p_template_setups => l_template_setups , ',
'  p_template_enabled => :P24_TEMPLATE_ENABLED , ',
'  p_setup_id	 => :p24_setup_id , ',
'  p_creation_date => sysdate, ',
'  p_created_by => l_user_id, ',
'  p_last_update_date => sysdate, ',
'  p_last_updated_by =>l_user_id, ',
'  p_retcode =>x_retcode, ',
'  p_errbuf =>x_errbuf);',
'EXCEPTION',
'WHEN end_date_error THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Line Level End Date should be equal or greater than Start Date.  ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'WHEN OTHERS THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44947646575717796284)
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'itemCategorySetup'
,p_page_mode=>'MODAL'
,p_step_title=>'Item Categories'
,p_reload_on_submit=>'A'
,p_step_sub_title=>'itemCategorySetup'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'1000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180130093745'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(220691629070193628090)
,p_name=>'Item Categories'
,p_template=>wwv_flow_api.id(86274788149546833207)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT xic.category_setup_id,  ',
'  xic.setup_id,',
'  xc.category_id category_name,',
'  xic.enabled_flag,',
'  xic.start_date,',
'  xic.end_date',
'FROM xxiw_ir_categories_setups xic,',
'xxiw_categories_v xc',
'where xic.setup_id=:p25_setup_id',
'and xic.category_id=xc.category_id',
'and xic.category_type=''ITEM_CATEGORY'';'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45063000676327062205)
,p_query_column_id=>1
,p_column_alias=>'CATEGORY_SETUP_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45087189263327522837)
,p_query_column_id=>2
,p_column_alias=>'SETUP_ID'
,p_column_display_sequence=>3
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45063000751278062206)
,p_query_column_id=>3
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUPKEY'
,p_named_lov=>wwv_flow_api.id(45487712209306829594)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45087190488964522838)
,p_query_column_id=>4
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>5
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(43788555080813419092)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_column_default=>'''Yes'''
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45087190870342522838)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_column_default=>'xxiw_admin_util_pkg.get_default_date'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45087201283237522839)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45087190079139522837)
,p_query_column_id=>7
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(220926092565375149576)
,p_plug_name=>'buttonBar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45087201671170522839)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(220691629070193628090)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45087203146810522846)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(220926092565375149576)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45087203554125522847)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(220926092565375149576)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(45087205760976522857)
,p_branch_name=>'goToPageEditConfiguration'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(45087203554125522847)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45087202041551522842)
,p_name=>'P25_ITEM_CATEGORY_ENABLED'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(220691629070193628090)
,p_item_default=>'No'
,p_prompt=>'Item Category Enabled'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'XXIW_YES_NO_BOTH_LOV'
,p_lov=>'.'||wwv_flow_api.id(45071055871614110816)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45087202435730522844)
,p_name=>'P25_SETUP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(220691629070193628090)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45087204791961522854)
,p_name=>'OnClick'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(45087201671170522839)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45087205200875522855)
,p_event_id=>wwv_flow_api.id(45087204791961522854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'  apex.widget.tabular.addRow();',
'} '))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45087204391554522853)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FetchProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select item_category_enabled into :P25_ITEM_CATEGORY_ENABLED',
'from xxiw_ir_Setups ',
'where setup_id=:p25_setup_id;',
'exception when others then ',
':P25_ITEM_CATEGORY_ENABLED:=''No'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45087203953116522853)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode NUMBER;',
'  x_errbuf  VARCHAR2(4000);',
'  l_user_id NUMBER;',
'  l_msg     VARCHAR2(3000);',
'  l_category_setups xxiw_admin_util_pkg.ir_categories_setups_type;',
'  end_date_error   EXCEPTION;',
'  l_end_date_error VARCHAR2(1000);',
'BEGIN',
'  FOR i IN 1 .. apex_application.g_f03.count',
'  LOOP',
'    l_category_setups(i).category_setup_id  := apex_application.g_f02(i);',
'	l_category_setups(i).setup_id := :p25_setup_id;',
'	l_category_setups(i).category_type := ''ITEM_CATEGORY'';',
'    l_category_setups(i).category_id   := apex_application.g_f04(i);',
'    l_category_setups(i).enabled_flag    := apex_application.g_f06(i);',
'    l_category_setups(i).start_date      := apex_application.g_f07(i);',
'    l_category_setups(i).end_date        := apex_application.g_f08(i);',
'    IF (l_category_setups(i).end_date    IS NOT NULL AND to_date(l_category_setups(i).end_date,''DD-MON-YYYY'') < to_date(l_category_setups(i).start_date,''DD-MON-YYYY'') ) THEN',
'      raise end_date_error;',
'    END IF;',
'  END LOOP;',
'  l_user_id :=xxiw_admin_util_pkg.get_userid(:app_user);',
'  xxiw_admin_util_pkg.create_update_category_setups( ',
'  p_category_setups => l_category_setups , ',
'  p_category_enabled => :P25_ITEM_CATEGORY_ENABLED , ',
'  p_setup_id	 => :p25_setup_id , ',
'  p_creation_date => sysdate, ',
'  p_created_by => l_user_id, ',
'  p_last_update_date => sysdate, ',
'  p_last_updated_by =>l_user_id, ',
'  p_retcode =>x_retcode, ',
'  p_errbuf =>x_errbuf);',
'EXCEPTION',
'WHEN end_date_error THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Line Level End Date should be equal or greater than Start Date.  ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'WHEN OTHERS THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(45087203554125522847)
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'poCategorySetup'
,p_page_mode=>'MODAL'
,p_step_title=>'Purchase Category'
,p_reload_on_submit=>'A'
,p_step_sub_title=>'poCategorySetup'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'1000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180130094523'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(266180085591324320639)
,p_name=>'Purchase Categories'
,p_template=>wwv_flow_api.id(86274788149546833207)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT xic.category_setup_id,  ',
'  xic.setup_id,',
'  xc.category_id category_name,',
'  xic.enabled_flag,',
'  xic.start_date,',
'  xic.end_date',
'FROM xxiw_ir_categories_setups xic,',
'xxiw_categories_v xc',
'where xic.setup_id=:p26_setup_id',
'and xic.category_id=xc.category_id',
'and xic.category_type=''PURCHASE_CATEGORY'';'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45488461791079695455)
,p_query_column_id=>1
,p_column_alias=>'CATEGORY_SETUP_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45488459767590695452)
,p_query_column_id=>2
,p_column_alias=>'SETUP_ID'
,p_column_display_sequence=>3
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45488462174155695455)
,p_query_column_id=>3
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUPKEY'
,p_named_lov=>wwv_flow_api.id(45487760369299833696)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45488460582760695453)
,p_query_column_id=>4
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>5
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(43788555080813419092)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_column_default=>'''Yes'''
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45488460979432695454)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_column_default=>'xxiw_admin_util_pkg.get_default_date'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45488461335261695454)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45488460163390695453)
,p_query_column_id=>7
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(266414549086505842125)
,p_plug_name=>'buttonBar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45488462547060695456)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(266180085591324320639)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45488464076790695462)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(266414549086505842125)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45488464415668695462)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(266414549086505842125)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(45488466527894695482)
,p_branch_name=>'goToPageEditConfiguration'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(45488464415668695462)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45488462956477695458)
,p_name=>'P26_PURCHASE_CATEGORY_ENABLED'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(266180085591324320639)
,p_item_default=>'No'
,p_prompt=>'Purchase Category Enabled'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'XXIW_YES_NO_BOTH_LOV'
,p_lov=>'.'||wwv_flow_api.id(45071055871614110816)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45488463335514695459)
,p_name=>'P26_SETUP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(266180085591324320639)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45488465554124695478)
,p_name=>'OnClick'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(45488462547060695456)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45488466051903695479)
,p_event_id=>wwv_flow_api.id(45488465554124695478)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'  apex.widget.tabular.addRow();',
'} '))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45488465147094695477)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FetchProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select po_category_enabled into :P26_PURCHASE_CATEGORY_ENABLED',
'from xxiw_ir_Setups ',
'where setup_id=:p26_setup_id;',
'exception when others then ',
':P26_PURCHASE_CATEGORY_ENABLED:=''No'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45488464800794695476)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode NUMBER;',
'  x_errbuf  VARCHAR2(4000);',
'  l_user_id NUMBER;',
'  l_msg     VARCHAR2(3000);',
'  l_category_setups xxiw_admin_util_pkg.ir_categories_setups_type;',
'  end_date_error   EXCEPTION;',
'  l_end_date_error VARCHAR2(1000);',
'BEGIN',
'  FOR i IN 1 .. apex_application.g_f03.count',
'  LOOP',
'    l_category_setups(i).category_setup_id  := apex_application.g_f02(i);',
'	l_category_setups(i).setup_id := :p26_setup_id;',
'	l_category_setups(i).category_type := ''PURCHASE_CATEGORY'';',
'    l_category_setups(i).category_id   := apex_application.g_f04(i);',
'    l_category_setups(i).enabled_flag    := apex_application.g_f06(i);',
'    l_category_setups(i).start_date      := apex_application.g_f07(i);',
'    l_category_setups(i).end_date        := apex_application.g_f08(i);',
'    IF (l_category_setups(i).end_date    IS NOT NULL AND to_date(l_category_setups(i).end_date,''DD-MON-YYYY'') < to_date(l_category_setups(i).start_date,''DD-MON-YYYY'') ) THEN',
'      raise end_date_error;',
'    END IF;',
'  END LOOP;',
'  l_user_id :=xxiw_admin_util_pkg.get_userid(:app_user);',
'  xxiw_admin_util_pkg.create_update_category_setups( ',
'  p_category_setups => l_category_setups , ',
'  p_category_enabled => :P26_PURCHASE_CATEGORY_ENABLED , ',
'  p_setup_id	 => :p26_setup_id , ',
'  p_creation_date => sysdate, ',
'  p_created_by => l_user_id, ',
'  p_last_update_date => sysdate, ',
'  p_last_updated_by =>l_user_id, ',
'  p_retcode =>x_retcode, ',
'  p_errbuf =>x_errbuf);',
'EXCEPTION',
'WHEN end_date_error THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Line Level End Date should be equal or greater than Start Date.  ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'WHEN OTHERS THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(45488464415668695462)
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'uomSetup'
,p_page_mode=>'MODAL'
,p_step_title=>'Unit of Measure'
,p_reload_on_submit=>'A'
,p_step_sub_title=>'uomSetup'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'1000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180130114555'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(311672954451876153394)
,p_name=>'Unit of Measure'
,p_template=>wwv_flow_api.id(86274788149546833207)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT xiu.uom_setup_id,  ',
'  xiu.setup_id,',
'  xu.uom_code uom_name,',
'  xiu.enabled_flag,',
'  xiu.start_date,',
'  xiu.end_date',
'FROM xxiw_ir_uom_setups xiu,',
'xxiw_units_of_measure_v xu',
'where xiu.setup_id=:p27_setup_id',
'and xiu.uom_code=xu.uom_code;'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274808109950833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45063000873103062207)
,p_query_column_id=>1
,p_column_alias=>'UOM_SETUP_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45493083513688836131)
,p_query_column_id=>2
,p_column_alias=>'SETUP_ID'
,p_column_display_sequence=>3
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45063000968502062208)
,p_query_column_id=>3
,p_column_alias=>'UOM_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'UOM'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUPKEY'
,p_named_lov=>wwv_flow_api.id(45502273871171442945)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45493084390220836133)
,p_query_column_id=>4
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>5
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(43788555080813419092)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_column_default=>'''Yes'''
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45493084743061836133)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_column_default=>'xxiw_admin_util_pkg.get_default_date'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45493085168558836133)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45493083971878836132)
,p_query_column_id=>7
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(311907417947057674880)
,p_plug_name=>'buttonBar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45493086354737836134)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(311672954451876153394)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45493087857580836138)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(311907417947057674880)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45493088257333836139)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(311907417947057674880)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(45493090530431836146)
,p_branch_name=>'goToPageEditConfiguration'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(45493088257333836139)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45493086755614836136)
,p_name=>'P27_UOM_ENABLED'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(311672954451876153394)
,p_item_default=>'No'
,p_prompt=>'UOM Enabled'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'XXIW_YES_NO_BOTH_LOV'
,p_lov=>'.'||wwv_flow_api.id(45071055871614110816)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(86274820723719833232)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45493087142924836137)
,p_name=>'P27_SETUP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(311672954451876153394)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45493089554292836144)
,p_name=>'OnClick'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(45493086354737836134)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45493090019195836145)
,p_event_id=>wwv_flow_api.id(45493089554292836144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'  apex.widget.tabular.addRow();',
'} '))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45493089124491836143)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FetchProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select uom_enabled into :P27_UOM_ENABLED',
'from xxiw_ir_Setups ',
'where setup_id=:p27_setup_id;',
'exception when others then ',
':P27_UOM_ENABLED:=''No'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45493088751227836143)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode NUMBER;',
'  x_errbuf  VARCHAR2(4000);',
'  l_user_id NUMBER;',
'  l_msg     VARCHAR2(3000);',
'  l_uom_setups xxiw_admin_util_pkg.ir_uom_setups_type;',
'  end_date_error   EXCEPTION;',
'  l_end_date_error VARCHAR2(1000);',
'BEGIN',
'  FOR i IN 1 .. apex_application.g_f03.count',
'  LOOP',
'    l_uom_setups(i).uom_setup_id  := apex_application.g_f02(i);',
'	l_uom_setups(i).setup_id := :p27_setup_id;',
'	l_uom_setups(i).uom_code   := apex_application.g_f04(i);',
'    l_uom_setups(i).enabled_flag    := apex_application.g_f06(i);',
'    l_uom_setups(i).start_date      := apex_application.g_f07(i);',
'    l_uom_setups(i).end_date        := apex_application.g_f08(i);',
'    IF (l_uom_setups(i).end_date    IS NOT NULL AND to_date(l_uom_setups(i).end_date,''DD-MON-YYYY'') < to_date(l_uom_setups(i).start_date,''DD-MON-YYYY'') ) THEN',
'      raise end_date_error;',
'    END IF;',
'  END LOOP;',
'  l_user_id :=xxiw_admin_util_pkg.get_userid(:app_user);',
'  xxiw_admin_util_pkg.create_update_uom_setups( ',
'  p_uom_setups => l_uom_setups , ',
'  p_uom_enabled => :P27_UOM_ENABLED , ',
'  p_setup_id	 => :p27_setup_id , ',
'  p_creation_date => sysdate, ',
'  p_created_by => l_user_id, ',
'  p_last_update_date => sysdate, ',
'  p_last_updated_by =>l_user_id, ',
'  p_retcode =>x_retcode, ',
'  p_errbuf =>x_errbuf);',
'EXCEPTION',
'WHEN end_date_error THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Line Level End Date should be equal or greater than Start Date.  ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'WHEN OTHERS THEN',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(45493088257333836139)
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'copyRequestPG'
,p_page_mode=>'MODAL'
,p_step_title=>'Copy Request'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180221091812'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51351707138085795105)
,p_plug_name=>'DummyRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(138463139604805644003)
,p_plug_name=>'buttonBar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51368925565810628633)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(138463139604805644003)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51368925990969628634)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(138463139604805644003)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirm'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51351706972837795103)
,p_branch_name=>'Goto Request Edit Page'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,5:P5_REQUEST_ID,P5_DESCRIPTION:&P28_NEW_REQUEST_ID.,&P28_NEW_DESCRIPTION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P28_STATUS'
,p_branch_condition_text=>'S'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51351707729617795111)
,p_branch_name=>'Goto Request Report Page'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P28_STATUS'
,p_branch_condition_text=>'E'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51351707296297795106)
,p_name=>'P28_OLD_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51351707138085795105)
,p_prompt=>'Request#'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51351707359687795107)
,p_name=>'P28_NEW_REQUEST_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(51351707138085795105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51351707400599795108)
,p_name=>'P28_NEW_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(51351707138085795105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51351707557268795109)
,p_name=>'P28_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(51351707138085795105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51351707871464795112)
,p_name=>'P28_OLD_DESCRIPTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(51351707138085795105)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51351707644601795110)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'copyRequestProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode        NUMBER;',
'  x_errbuf         VARCHAR2(4000);',
'  l_user_id        NUMBER;',
'  l_msg            VARCHAR2(3000);',
'  x_item_request_id NUMBER;',
'  l_request_description VARCHAR2(3000);',
'BEGIN',
'  l_user_id:=xxiw_admin_util_pkg.get_userid(:app_user);  ',
'  IF(:P28_OLD_REQUEST_ID IS NOT NULL) THEN',
'    xxiw_ir_utils_pkg.copy_item_request(',
'	  p_old_item_request_id =>:P28_OLD_REQUEST_ID,',
'      p_creation_date      =>SYSDATE, ',
'      p_created_by         =>l_user_id, ',
'      p_last_update_date   =>SYSDATE, ',
'      p_last_updated_by    =>l_user_id, ',
'      p_retcode  =>x_retcode, ',
'      p_errbuf   => x_errbuf, ',
'      x_item_request_id  =>x_item_request_id);	',
'	:P28_NEW_REQUEST_ID:=x_item_request_id;',
'	BEGIN',
'	SELECT request_description into l_request_description',
'	FROM xxiw_item_requests',
'	WHERE item_request_id=x_item_request_id;',
'	:P28_NEW_DESCRIPTION:=l_request_description;',
'	EXCEPTION',
'WHEN OTHERS THEN',
':P28_NEW_DESCRIPTION:=null;',
'	END;	',
'    :P28_STATUS:=''S'';',
'  ELSE',
'    :P28_STATUS:=''E'';',
'	apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'  END IF;  ',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :P28_STATUS                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'searchPG'
,p_page_mode=>'MODAL'
,p_step_title=>'Search'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(86274785785122833204)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'680'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180222073847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51351708806715795122)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-dialog'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:t-Form--large:t-Form--stretchInputs:margin-top-md:margin-bottom-md:margin-left-md:margin-right-md'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51351709046235795124)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(51351708806715795122)
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'BODY'
,p_button_css_classes=>'search-button'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51351710475316795138)
,p_branch_name=>'Perform Search'
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:RP,30:P30_SEARCH:&P29_SEARCH.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51351708915344795123)
,p_name=>'P29_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51351708806715795122)
,p_item_default=>'null'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Search'
,p_placeholder=>'Search Requests'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'search-field'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(86274820334776833232)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51351709183929795125)
,p_name=>'Add autocomplete off to form'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51351709209725795126)
,p_event_id=>wwv_flow_api.id(51351709183929795125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''form'').attr(''autocomplete'', ''off'' );'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'searchResultPG'
,p_page_mode=>'NORMAL'
,p_step_title=>'searchResultPG'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180222075236'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(51351709393431795127)
,p_name=>'Search Results'
,p_template=>wwv_flow_api.id(86274798050502833215)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select xir.item_request_id||'' : ''||xir.request_description search_title,',
'''f?p=''||:APP_ID||'':5:''||:APP_SESSION||'':::5:P5_REQUEST_ID,P5_DESCRIPTION:''||xir.item_request_id||'',''||xir.request_description search_link,',
'xir.request_description search_desc,',
'''Status'' label_01,',
'xir.status value_01,',
'''Requestor'' label_02,    ',
'xuv.user_name value_02',
'from xxiw_item_requests xir,',
'     xxiw_users_v xuv',
'where xir.created_by=xuv.user_id',
'and ( instr(upper(xir.item_request_id),upper(:P30_SEARCH)) > 0 ',
'        or instr(upper(xir.request_description),upper(:P30_SEARCH)) > 0 ',
'        or :P30_SEARCH is null',
'    )'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(86274807964593833223)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Request found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51351709864395795132)
,p_query_column_id=>1
,p_column_alias=>'SEARCH_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Search title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51351709926672795133)
,p_query_column_id=>2
,p_column_alias=>'SEARCH_LINK'
,p_column_display_sequence=>2
,p_column_heading=>'Search link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51351710522539795139)
,p_query_column_id=>3
,p_column_alias=>'SEARCH_DESC'
,p_column_display_sequence=>7
,p_column_heading=>'Search desc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51351710040239795134)
,p_query_column_id=>4
,p_column_alias=>'LABEL_01'
,p_column_display_sequence=>3
,p_column_heading=>'Label 01'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51351710146886795135)
,p_query_column_id=>5
,p_column_alias=>'VALUE_01'
,p_column_display_sequence=>4
,p_column_heading=>'Value 01'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51351710241514795136)
,p_query_column_id=>6
,p_column_alias=>'LABEL_02'
,p_column_display_sequence=>5
,p_column_heading=>'Label 02'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51351710310942795137)
,p_query_column_id=>7
,p_column_alias=>'VALUE_02'
,p_column_display_sequence=>6
,p_column_heading=>'Value 02'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51351709733110795131)
,p_name=>'P30_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51351709393431795127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'approvalActionPG'
,p_page_mode=>'MODAL'
,p_step_title=>'&P31_ACTION_NAME.'
,p_step_sub_title=>'approvalActionPG'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180305124929'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(140632949142945753449)
,p_plug_name=>'Item Description'
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(86274788149546833207)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(227805148477532836733)
,p_plug_name=>'buttonBar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274788543285833208)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52113373401856884529)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(227805148477532836733)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52113373827726884531)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(227805148477532836733)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(52113374759788884534)
,p_branch_name=>'NavigateToRequestEdit'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P31_STATUS'
,p_branch_condition_text=>'S'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52099458930815111904)
,p_name=>'P31_ACTION_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(140632949142945753449)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52099459089362111905)
,p_name=>'P31_APPROVER_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(140632949142945753449)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52099459136210111906)
,p_name=>'P31_ACTION_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(140632949142945753449)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52113371108636884524)
,p_name=>'P31_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(140632949142945753449)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52113371512641884525)
,p_name=>'P31_IR_APPROVAL_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(140632949142945753449)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52113371920788884526)
,p_name=>'P31_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(140632949142945753449)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52113372728604884528)
,p_name=>'P31_COMMENTS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(140632949142945753449)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>90
,p_cMaxlength=>150
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(86274820429436833232)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52113374208805884533)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateUpdateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  x_retcode        NUMBER;',
'  x_errbuf         VARCHAR2(4000);',
'  l_user_id        NUMBER;',
'  l_msg            VARCHAR2(3000);',
'  l_user_name      VARCHAR2(300);',
'BEGIN',
'  l_user_id:=xxiw_admin_util_pkg.get_userid(:app_user);',
'  select xuv.user_name into l_user_name',
'  from xxiw_users_v xuv, ',
'       xxiw_item_requests xir ',
'  where xuv.user_id=xir.created_by ',
'    and xir.item_request_id=:P31_REQUEST_ID ;',
'  ',
'    xxiw_ir_utils_pkg.create_update_approvals(',
'	p_ir_approval_id => null,',
'	p_item_request_id =>:P31_REQUEST_ID, ',
'   	p_approver_name => l_user_name,',
'	p_comments => :P31_COMMENTS,',
'	p_status => :P31_ACTION_STATUS,',
'	p_creation_date => sysdate, ',
'	p_created_by => l_user_id, ',
'	p_last_update_date => sysdate, ',
'	p_last_updated_by =>l_user_id, ',
'	p_retcode =>x_retcode, ',
'	p_errbuf =>x_errbuf);',
'    :P31_STATUS:=''S'';',
'   ',
'EXCEPTION',
'WHEN OTHERS THEN',
'  :P31_STATUS                              :=''E'';',
'  apex_application.g_print_success_message :=''<span style="color:red">''||''Unkown Error, Please contact sysadmin. Error: ''||SUBSTR (sqlerrm, 1, 250)||''</span>'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52113373827726884531)
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(86274831723813833247)
,p_name=>'Sign In Page'
,p_alias=>'LOGIN'
,p_page_mode=>'NORMAL'
,p_step_title=>'Sign In | &APPLICATION_TITLE.'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(86274721484757833200)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'BK.ELEX@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180116074749'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(86274832220717833250)
,p_plug_name=>'&APPLICATION_TITLE.'
,p_region_name=>'bug_tracker'
,p_icon_css_classes=>'fa-ticket'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86274797943479833215)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(86274832514441833252)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(86274832220717833250)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86274820896177833233)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86274832259631833251)
,p_name=>'P101_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(86274832220717833250)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(86274820334776833232)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86274832376542833252)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(86274832220717833250)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(86274820334776833232)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(86275413980708880472)
,p_name=>'Set Focus'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'( $v( "P101_USERNAME" ) === "" )'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(86275414117363880473)
,p_event_id=>wwv_flow_api.id(86275413980708880472)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_USERNAME'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(86275414174232880474)
,p_event_id=>wwv_flow_api.id(86275413980708880472)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PASSWORD'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(86274832684597833253)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(86274832617616833252)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(86274832886300833253)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(86274832833317833253)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
