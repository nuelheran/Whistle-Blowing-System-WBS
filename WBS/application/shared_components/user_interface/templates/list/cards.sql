prompt --application/shared_components/user_interface/templates/list/cards
begin
--   Manifest
--     LIST TEMPLATE: cards
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>13144316281138660209
,p_default_application_id=>125939
,p_default_id_offset=>14279541879556441716
,p_default_owner=>'WKSP_MANUELPORTOFOLIO'
);
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(14344465101087909486)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#" aria-current="page">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap">',
'        <h3 class="t-Card-title">#TEXT#</h3>',
'        <h4 class="t-Card-subtitle">#A07#</h4>',
'      </div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#" aria-hidden="true"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap">',
'        <h3 class="t-Card-title">#TEXT#</h3>',
'        <h4 class="t-Card-subtitle">#A07#</h4>',
'      </div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#" aria-hidden="true"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_static_id=>'cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>wwv_imp_util.get_subscription_id(2885322685880632508,2550,'cards',8842,null,'universal-theme')
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344468847680909487)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_static_id=>'display-subtitle'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344470439020909487)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_static_id=>'use-theme-colors'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344467874113909486)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_static_id=>'color-fill'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(14344467637621909486)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344470060477909487)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_static_id=>'raise-card'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(14344467637621909486)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344465787190909486)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_static_id=>'2-lines'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(14344465677528909486)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344466243115909486)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_static_id=>'3-lines'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(14344465677528909486)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344466645243909486)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_static_id=>'4-lines'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(14344465677528909486)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344469391004909487)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_static_id=>'hidden-body-text'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(14344465677528909486)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344469588599909487)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_static_id=>'icons-rounded'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(14344460234118909484)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344469788971909487)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_static_id=>'icons-square'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(14344460234118909484)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344468380599909487)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_static_id=>'display-icons'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(14344468216444909487)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344468618071909487)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_static_id=>'display-initials'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(14344468216444909487)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344465441221909486)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_static_id=>'2-columns'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(14344450860114909481)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344466005521909486)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_static_id=>'3-columns'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(14344450860114909481)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344466427125909486)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_static_id=>'4-columns'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(14344450860114909481)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344466788551909486)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_static_id=>'5-columns'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(14344450860114909481)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344467470383909486)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_static_id=>'cards-stacked'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_imp.id(14344450860114909481)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344469188656909487)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_static_id=>'float'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(14344450860114909481)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344470184626909487)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_static_id=>'span-horizontally'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(14344450860114909481)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344466985091909486)
,p_theme_id=>42
,p_name=>'BASIC'
,p_static_id=>'basic'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(14344456399707909483)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344467242565909486)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_static_id=>'block'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(14344456399707909483)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344468036724909486)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_static_id=>'compact'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(14344456399707909483)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(14344469075890909487)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_static_id=>'featured'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(14344465101087909486)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(14344456399707909483)
,p_template_types=>'LIST'
);
wwv_flow_imp.component_end;
end;
/
