prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
--   Manifest
--     MENU TEMPLATE: breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>13144316281138660209
,p_default_application_id=>125939
,p_default_id_offset=>14279541879556441716
,p_default_owner=>'WKSP_MANUELPORTOFOLIO'
);
wwv_flow_imp_shared.create_menu_template(
 p_id=>wwv_flow_imp.id(14344478748618909495)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active" aria-current="page"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>wwv_imp_util.get_subscription_id(4070916542570059325,2560,'breadcrumb',8842,null,'universal-theme')
,p_translate_this_template=>'N'
);
wwv_flow_imp.component_end;
end;
/
