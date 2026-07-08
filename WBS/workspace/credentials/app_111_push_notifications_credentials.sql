prompt --workspace/credentials/app_111_push_notifications_credentials
begin
--   Manifest
--     CREDENTIAL: App 111 Push Notifications Credentials
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>13144316281138660209
,p_default_application_id=>125939
,p_default_id_offset=>14279541879556441716
,p_default_owner=>'WKSP_MANUELPORTOFOLIO'
);
wwv_imp_workspace.create_credential(
 p_id=>14308957294959540048
,p_name=>'App 111 Push Notifications Credentials'
,p_static_id=>'App_111_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
