prompt --application/shared_components/security/app_access_control/administrator
begin
--   Manifest
--     ACL ROLE: Administrator
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>13144316281138660209
,p_default_application_id=>125939
,p_default_id_offset=>14279541879556441716
,p_default_owner=>'WKSP_MANUELPORTOFOLIO'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(14344594831753909737)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>'39527733136754'
);
wwv_flow_imp.component_end;
end;
/
