prompt --application/shared_components/user_interface/templates/region/inline_drawer
begin
--   Manifest
--     REGION TEMPLATE: inline-drawer
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
 p_id=>wwv_flow_imp.id(14344384175276909439)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'  <div id="#REGION_STATIC_ID#" class="t-DrawerRegion js-dialog-class-ui-dialog--drawer #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'    <div class="t-DrawerRegion-wrap">',
'      <div class="t-DrawerRegion-bodyWrapperOut">',
'        <div class="t-DrawerRegion-bodyWrapperIn">',
'          <div class="t-DrawerRegion-body">#BODY##SUB_REGIONS#</div>',
'        </div>',
'      </div>',
'      <div class="t-DrawerRegion-buttons">',
'        <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'          <div class="t-ButtonRegion-wrap">',
'            <div class="t-ButtonRegion-col t-ButtonRegion-col--left">',
'              <div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div>',
'            </div>',
'            <div class="t-ButtonRegion-col t-ButtonRegion-col--right">',
'              <div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div>',
'            </div>',
'          </div>',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Inline Drawer'
,p_static_id=>'inline-drawer'
,p_internal_name=>'INLINE_DRAWER'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal'
,p_preset_template_options=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>wwv_imp_util.get_subscription_id(1659526333647509386,2540,'inline-drawer',8842,null,'universal-theme')
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344387629522909440)
,p_theme_id=>42
,p_name=>'MODAL'
,p_static_id=>'modal'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344384175276909439)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344388582219909441)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_static_id=>'remove-body-padding'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(14344384175276909439)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344386839965909440)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_EXTRA_LARGE'
,p_static_id=>'drawer-size-extra-large'
,p_display_name=>'Extra Large'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(14344384175276909439)
,p_css_classes=>'js-dialog-class-t-Drawer--xl'
,p_group_id=>wwv_flow_imp.id(14344382624285909439)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344387075719909440)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_LARGE'
,p_static_id=>'drawer-size-large'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(14344384175276909439)
,p_css_classes=>'js-dialog-class-t-Drawer--lg'
,p_group_id=>wwv_flow_imp.id(14344382624285909439)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344387248799909440)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_MEDIUM'
,p_static_id=>'drawer-size-medium'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344384175276909439)
,p_css_classes=>'js-dialog-class-t-Drawer--md'
,p_group_id=>wwv_flow_imp.id(14344382624285909439)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344387443206909440)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_SMALL'
,p_static_id=>'drawer-size-small'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344384175276909439)
,p_css_classes=>'js-dialog-class-t-Drawer--sm'
,p_group_id=>wwv_flow_imp.id(14344382624285909439)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344387808095909440)
,p_theme_id=>42
,p_name=>'NONE'
,p_static_id=>'none'
,p_display_name=>'None (Auto)'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(14344384175276909439)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(14344382624285909439)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344388224516909440)
,p_theme_id=>42
,p_name=>'POSITION_END'
,p_static_id=>'position-end'
,p_display_name=>'End'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344384175276909439)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_group_id=>wwv_flow_imp.id(14344388034072909440)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344388445215909441)
,p_theme_id=>42
,p_name=>'POSITION_START'
,p_static_id=>'position-start'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344384175276909439)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutStart'
,p_group_id=>wwv_flow_imp.id(14344388034072909440)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344384762979909440)
,p_plug_template_id=>wwv_flow_imp.id(14344384175276909439)
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
 p_id=>wwv_flow_imp.id(14344385054732909440)
,p_plug_template_id=>wwv_flow_imp.id(14344384175276909439)
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
 p_id=>wwv_flow_imp.id(14344385294805909440)
,p_plug_template_id=>wwv_flow_imp.id(14344384175276909439)
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
 p_id=>wwv_flow_imp.id(14344385639394909440)
,p_plug_template_id=>wwv_flow_imp.id(14344384175276909439)
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
 p_id=>wwv_flow_imp.id(14344385881236909440)
,p_plug_template_id=>wwv_flow_imp.id(14344384175276909439)
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
 p_id=>wwv_flow_imp.id(14344386188456909440)
,p_plug_template_id=>wwv_flow_imp.id(14344384175276909439)
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
 p_id=>wwv_flow_imp.id(14344384405507909440)
,p_plug_template_id=>wwv_flow_imp.id(14344384175276909439)
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
 p_id=>wwv_flow_imp.id(14344386558623909440)
,p_plug_template_id=>wwv_flow_imp.id(14344384175276909439)
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
