prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'WBS - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function viewPassword()',
'{',
'  var passwordInput = document.getElementById(''P9999_PASSWORD'');',
'  var passStatus = document.getElementById(''pass-status'');',
'',
'  if (passwordInput.type == ''password''){',
'    passwordInput.type=''text'';',
'    passStatus.className=''fa fa-eye-slash field-icon'';',
'    ',
'  }',
'  else{',
'    passwordInput.type=''password'';',
'    passStatus.className=''fa fa-eye field-icon'';',
'  }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------- GLOBAL STYLE LOGIN PAGE (Liquid Glass) ---------------------------- */',
'html, body {',
'    overflow: hidden !important;',
'    height: 100vh !important;',
'    margin: 0 !important;',
'    padding: 0 !important;',
'}',
'body {',
'    background: radial-gradient(900px 600px at 15% -10%, rgba(45,212,191,0.35), transparent 60%), radial-gradient(800px 550px at 110% 15%, rgba(34,211,238,0.28), transparent 55%), linear-gradient(160deg, #071a1e 0%, #0b2b30 50%, #0d3a3d 100%) !import'
||'ant;',
'    display: flex !important;',
'    align-items: center !important;',
'    justify-content: center !important;',
'}',
'.t-Login-container {',
'    background: transparent !important;',
'    height: 100vh !important;',
'    display: flex !important;',
'    align-items: center !important;',
'    justify-content: center !important;',
'    overflow: hidden !important;',
'}',
'/* Background image container */',
'.t-Login-bg, .t-Login-bgImg {',
'    height: 100vh !important;',
'    overflow: hidden !important;',
'}',
'/* Card login - Liquid Glass (class-based selector: survives re-import, unlike region IDs) */',
'.t-Login-region {',
'    background: linear-gradient(160deg, rgba(13,42,45,0.50) 0%, rgba(7,24,28,0.66) 100%) !important;',
'    -webkit-backdrop-filter: blur(28px) saturate(1.6);',
'    backdrop-filter: blur(28px) saturate(1.6);',
'    border-radius: 28px !important;',
'    border: 1px solid rgba(255,255,255,0.16) !important;',
'    box-shadow: 0 30px 60px -18px rgba(0,0,0,0.55), inset 0 1px 0 rgba(255,255,255,0.18), 0 0 0 1px rgba(45,212,191,0.08) !important;',
'    padding: 36px 32px !important;',
'    margin: 0 auto !important;',
'    max-width: 450px !important;',
'    width: 100% !important;',
'    overflow: hidden !important;',
'    transition: all 0.3s ease;',
'    animation: fadeInUp 0.6s ease-out;',
'}',
'.t-Login-region:hover {',
'    border-color: rgba(45,212,191,0.35) !important;',
'    box-shadow: 0 34px 70px -18px rgba(0,0,0,0.60), inset 0 1px 0 rgba(255,255,255,0.20), 0 0 26px rgba(45,212,191,0.18) !important;',
'}',
'/* Sheen highlight across the top of the glass card */',
'.t-Login-region::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0; left: 0; right: 0;',
'    height: 46%;',
'    background: linear-gradient(180deg, rgba(255,255,255,0.10), transparent);',
'    pointer-events: none;',
'}',
'.t-Login-body, .t-Login-header {',
'    background: transparent !important;',
'    position: relative;',
'}',
'/* Logo styling */',
'.t-Login-logo {',
'    background: linear-gradient(135deg, #2dd4bf, #0d9488) !important;',
'    border-radius: 26px !important;',
'    padding: 10px !important;',
'    width: 76px !important;',
'    height: 76px !important;',
'    object-fit: contain;',
'    box-shadow: 0 10px 26px rgba(45,212,191,0.35), 0 0 0 6px rgba(45,212,191,0.10);',
'    margin-bottom: 14px;',
'}',
'/* Title styling */',
'.t-Login-title {',
'    color: #7df3e1 !important;',
'    font-size: 28px !important;',
'    font-weight: 700 !important;',
'    text-align: center !important;',
'    margin-bottom: 24px !important;',
'    letter-spacing: 1px;',
'    text-shadow: 0 0 18px rgba(45,212,191,0.45);',
'}',
'/* Input field styling - dark glass (high specificity to beat glass-theme.css) */',
'.t-Login-region input.text_field, .t-Login-region input.password {',
'    background: rgba(7,26,30,0.50) !important;',
'    -webkit-backdrop-filter: blur(12px);',
'    backdrop-filter: blur(12px);',
'    border: 1px solid rgba(255,255,255,0.16) !important;',
'    border-radius: 50px !important;',
'    padding: 14px 20px 14px 50px !important;',
'    font-size: 15px !important;',
'    transition: all 0.3s ease !important;',
'    width: 100% !important;',
'    color: #e2fdf9 !important;',
'    box-sizing: border-box;',
'}',
'.t-Login-region input.text_field::placeholder, .t-Login-region input.password::placeholder {',
'    color: rgba(148,183,178,0.75) !important;',
'}',
'.t-Login-region input.text_field:focus, .t-Login-region input.password:focus {',
'    border-color: #2dd4bf !important;',
'    box-shadow: 0 0 0 4px rgba(45,212,191,0.15), 0 0 18px rgba(45,212,191,0.25) !important;',
'    outline: none !important;',
'    background: rgba(10,34,38,0.62) !important;',
'}',
'/* Icon inside the input field */',
'.apex-item-icon {',
'    position: absolute !important;',
'    left: 48px !important;',
'    top: 38% !important;',
'    transform: translateY(-50%) !important;',
'    color: #2dd4bf !important;',
'    font-size: 18px !important;',
'    z-index: 2;',
'}',
'/* Eye icon for the password */',
'.field-icon {',
'    position: absolute !important;',
'    right: 18px !important;',
'    top: 38% !important;',
'    transform: translateY(-50%) !important;',
'    color: #8fb5b0 !important;',
'    cursor: pointer !important;',
'    font-size: 18px !important;',
'    z-index: 2;',
'    transition: color 0.3s ease;',
'}',
'.field-icon:hover {',
'    color: #2dd4bf !important;',
'}',
'/* Container input wrapper */',
'.t-Form-fieldContainer {',
'    position: relative;',
'}',
'/* Remember-me checkbox styling (item is P9999_PERSISTENT_AUTH) */',
'#P9999_PERSISTENT_AUTH_LABEL, .t-Login-region .u-checkbox {',
'    color: rgba(226,253,249,0.78) !important;',
'    font-size: 13px !important;',
'}',
'#P9999_PERSISTENT_AUTH {',
'    accent-color: #2dd4bf !important;',
'    width: 16px !important;',
'    height: 16px !important;',
'    margin-right: 8px !important;',
'}',
'/* Button styling (Login) - neon glass */',
'#login_button {',
'    background: linear-gradient(135deg, #2dd4bf, #0f766e) !important;',
'    border: 1px solid rgba(255,255,255,0.25) !important;',
'    border-radius: 50px !important;',
'    padding: 14px 28px !important;',
'    font-weight: 700 !important;',
'    font-size: 16px !important;',
'    transition: all 0.3s ease !important;',
'    box-shadow: 0 4px 15px rgba(45, 212, 191, 0.3) !important;',
'    color: white !important;',
'    width: 100%;',
'    margin-top: 10px;',
'    cursor: pointer;',
'    position: relative;',
'    overflow: hidden;',
'}',
'#login_button:hover {',
'    transform: translateY(-2px);',
'    box-shadow: 0 8px 25px rgba(45, 212, 191, 0.5) !important;',
'    background: linear-gradient(135deg, #5eead4, #0d9488) !important;',
'}',
'#login_button:active {',
'    transform: translateY(0);',
'}',
'#login_button::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: -100%;',
'    width: 100%;',
'    height: 100%;',
'    background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);',
'    transition: left 0.5s ease;',
'}',
'#login_button:hover::before {',
'    left: 100%;',
'}',
'/* Button styling (Report Now) - amber glass */',
'#lapor_button {',
'    background: linear-gradient(135deg, rgba(245,158,11,0.92), rgba(217,119,6,0.92)) !important;',
'    border: 1px solid rgba(255,255,255,0.25) !important;',
'    border-radius: 50px !important;',
'    padding: 14px 28px !important;',
'    font-weight: 700 !important;',
'    font-size: 16px !important;',
'    transition: all 0.3s ease !important;',
'    box-shadow: 0 4px 15px rgba(245, 158, 11, 0.3) !important;',
'    color: white !important;',
'    width: 100%;',
'    margin-top: 12px;',
'    cursor: pointer;',
'    position: relative;',
'    overflow: hidden;',
'}',
'#lapor_button:hover {',
'    transform: translateY(-2px);',
'    box-shadow: 0 8px 25px rgba(245, 158, 11, 0.5) !important;',
'    background: linear-gradient(135deg, #fbbf24, #f59e0b) !important;',
'}',
'#lapor_button::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: -100%;',
'    width: 100%;',
'    height: 100%;',
'    background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);',
'    transition: left 0.5s ease;',
'}',
'#lapor_button:hover::before {',
'    left: 100%;',
'}',
'/* Button styling (Landing Page) - ghost glass */',
'#landing_page_button {',
'    background: rgba(255,255,255,0.06) !important;',
'    -webkit-backdrop-filter: blur(8px);',
'    backdrop-filter: blur(8px);',
'    border: 1px solid rgba(255,255,255,0.22) !important;',
'    border-radius: 50px !important;',
'    padding: 12px 24px !important;',
'    font-weight: 600 !important;',
'    font-size: 14px !important;',
'    transition: all 0.3s ease !important;',
'    color: #b9d9d4 !important;',
'    width: 100%;',
'    margin-top: 12px;',
'    cursor: pointer;',
'    text-align: center;',
'    display: inline-block;',
'    text-decoration: none;',
'}',
'#landing_page_button:hover {',
'    background: rgba(45, 212, 191, 0.12) !important;',
'    border-color: #2dd4bf !important;',
'    color: #2dd4bf !important;',
'    transform: translateY(-2px);',
'}',
'/* Button group container */',
'.t-Login-buttons {',
'    display: flex;',
'    flex-direction: column;',
'    gap: 8px;',
'}',
'/* Header styling */',
'.t-Login-header {',
'    text-align: center;',
'}',
'/* Success message styling */',
'.apex-page-success {',
'    background: linear-gradient(135deg, rgba(16,185,129,0.85), rgba(5,150,105,0.85)) !important;',
'    -webkit-backdrop-filter: blur(10px);',
'    backdrop-filter: blur(10px);',
'    border-radius: 16px !important;',
'    padding: 12px 20px !important;',
'    color: white !important;',
'    font-size: 14px !important;',
'    margin-bottom: 20px !important;',
'    border: 1px solid rgba(255,255,255,0.25) !important;',
'    box-shadow: 0 4px 15px rgba(16, 185, 129, 0.3);',
'}',
'/* Fade-in animation for the card */',
'@keyframes fadeInUp {',
'    from {',
'        opacity: 0;',
'        transform: translateY(30px);',
'    }',
'    to {',
'        opacity: 1;',
'        transform: translateY(0);',
'    }',
'}',
'/* Responsive */',
'@media (max-width: 768px) {',
'    .t-Login-region {',
'        margin: 16px !important;',
'        padding: 20px !important;',
'        max-width: calc(100% - 32px) !important;',
'    }',
'',
'    .t-Login-title {',
'        font-size: 24px !important;',
'        margin-bottom: 20px !important;',
'    }',
'',
'    .t-Login-region input.text_field, .t-Login-region input.password {',
'        padding: 12px 16px 12px 45px !important;',
'        font-size: 14px !important;',
'    }',
'',
'    #login_button, #lapor_button {',
'        padding: 12px 24px !important;',
'        font-size: 14px !important;',
'    }',
'',
'    .t-Login-logo {',
'        width: 58px !important;',
'        height: 58px !important;',
'        padding: 8px !important;',
'    }',
'}',
'@media (max-width: 480px) {',
'    .t-Login-region {',
'        padding: 16px !important;',
'    }',
'',
'    .t-Login-title {',
'        font-size: 20px !important;',
'    }',
'',
'    .t-Login-region input.text_field, .t-Login-region input.password {',
'        padding: 10px 14px 10px 40px !important;',
'        font-size: 13px !important;',
'    }',
'',
'    .apex-item-icon {',
'        left: 40px !important;',
'        font-size: 16px !important;',
'    }',
'',
'    .field-icon {',
'        right: 14px !important;',
'        font-size: 16px !important;',
'    }',
'',
'    #login_button, #lapor_button, #landing_page_button {',
'        padding: 10px 20px !important;',
'        font-size: 13px !important;',
'    }',
'}',
'/* -------------------------------------------------------------------------------------------- */',
''))
,p_step_template=>wwv_flow_imp.id(14344309855693909385)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344597470236909757)
,p_plug_name=>'WBS'
,p_static_id=>'wbs'
,p_region_name=>'login_card'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344398698298909443)
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14344816495031969519)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(14344597470236909757)
,p_button_name=>'LANDING_PAGE'
,p_static_id=>'landing-page'
,p_button_static_id=>'landing_page_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>wwv_flow_imp.id(14344477136542909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go to Landing Page'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:RP,9999,99::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14344816339321969517)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(14344597470236909757)
,p_button_name=>'LAPOR'
,p_static_id=>'lapor'
,p_button_static_id=>'lapor_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14344477136542909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report Now'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3::'
,p_icon_css_classes=>'fa-exclamation-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14344599448920909780)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14344597470236909757)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_button_static_id=>'login_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14344477136542909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344598189628909778)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14344597470236909757)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_post_element_text=>'<i id="pass-status" class="fa fa-eye field-icon" aria-hidden="true" onClick="viewPassword()"></i>'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>wwv_flow_imp.id(14344474359992909489)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344599050951909779)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14344597470236909757)
,p_prompt=>'Remember me'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(14344474359992909489)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344598636931909778)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14344597470236909757)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(14344474359992909489)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344597977576909767)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14344597470236909757)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(14344474359992909489)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14344603565922909809)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>65061686366468093
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14344603097824909808)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65061218268468092
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14344599757263909789)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>65057877707468073
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14344600772771909808)
,p_page_process_id=>wwv_flow_imp.id(14344599757263909789)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14344601251826909808)
,p_page_process_id=>wwv_flow_imp.id(14344599757263909789)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14344600253350909794)
,p_page_process_id=>wwv_flow_imp.id(14344599757263909789)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14344601646355909808)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>65059766799468092
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14344602590957909808)
,p_page_process_id=>wwv_flow_imp.id(14344601646355909808)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14344602149442909808)
,p_page_process_id=>wwv_flow_imp.id(14344601646355909808)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp.component_end;
end;
/
