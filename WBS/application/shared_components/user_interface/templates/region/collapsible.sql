prompt --application/shared_components/user_interface/templates/region/collapsible
begin
--   Manifest
--     REGION TEMPLATE: collapsible
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
 p_id=>wwv_flow_imp.id(14344356273372909416)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" data-region-id="#REGION_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--controls"><span class="t-Button t-Button--icon t-Button--hideShow"><span class="a-Icon _a-Collapsible-icon" aria-hidden="true"></span></span></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 id="#REGION_STATIC_ID#_heading" class="t-Region-title" data-apex-heading><button class="t-Region-titleButton" type="button">#TITLE#</button></h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>',
'<script>',
'    (() => {',
'        const region = document.getElementById(''#REGION_STATIC_ID#'').classList;',
'        const pref = sessionStorage.getItem(''ORA_WWV_apex.toggleCore.a_Collapsible_#REGION_ID#.&APP_ID..&APP_PAGE_ID..preferenceForExpanded'');',
'        if (region.contains(''js-useLocalStorage'')) { region.toggle(''is-collapsed'', pref === ''false'' || region.contains(''is-collapsed'')); }',
'    })();',
'</script>'))
,p_page_plug_template_name=>'Collapsible'
,p_static_id=>'collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>wwv_imp_util.get_subscription_id(2662888092628347716,2540,'collapsible',8842,null,'universal-theme')
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344364934603909433)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_static_id=>'nobodypadding'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344365351542909433)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_static_id=>'remember-collapsible-state'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344360305776909417)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_static_id=>'accent-1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344360501829909418)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_static_id=>'accent-10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344360706329909418)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_static_id=>'accent-11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344360929544909418)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_static_id=>'accent-12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344361087664909418)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_static_id=>'accent-13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344361356114909432)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_static_id=>'accent-14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344361509689909432)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_static_id=>'accent-15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344361729184909432)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_static_id=>'accent-2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344361953163909432)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_static_id=>'accent-3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344362134906909432)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_static_id=>'accent-4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344362337382909432)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_static_id=>'accent-5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344362541652909432)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_static_id=>'accent-6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344362680431909432)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_static_id=>'accent-7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344362920964909432)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_static_id=>'accent-8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344363141975909432)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_static_id=>'accent-9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(14344351884270909413)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344359479797909417)
,p_theme_id=>42
,p_name=>'240PX'
,p_static_id=>'240px'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(14344350720702909413)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344359762859909417)
,p_theme_id=>42
,p_name=>'320PX'
,p_static_id=>'320px'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(14344350720702909413)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344359968347909417)
,p_theme_id=>42
,p_name=>'480PX'
,p_static_id=>'480px'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(14344350720702909413)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344360121137909417)
,p_theme_id=>42
,p_name=>'640PX'
,p_static_id=>'640px'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(14344350720702909413)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344364341602909433)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_static_id=>'hideoverflow'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(14344353489162909416)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344365769241909433)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_static_id=>'scrollbody'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(14344353489162909416)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344364703492909433)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_static_id=>'icons-plus-or-minus'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_imp.id(14344364510616909433)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344363937701909432)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_static_id=>'conrtols-position-end'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_imp.id(14344363730286909432)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344363515431909432)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_static_id=>'collapsed'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(14344363371674909432)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344364106032909432)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_static_id=>'expanded'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(14344363371674909432)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344365110142909433)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_static_id=>'noborder'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(14344343158451909408)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344365504131909433)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_static_id=>'remove-ui-decoration'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(14344343158451909408)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344365942154909433)
,p_theme_id=>42
,p_name=>'STACKED'
,p_static_id=>'stacked'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(14344343158451909408)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344356822894909417)
,p_plug_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_apexlang_name=>'change'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344357095937909417)
,p_plug_template_id=>wwv_flow_imp.id(14344356273372909416)
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
 p_id=>wwv_flow_imp.id(14344357435753909417)
,p_plug_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_apexlang_name=>'copy'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344357690372909417)
,p_plug_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_apexlang_name=>'create'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344358013943909417)
,p_plug_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_apexlang_name=>'edit'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(14344358280903909417)
,p_plug_template_id=>wwv_flow_imp.id(14344356273372909416)
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
 p_id=>wwv_flow_imp.id(14344358932730909417)
,p_plug_template_id=>wwv_flow_imp.id(14344356273372909416)
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
 p_id=>wwv_flow_imp.id(14344356554605909416)
,p_plug_template_id=>wwv_flow_imp.id(14344356273372909416)
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
 p_id=>wwv_flow_imp.id(14344358635356909417)
,p_plug_template_id=>wwv_flow_imp.id(14344356273372909416)
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
 p_id=>wwv_flow_imp.id(14344359267793909417)
,p_plug_template_id=>wwv_flow_imp.id(14344356273372909416)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_apexlang_name=>'subRegions'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp.component_end;
end;
/
