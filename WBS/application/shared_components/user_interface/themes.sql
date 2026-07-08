prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 42
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>13144316281138660209
,p_default_application_id=>125939
,p_default_id_offset=>14279541879556441716
,p_default_owner=>'WKSP_MANUELPORTOFOLIO'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(14344567194684909676)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(14344566385121909670)
,p_default_page_template=>wwv_flow_imp.id(14344328733724909391)
,p_default_dialog_template=>wwv_flow_imp.id(14344308352300909377)
,p_error_template=>wwv_flow_imp.id(14344309855693909385)
,p_printer_friendly_template=>wwv_flow_imp.id(14344328733724909391)
,p_login_template=>wwv_flow_imp.id(14344309855693909385)
,p_default_button_template=>wwv_flow_imp.id(14344477136542909495)
,p_default_region_template=>wwv_flow_imp.id(14344403920753909451)
,p_default_chart_template=>wwv_flow_imp.id(14344403920753909451)
,p_default_form_template=>wwv_flow_imp.id(14344403920753909451)
,p_default_reportr_template=>wwv_flow_imp.id(14344403920753909451)
,p_default_wizard_template=>wwv_flow_imp.id(14344403920753909451)
,p_default_menur_template=>wwv_flow_imp.id(14344416360437909459)
,p_default_listr_template=>wwv_flow_imp.id(14344403920753909451)
,p_default_irr_template=>wwv_flow_imp.id(14344394156784909442)
,p_default_report_template=>wwv_flow_imp.id(14344439527123909467)
,p_default_label_template=>wwv_flow_imp.id(14344474663659909490)
,p_default_menu_template=>wwv_flow_imp.id(14344478748618909495)
,p_default_list_template=>wwv_flow_imp.id(14344472721743909488)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(14344463738190909485)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(14344461963169909484)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(14344340113263909407)
,p_default_dialogr_template=>wwv_flow_imp.id(14344337289386909406)
,p_default_option_label=>wwv_flow_imp.id(14344474663659909490)
,p_default_required_label=>wwv_flow_imp.id(14344475966976909492)
,p_default_navbar_list_template=>wwv_flow_imp.id(14344464694416909485)
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4070917134413059350,2000,'universal-theme',8842)
);
wwv_flow_imp.component_end;
end;
/
