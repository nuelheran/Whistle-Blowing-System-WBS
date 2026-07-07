prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 125939
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>13144316281138660209
,p_default_application_id=>125939
,p_default_id_offset=>14279541879556441716
,p_default_owner=>'WKSP_MANUELPORTOFOLIO'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(14344596859057909754)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(14344797222975910290)
,p_group_name=>'User Settings'
,p_static_id=>'user-settings'
);
wwv_flow_imp.component_end;
end;
/
