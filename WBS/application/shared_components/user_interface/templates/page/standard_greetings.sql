prompt --application/shared_components/user_interface/templates/page/standard_greetings
begin
--   Manifest
--     TEMPLATE: standard-greetings
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>13144316281138660209
,p_default_application_id=>125939
,p_default_id_offset=>14279541879556441716
,p_default_owner=>'WKSP_MANUELPORTOFOLIO'
);
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(14344826106539088988)
,p_theme_id=>42
,p_name=>'Standard Greetings'
,p_static_id=>'standard-greetings'
,p_internal_name=>'STANDARD_GREETINGS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* \2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500 Top Navigation Bar \2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500 */'),
'.t-Header-branding{',
'    background: #134e4a;',
'    color: #dddddd;',
'    height: 48px;',
'    padding: 0 16px;',
'    gap: 0;',
'    position: sticky;',
'    top: 0;',
'    z-index: 100;',
'    box-shadow: 0 2px 8px rgba(0,0,0,0.2);',
'}',
'',
'.a-MenuBar {',
'  background: rgba(10,34,37,0.55); -webkit-backdrop-filter: blur(16px) saturate(1.4); backdrop-filter: blur(16px) saturate(1.4); border-bottom: 1px solid rgba(255,255,255,0.14);',
'  color: #dddddd;',
'  height: 48px;',
'  display: flex;',
'  align-items: center;',
'  padding: 0 16px;',
'  gap: 0;',
'  position: sticky;',
'  top: 0;',
'  z-index: 100;',
'  box-shadow: 0 2px 8px rgba(0,0,0,0.2);',
'}',
'',
'.t-Header-nav .a-MenuBar-item {',
'    color: #ffffff;',
'    padding: 0 14px;',
'    height: 48px;',
'    display: flex;',
'    align-items: center;',
'    cursor: pointer;',
'    border-bottom: 3px solid transparent;',
'    text-decoration: none;',
'    transition: all 0.15s;',
'}',
'',
'.t-Header-nav .a-MenuBar-item:hover{',
'    color: #ffffff !important;',
'}',
'',
'.a-MenuBar .a-MenuBar-item.a-Menu--current {',
'    color: white !important;',
'    border-bottom: 3px solid #2dd4bf !important;',
'    background: rgba(45, 212, 191, 0.15) !important;',
'    animation: fadeInUp 0.5s ease-out backwards;',
'    transition: all 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1) !important;',
'}',
'',
'.a-MenuBar .a-MenuBar-item.a-Menu--current:hover {',
'    background: rgba(45, 212, 191, 0.25) !important;',
'    transform: translateY(-2px);',
'}',
'',
'.a-MenuBar .a-MenuBar-item.a-Menu--current .a-MenuBar-label {',
'    color: white !important;',
'}',
'',
'@keyframes fadeInUp {',
'  from {',
'    opacity: 0;',
'    transform: translateY(30px);',
'  }',
'  to {',
'    opacity: 1;',
'    transform: translateY(0);',
'  }',
'}',
'',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'.apex-nav {',
'  background: rgba(10,34,37,0.55); -webkit-backdrop-filter: blur(16px) saturate(1.4); backdrop-filter: blur(16px) saturate(1.4); border-bottom: 1px solid rgba(255,255,255,0.14);',
'  height: 48px;',
'  display: flex;',
'  align-items: center;',
'  padding: 0 16px;',
'  gap: 0;',
'  position: sticky;',
'  top: 0;',
'  z-index: 100;',
'  /* box-shadow: 0 2px 8px rgba(0,0,0,0.2); */',
'}',
'.apex-nav .nav-logo {',
'  color: white;',
'  font-size: 16px;',
'  font-weight: 700;',
'  letter-spacing: 0.3px;',
'  display: flex;',
'  align-items: center;',
'  gap: 8px;',
'  margin-right: 32px;',
'}',
'',
'.apex-nav .nav-logo svg { width: 22px; height: 22px; }',
'.apex-nav .nav-tabs { display: flex; gap: 2px; flex: 1; }',
'.apex-nav .nav-tab {',
'  color: rgba(255,255,255,0.75);',
'  font-size: 13px;',
'  padding: 0 14px;',
'  height: 48px;',
'  display: flex;',
'  align-items: center;',
'  cursor: pointer;',
'  border-bottom: 3px solid transparent;',
'  text-decoration: none;',
'  transition: all 0.15s;',
'}',
'.apex-nav .nav-tab:hover { color: white; background: rgba(255,255,255,0.08); }',
'.apex-nav .nav-tab.active { color: white; border-bottom-color: #2dd4bf; background: rgba(255,255,255,0.06); }',
'.apex-nav .nav-right {',
'  display: flex;',
'  align-items: center;',
'  gap: 8px;',
'  margin-left: auto;',
'}',
'.apex-nav .nav-icon-btn {',
'  width: 32px; height: 32px;',
'  border-radius: 50%;',
'  background: rgba(255,255,255,0.1);',
'  border: none;',
'  color: rgba(255,255,255,0.8);',
'  cursor: pointer;',
'  display: flex; align-items: center; justify-content: center;',
'  font-size: 14px;',
'}',
'.apex-nav .nav-icon-btn:hover { background: rgba(255,255,255,0.2); }',
'.apex-nav .nav-user {',
'  display: flex;',
'  align-items: center;',
'  gap: 8px;',
'  color: rgba(255,255,255,0.85);',
'  font-size: 13px;',
'  cursor: pointer;',
'  padding: 4px 10px;',
'  border-radius: 6px;',
'}',
'.apex-nav .nav-user:hover { background: rgba(255,255,255,0.1); }',
'.apex-nav .nav-user .avatar {',
'  width: 28px; height: 28px;',
'  border-radius: 50%;',
'  background: #0d9488;',
'  display: flex; align-items: center; justify-content: center;',
'  font-size: 12px;',
'  font-weight: 700;',
'  color: white;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */'))
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim t-PageTemplate--standard #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <!-- <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div> -->',
'    <!-- TOP NAVIGATION BAR -->',
'    <nav class="apex-nav">',
'    <div class="nav-logo">',
'        <svg viewBox="0 0 24 24" fill="white"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"/></svg>',
'        WBS',
'    </div>',
'    </nav>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
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
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
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
'        <div class="t-Alert-body">#MESSAGE#</div>',
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
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
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
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
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
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344831548226088990)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_static_id=>'sticky-header-on-mobile'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(14344826106539088988)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344826499159088989)
,p_page_template_id=>wwv_flow_imp.id(14344826106539088988)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_apexlang_name=>'afterLogo'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344826998967088989)
,p_page_template_id=>wwv_flow_imp.id(14344826106539088988)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_apexlang_name=>'afterNavigationBar'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344830532602088990)
,p_page_template_id=>wwv_flow_imp.id(14344826106539088988)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_apexlang_name=>'banner'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344827515000088989)
,p_page_template_id=>wwv_flow_imp.id(14344826106539088988)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_apexlang_name=>'beforeNavigationBar'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344828078350088989)
,p_page_template_id=>wwv_flow_imp.id(14344826106539088988)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_apexlang_name=>'body'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344828536627088989)
,p_page_template_id=>wwv_flow_imp.id(14344826106539088988)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_apexlang_name=>'breadcrumbBar'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344828994372088989)
,p_page_template_id=>wwv_flow_imp.id(14344826106539088988)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_apexlang_name=>'dialogsDrawersAndPopups'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344829565710088990)
,p_page_template_id=>wwv_flow_imp.id(14344826106539088988)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_apexlang_name=>'footer'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344831040162088990)
,p_page_template_id=>wwv_flow_imp.id(14344826106539088988)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_apexlang_name=>'fullWidthContent'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344830066055088990)
,p_page_template_id=>wwv_flow_imp.id(14344826106539088988)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_apexlang_name=>'topNavigation'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp.component_end;
end;
/
