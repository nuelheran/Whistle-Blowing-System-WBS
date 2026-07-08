prompt --application/shared_components/user_interface/templates/region/cards_container
begin
--   Manifest
--     REGION TEMPLATE: cards-container
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
 p_id=>wwv_flow_imp.id(14344344452036909409)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-CardsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'  #BODY#',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Cards Container'
,p_static_id=>'cards-container'
,p_internal_name=>'CARDS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>wwv_imp_util.get_subscription_id(2071277712695139743,2540,'cards-container',8842,null,'universal-theme')
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344345637060909409)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_static_id=>'apply-theme-colors'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(14344344452036909409)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344345876566909409)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_static_id=>'style-a'
,p_display_name=>'Style A'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344344452036909409)
,p_css_classes=>'t-CardsRegion--styleA'
,p_group_id=>wwv_flow_imp.id(14344343158451909408)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344346023066909409)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_static_id=>'style-b'
,p_display_name=>'Style B'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344344452036909409)
,p_css_classes=>'t-CardsRegion--styleB'
,p_group_id=>wwv_flow_imp.id(14344343158451909408)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344346198226909409)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_static_id=>'style-c'
,p_display_name=>'Style C'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(14344344452036909409)
,p_css_classes=>'t-CardsRegion--styleC'
,p_group_id=>wwv_flow_imp.id(14344343158451909408)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344344748379909409)
,p_plug_template_id=>wwv_flow_imp.id(14344344452036909409)
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
 p_id=>wwv_flow_imp.id(14344345051096909409)
,p_plug_template_id=>wwv_flow_imp.id(14344344452036909409)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_apexlang_name=>'sortOrder'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344345375542909409)
,p_plug_template_id=>wwv_flow_imp.id(14344344452036909409)
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
