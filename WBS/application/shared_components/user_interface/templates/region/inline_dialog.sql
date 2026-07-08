prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
--   Manifest
--     REGION TEMPLATE: inline-dialog
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
 p_id=>wwv_flow_imp.id(14344379505598909438)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY##SUB_REGIONS#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_static_id=>'inline-dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>wwv_imp_util.get_subscription_id(2671226943886536762,2540,'inline-dialog',8842,null,'universal-theme')
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344382232703909439)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_static_id=>'auto-height-inline-dialog'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344382431959909439)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_static_id=>'draggable'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344383185043909439)
,p_theme_id=>42
,p_name=>'MODAL'
,p_static_id=>'modal'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344383599688909439)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_static_id=>'remove-body-padding'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344383796315909439)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_static_id=>'resizable'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344382870362909439)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_static_id=>'large-720x480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(14344382624285909439)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344382979972909439)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_static_id=>'medium-600x400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(14344382624285909439)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344383467222909439)
,p_theme_id=>42
,p_name=>'NONE'
,p_static_id=>'none'
,p_display_name=>'None'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(14344382624285909439)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344384054020909439)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_static_id=>'small-480x320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(14344382624285909439)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344380103573909439)
,p_plug_template_id=>wwv_flow_imp.id(14344379505598909438)
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
 p_id=>wwv_flow_imp.id(14344380454990909439)
,p_plug_template_id=>wwv_flow_imp.id(14344379505598909438)
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
 p_id=>wwv_flow_imp.id(14344380773312909439)
,p_plug_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_apexlang_name=>'delete'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344381048573909439)
,p_plug_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_apexlang_name=>'edit'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344381311646909439)
,p_plug_template_id=>wwv_flow_imp.id(14344379505598909438)
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
 p_id=>wwv_flow_imp.id(14344381663648909439)
,p_plug_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_apexlang_name=>'previous'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344379788755909438)
,p_plug_template_id=>wwv_flow_imp.id(14344379505598909438)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_apexlang_name=>'regionBody'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344381882770909439)
,p_plug_template_id=>wwv_flow_imp.id(14344379505598909438)
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
