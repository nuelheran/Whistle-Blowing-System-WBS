prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 125939
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>13144316281138660209
,p_default_application_id=>125939
,p_default_id_offset=>14279541879556441716
,p_default_owner=>'WKSP_MANUELPORTOFOLIO'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := 'DROP SEQUENCE XTD_WBS_SEQ;'||wwv_flow.LF||
'DROP SEQUENCE XTD_WBS_NO;'||wwv_flow.LF||
'DROP SEQUENCE XTD_WBS_BLOB_SEQ;'||wwv_flow.LF||
'DROP SEQUENCE X';
wwv_flow_imp.g_varchar2_table(2) := 'TD_NO_BATL;'||wwv_flow.LF||
'DROP TABLE XTD_WBS_BLOB;'||wwv_flow.LF||
'DROP TABLE XTD_WBS;';
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(14347248144315400397)
,p_deinstall_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
