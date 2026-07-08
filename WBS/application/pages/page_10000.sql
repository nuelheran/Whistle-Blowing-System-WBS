prompt --application/pages/page_10000
begin
--   Manifest
--     PAGE: 10000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>13144316281138660209
,p_default_application_id=>125939
,p_default_id_offset=>14279541879556441716
,p_default_owner=>'WKSP_MANUELPORTOFOLIO'
);
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14344596859057909754)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------------ GLOBAL STYLE (aurora body) ------------------------------ */',
'html {',
'  scroll-behavior: smooth;',
'}',
'body {',
'  background: radial-gradient(1100px 700px at 8% -12%, rgba(45,212,191,0.30), transparent 60%), radial-gradient(1000px 650px at 108% 8%, rgba(34,211,238,0.24), transparent 55%), radial-gradient(900px 900px at 50% 118%, rgba(13,148,136,0.22), transpar'
||'ent 62%), linear-gradient(160deg, #071a1e 0%, #0b2b30 45%, #0d3a3d 100%) !important;',
'  background-attachment: fixed !important;',
'  font-family: system-ui, -apple-system, ''Segoe UI'', Roboto, ''Helvetica Neue'', sans-serif;',
'}',
'.container {',
'  max-width: 1280px;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* --------------------- Page Title bar (t_Body_title) - transparent over aurora --------------------- */',
'.t-Body-title {',
'  background: transparent !important;',
'  box-shadow: none !important;',
'  border-bottom: none !important;',
'  padding: 10px 14px 0 14px !important;',
'}',
'.t-BreadcrumbRegion {',
'  background: transparent !important;',
'  border: none !important;',
'  box-shadow: none !important;',
'}',
'.t-Breadcrumb-item a.t-Breadcrumb-label {',
'  color: rgba(203,236,231,0.75) !important;',
'}',
'.t-Breadcrumb-item a.t-Breadcrumb-label:hover {',
'  color: #7df3e1 !important;',
'}',
'.t-Breadcrumb-item.is-active .t-Breadcrumb-label {',
'  color: #2dd4bf !important;',
'  font-weight: 700;',
'  text-shadow: 0 0 12px rgba(45,212,191,0.35);',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------------ REGION CARD (dark liquid glass) ------------------------------ */',
'.t-Region {',
'  background: transparent !important;',
'  box-shadow: none !important;',
'  border: none !important;',
'  -webkit-backdrop-filter: none !important;',
'  backdrop-filter: none !important;',
'  overflow: visible !important;',
'  margin-bottom: 18px;',
'}',
'.t-Region-bodyWrap {',
'  background: linear-gradient(160deg, rgba(13,42,45,0.50) 0%, rgba(7,24,28,0.66) 100%) !important;',
'  -webkit-backdrop-filter: blur(28px) saturate(1.6);',
'  backdrop-filter: blur(28px) saturate(1.6);',
'  border: 1px solid rgba(255,255,255,0.16) !important;',
'  border-radius: 20px !important;',
'  box-shadow: 0 26px 55px -18px rgba(0,0,0,0.55), inset 0 1px 0 rgba(255,255,255,0.18) !important;',
'  position: relative;',
'  transition: all 0.3s ease;',
'  overflow: hidden;',
'}',
'.t-Region-bodyWrap:hover {',
'  border-color: rgba(45,212,191,0.35) !important;',
'}',
'.t-Region-header {',
'  background: transparent !important;',
'  border-bottom: none !important;',
'  padding: 12px 4px !important;',
'}',
'.t-Region-header .t-Region-title,',
'.t-Region .t-Region-title {',
'  color: #eafffb !important;',
'  text-shadow: 0 0 14px rgba(45,212,191,0.4);',
'}',
'/* Nested regions (reports inside Access Control / Feedback cards) stay flat */',
'.t-Region .t-Region .t-Region-bodyWrap {',
'  background: transparent !important;',
'  border: none !important;',
'  box-shadow: none !important;',
'  -webkit-backdrop-filter: none;',
'  backdrop-filter: none;',
'  border-radius: 0 !important;',
'}',
'/* "Add User" header button - ghost glass */',
'.t-Region-header .t-Button--noUI {',
'  color: #7df3e1 !important;',
'  background: rgba(45,212,191,0.10) !important;',
'  border: 1px solid rgba(45,212,191,0.25) !important;',
'}',
'.t-Region-header .t-Button--noUI:hover {',
'  background: rgba(45,212,191,0.25) !important;',
'  color: white !important;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------------ MEDIA LISTS (admin menu links) ------------------------------ */',
'.t-MediaList {',
'  background: transparent !important;',
'}',
'.t-MediaList-item {',
'  border-color: rgba(255,255,255,0.08) !important;',
'  background: transparent !important;',
'}',
'.t-MediaList-itemWrap {',
'  background: transparent !important;',
'  transition: all 0.2s ease;',
'}',
'.t-MediaList-itemWrap:hover,',
'.t-MediaList-itemWrap:focus {',
'  background: rgba(45,212,191,0.10) !important;',
'}',
'.t-MediaList-title {',
'  color: #eafffb !important;',
'  text-shadow: 0 0 10px rgba(45,212,191,0.25);',
'}',
'.t-MediaList-desc {',
'  color: rgba(167,220,212,0.75) !important;',
'}',
'/* Icon chips - teal glass (override the u-colors palette) */',
'.t-MediaList-icon,',
'.t-MediaList--showIcons.u-colors .t-MediaList-icon .t-Icon,',
'.u-colors .u-color {',
'  background: rgba(45,212,191,0.14) !important;',
'  color: #7df3e1 !important;',
'  border-radius: 12px;',
'}',
'.t-MediaList-itemWrap:hover .t-MediaList-icon {',
'  background: rgba(45,212,191,0.28) !important;',
'  box-shadow: 0 0 16px rgba(45,212,191,0.3);',
'}',
'.t-MediaList-badge {',
'  background: rgba(45,212,191,0.18);',
'  color: #7df3e1;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------------ AVP LISTS (User Counts / Feedback report) ------------------------------ */',
'.t-AVPList {',
'  background: transparent !important;',
'}',
'.t-AVPList-label {',
'  color: rgba(167,220,212,0.8) !important;',
'  border-color: rgba(255,255,255,0.08) !important;',
'  background: transparent !important;',
'}',
'.t-AVPList-value {',
'  color: #eafffb !important;',
'  font-weight: 600;',
'  border-color: rgba(255,255,255,0.08) !important;',
'  background: transparent !important;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------------ ALERT (ACL Information) - amber glass ------------------------------ */',
'.t-Alert--warning.t-Alert--colorBG {',
'  background: rgba(245,158,11,0.14) !important;',
'  -webkit-backdrop-filter: blur(12px);',
'  backdrop-filter: blur(12px);',
'  border: 1px solid rgba(245,158,11,0.35) !important;',
'  border-radius: 14px !important;',
'  box-shadow: inset 0 1px 0 rgba(255,255,255,0.12) !important;',
'}',
'.t-Alert--warning.t-Alert--colorBG .t-Alert-title,',
'.t-Alert--warning.t-Alert--colorBG .t-Alert-body {',
'  color: #fde8c0 !important;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------------ CUSTOM SCROLLBAR (dark neon) ------------------------------ */',
'::-webkit-scrollbar {',
'  width: 8px;',
'  height: 8px;',
'}',
'::-webkit-scrollbar-track {',
'  background: rgba(7,26,30,0.45);',
'  border-radius: 10px;',
'}',
'::-webkit-scrollbar-thumb {',
'  background: linear-gradient(135deg, #14b8a6, #22d3ee);',
'  border-radius: 10px;',
'}',
'::-webkit-scrollbar-thumb:hover {',
'  background: linear-gradient(135deg, #2dd4bf, #22d3ee);',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* -------------------------------------------------------------------------------------------- */',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------- CLASSIC REPORT: User Counts (#user-counts-report) ------------------- */',
'/* -------------------------------------------------------------------------------------------- */',
'#user-counts-report .t-AVPList {',
'  display: grid;',
'  grid-template-columns: 1fr auto;',
'  align-items: center;',
'  gap: 0;',
'  padding: 6px 8px;',
'  background: transparent !important;',
'}',
'/* Label cells */',
'#user-counts-report .t-AVPList-label {',
'  color: rgba(167,220,212,0.85) !important;',
'  font-size: 12px;',
'  font-weight: 600;',
'  text-transform: uppercase;',
'  letter-spacing: 0.5px;',
'  background: transparent !important;',
'  border: none !important;',
'  border-top: 1px solid rgba(255,255,255,0.08) !important;',
'  padding: 12px 10px !important;',
'  margin: 0;',
'  text-align: left !important;',
'}',
'/* Value cells - teal glass pill */',
'#user-counts-report .t-AVPList-value {',
'  background: transparent !important;',
'  border: none !important;',
'  border-top: 1px solid rgba(255,255,255,0.08) !important;',
'  padding: 8px 10px !important;',
'  margin: 0;',
'  display: flex;',
'  justify-content: flex-end;',
'}',
'#user-counts-report .t-AVPList-label:first-of-type,',
'#user-counts-report .t-AVPList-value:first-of-type {',
'  border-top: none !important;',
'}',
'#user-counts-report .t-AVPList-value {',
'  color: #7df3e1 !important;',
'  font-size: 14px;',
'  font-weight: 700;',
'  text-shadow: 0 0 10px rgba(45,212,191,0.35);',
'}',
'/* Empty pagination table transparent */',
'#user-counts-report .t-Report-pagination {',
'  background: transparent !important;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
''))
,p_step_template=>wwv_flow_imp.id(14344826106539088988)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(14344595246200909751)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344787378618910239)
,p_plug_name=>'Access Control'
,p_static_id=>'access-control'
,p_parent_plug_id=>wwv_flow_imp.id(14344786880283910239)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(14344592534296909724)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344793038006910267)
,p_plug_name=>'Access Control Actions'
,p_static_id=>'access-control-actions'
,p_parent_plug_id=>wwv_flow_imp.id(14344787378618910239)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_imp.id(14344337289386909406)
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14344783527658910238)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(14344458949484909484)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344788098036910240)
,p_plug_name=>'ACL Information'
,p_static_id=>'acl-information'
,p_parent_plug_id=>wwv_flow_imp.id(14344787378618910239)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_plug_template=>wwv_flow_imp.id(14344332100842909397)
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344786505705910239)
,p_plug_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_parent_plug_id=>wwv_flow_imp.id(14344785353930910238)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14344780852937910237)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(14344458949484909484)
,p_required_patch=>wwv_flow_imp.id(14344592617305909724)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344778777225910235)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344416360437909459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(14344300662067909308)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14344478748618909495)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344785353930910238)
,p_plug_name=>'Column 1'
,p_static_id=>'column'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344338728074909407)
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344786880283910239)
,p_plug_name=>'Column 2'
,p_static_id=>'column-2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344338728074909407)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344785761168910239)
,p_plug_name=>'Configuration'
,p_static_id=>'configuration'
,p_parent_plug_id=>wwv_flow_imp.id(14344785353930910238)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14344779419051910236)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(14344458949484909484)
,p_required_patch=>wwv_flow_imp.id(14344592959014909724)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344793460908910267)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback'
,p_parent_plug_id=>wwv_flow_imp.id(14344786880283910239)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(14344592758530909724)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344796806913910289)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback-2'
,p_parent_plug_id=>wwv_flow_imp.id(14344793460908910267)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_imp.id(14344337289386909406)
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14344784661475910238)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(14344458949484909484)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14344793780725910268)
,p_name=>'Report'
,p_static_id=>'report'
,p_parent_plug_id=>wwv_flow_imp.id(14344793460908910267)
,p_template=>wwv_flow_imp.id(14344403920753909451)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14344431169905909465)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14344794909063910271)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14344794533905910271)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14344788567373910240)
,p_name=>'User Counts Report'
,p_static_id=>'user-counts-report'
,p_parent_plug_id=>wwv_flow_imp.id(14344787378618910239)
,p_template=>wwv_flow_imp.id(14344403920753909451)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14344431169905909465)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14344790028530910244)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14344789253050910243)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14344789611445910243)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344786174454910239)
,p_plug_name=>'User Interface'
,p_static_id=>'user-interface'
,p_parent_plug_id=>wwv_flow_imp.id(14344785353930910238)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14344780109930910236)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(14344458949484909484)
,p_required_patch=>wwv_flow_imp.id(14344593340466909724)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14344787727244910240)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14344787378618910239)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14344792088554910267)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14344787727244910240)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14344792603002910267)
,p_event_id=>wwv_flow_imp.id(14344792088554910267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14344788567373910240)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp.component_end;
end;
/
