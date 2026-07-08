prompt --application/shared_components/user_interface/templates/region/alert
begin
--   Manifest
--     REGION TEMPLATE: alert
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>13144316281138660209
,p_default_application_id=>125939
,p_default_id_offset=>14279541879556441716
,p_default_owner=>'WKSP_MANUELPORTOFOLIO'
);
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(14344332100842909397)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY##SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_static_id=>'alert'
,p_internal_name=>'ALERT'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>wwv_imp_util.get_subscription_id(2039236646100190748,2540,'alert',8842,null,'universal-theme')
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344334233739909400)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_static_id=>'coloredbackground'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344336078671909406)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_static_id=>'horizontal'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(14344335836467909406)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344337208856909406)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_static_id=>'wizard'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(14344335836467909406)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344335673422909406)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_static_id=>'hide-icons'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_imp.id(14344335386811909406)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344336463544909406)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_static_id=>'show-custom-icons'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_imp.id(14344335386811909406)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344336845410909406)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_static_id=>'usedefaulticons'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_imp.id(14344335386811909406)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344334983763909404)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_static_id=>'hiddenheader'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_imp.id(14344334807592909403)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344335237897909404)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_static_id=>'hiddenheadernoat'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_css_classes=>'t-Alert--removeHeading js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(14344334807592909403)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344334644924909403)
,p_theme_id=>42
,p_name=>'DANGER'
,p_static_id=>'danger'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_imp.id(14344334456487909403)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344336225331909406)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_static_id=>'information'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_imp.id(14344334456487909403)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344336635731909406)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_static_id=>'success'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_imp.id(14344334456487909403)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344337043395909406)
,p_theme_id=>42
,p_name=>'WARNING'
,p_static_id=>'warning'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_imp.id(14344334456487909403)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344332761503909400)
,p_plug_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_apexlang_name=>'close'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344333049685909400)
,p_plug_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_apexlang_name=>'create'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344333335618909400)
,p_plug_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_apexlang_name=>'next'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344333654640909400)
,p_plug_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_apexlang_name=>'previous'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344332388858909399)
,p_plug_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_apexlang_name=>'regionBody'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344333977443909400)
,p_plug_template_id=>wwv_flow_imp.id(14344332100842909397)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_apexlang_name=>'subRegions'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp.component_end;
end;
/
