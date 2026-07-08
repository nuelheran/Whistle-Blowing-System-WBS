prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Report List'
,p_alias=>'REPORT-LIST'
,p_step_title=>'Report List'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------------ GLOBAL STYLE (aurora body) ------------------------------ */',
'html {',
'  scroll-behavior: smooth;',
'}',
'body {',
'  background: radial-gradient(1100px 700px at 8% -12%, rgba(45,212,191,0.30), transparent 60%), radial-gradient(1000px 650px at 108% 8%, rgba(34,211,238,0.24), transparent 55%), radial-gradient(900px 900px at 50% 118%, rgba(13,148,136,0.22), transpar'
||'ent 62%), linear-gradient(160deg, #071a1e 0%, #0b2b30 45%, #0d3a3d 100%) !important;',
'  background-attachment: fixed !important;',
'  font-family: system-ui, -apple-system, ''Segoe UI'', Roboto, ''Helvetica Neue'', sans-serif;',
'}',
'/* Container max-width */',
'.container {',
'  max-width: 1280px;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* --------------------- Page Title bar (t_Body_title) - transparent over aurora --------------------- */',
'.t-Body-title {',
'  background: transparent !important;',
'  box-shadow: none !important;',
'  border-bottom: none !important;',
'  padding: 10px 14px 0 14px !important;',
'}',
'.t-BreadcrumbRegion {',
'  background: transparent !important;',
'  border: none !important;',
'  box-shadow: none !important;',
'}',
'.t-Breadcrumb-item a.t-Breadcrumb-label {',
'  color: rgba(203,236,231,0.75) !important;',
'}',
'.t-Breadcrumb-item a.t-Breadcrumb-label:hover {',
'  color: #7df3e1 !important;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------------ REGION CARD (dark liquid glass) ------------------------------ */',
'.t-Region {',
'  background: transparent !important;',
'  box-shadow: none !important;',
'  border: none !important;',
'  -webkit-backdrop-filter: none !important;',
'  backdrop-filter: none !important;',
'  overflow: visible !important;',
'}',
'.t-Region-bodyWrap {',
'  background: linear-gradient(160deg, rgba(13,42,45,0.50) 0%, rgba(7,24,28,0.66) 100%) !important;',
'  -webkit-backdrop-filter: blur(28px) saturate(1.6);',
'  backdrop-filter: blur(28px) saturate(1.6);',
'  border: 1px solid rgba(255,255,255,0.16) !important;',
'  border-radius: 24px !important;',
'  box-shadow: 0 30px 60px -18px rgba(0,0,0,0.55), inset 0 1px 0 rgba(255,255,255,0.18) !important;',
'  padding: 12px !important;',
'  position: relative;',
'  transition: all 0.3s ease;',
'}',
'.t-Region-bodyWrap:hover {',
'  border-color: rgba(45,212,191,0.35) !important;',
'}',
'.t-Region-header {',
'  background: transparent !important;',
'  border-bottom: none !important;',
'}',
'.t-Region-header .t-Region-title,',
'.t-Region .t-Region-title {',
'  color: #eafffb !important;',
'  text-shadow: 0 0 14px rgba(45,212,191,0.4);',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------------ CUSTOM SCROLLBAR (dark neon) ------------------------------ */',
'::-webkit-scrollbar {',
'  width: 8px;',
'  height: 8px;',
'}',
'::-webkit-scrollbar-track {',
'  background: rgba(7,26,30,0.45);',
'  border-radius: 10px;',
'}',
'::-webkit-scrollbar-thumb {',
'  background: linear-gradient(135deg, #14b8a6, #22d3ee);',
'  border-radius: 10px;',
'}',
'::-webkit-scrollbar-thumb:hover {',
'  background: linear-gradient(135deg, #2dd4bf, #22d3ee);',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------------ RESPONSIVE TWEAKS ------------------------------ */',
'@media (max-width: 768px) {',
'  .hero {',
'    flex-direction: column;',
'    text-align: center;',
'    padding: 32px 24px;',
'  }',
'',
'  .hero-text p {',
'    max-width: 100%;',
'  }',
'',
'  .hero-icon {',
'    margin-left: 0;',
'    margin-top: 16px;',
'  }',
'',
'  .cards-grid {',
'    grid-template-columns: 1fr !important;',
'    gap: 20px;',
'  }',
'',
'  .nav-card {',
'    padding: 24px 16px;',
'  }',
'',
'  .apex-nav {',
'    flex-wrap: wrap;',
'    height: auto;',
'    padding: 8px 12px;',
'  }',
'',
'  .apex-nav .nav-logo {',
'    margin-right: auto;',
'  }',
'',
'  .apex-nav .nav-tabs {',
'    order: 3;',
'    flex-basis: 100%;',
'    margin-top: 8px;',
'    justify-content: center;',
'  }',
'',
'  .apex-nav .nav-tab {',
'    padding: 0 10px;',
'    font-size: 12px;',
'  }',
'}',
'@media (max-width: 480px) {',
'  .hero-text h1 {',
'    font-size: 22px;',
'  }',
'',
'  .hero-text p {',
'    font-size: 13px;',
'  }',
'',
'  .hero-sub {',
'    justify-content: center;',
'  }',
'',
'  .section-title {',
'    font-size: 12px;',
'  }',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------- PAGE ITEM DISPLAY ONLY (dark glass value boxes) ------------------- */',
'/* -------------------------------------------------------------------------------------------- */',
'#P2_NOMOR_LAPORAN_DISPLAY,',
'#P2_NAMA_PELAPOR_DISPLAY,',
'#P2_EMAIL_PELAPOR_DISPLAY,',
'#P2_STATUS_DISPLAY,',
'#P2_KATEGORI_PELANGGARAN_DISPLAY,',
'#P2_MEDIA_PELAPORAN_DISPLAY {',
'    font-weight: 600;',
'    background: rgba(7,26,30,0.50);',
'    -webkit-backdrop-filter: blur(10px);',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(255,255,255,0.16);',
'    border-radius: 0 0 10px 10px;',
'    padding: 12px 14px;',
'    font-size: 14px;',
'    color: #e2fdf9;',
'    display: block;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------- LABEL (teal glass chips) ------------------- */',
'/* -------------------------------------------------------------------------------------------- */',
'#P2_NOMOR_LAPORAN_LABEL,',
'#P2_NAMA_PELAPOR_LABEL,',
'#P2_EMAIL_PELAPOR_LABEL,',
'#P2_STATUS_LABEL,',
'#P2_KATEGORI_PELANGGARAN_LABEL,',
'#P2_MEDIA_PELAPORAN_LABEL {',
'    position: relative;',
'    display: flex;',
'    align-items: center;',
'    padding: 8px 12px;',
'    font-size: 13px;',
'    font-weight: 600;',
'    color: #7df3e1 !important;',
'    background: rgba(45,212,191,0.12);',
'    border: 1px solid rgba(45,212,191,0.22);',
'    border-bottom: none;',
'    border-radius: 10px 10px 0 0;',
'    letter-spacing: 0.3px;',
'    margin-bottom: 2px;',
'    text-transform: uppercase;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------- POPUP LOV (dark glass) ------------------- */',
'/* -------------------------------------------------------------------------------------------- */',
'/* LOV group container */',
'.apex-item-group--popup-lov {',
'    display: flex;',
'    align-items: stretch;',
'    background: rgba(7,26,30,0.50) !important;',
'    -webkit-backdrop-filter: blur(10px);',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(255,255,255,0.16) !important;',
'    border-radius: 0 0 10px 10px !important;',
'    overflow: hidden;',
'    transition: all 0.2s ease;',
'}',
'/* LOV input field */',
'.apex-item-group--popup-lov input.apex-item-popup-lov {',
'    flex: 1;',
'    border: none !important;',
'    padding: 12px 14px;',
'    font-size: 14px;',
'    background: transparent !important;',
'    color: #e2fdf9 !important;',
'}',
'/* LOV button */',
'.apex-item-group--popup-lov .a-Button--popupLOV {',
'    background: rgba(45,212,191,0.12) !important;',
'    border: none !important;',
'    border-left: 1px solid rgba(255,255,255,0.14) !important;',
'    border-radius: 0 !important;',
'    color: #7df3e1 !important;',
'    width: 40px;',
'    transition: all 0.2s ease;',
'    cursor: pointer;',
'}',
'.apex-item-group--popup-lov .a-Button--popupLOV:hover {',
'    background: rgba(45,212,191,0.35) !important;',
'    color: white !important;',
'}',
'/* LOV focus effect */',
'.apex-item-group--popup-lov:focus-within {',
'    border-color: #2dd4bf !important;',
'    box-shadow: 0 0 0 2px rgba(45, 212, 191, 0.3), 0 0 16px rgba(45,212,191,0.2);',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------- INTERACTIVE GRID (dark liquid glass) ------------------- */',
'/* -------------------------------------------------------------------------------------------- */',
'/* IG region shell - dark glass card (overrides glass-theme light glass) */',
'.t-IRR-region {',
'    background: linear-gradient(160deg, rgba(13,42,45,0.50) 0%, rgba(7,24,28,0.66) 100%) !important;',
'    -webkit-backdrop-filter: blur(28px) saturate(1.6);',
'    backdrop-filter: blur(28px) saturate(1.6);',
'    border: 1px solid rgba(255,255,255,0.16) !important;',
'    border-radius: 24px !important;',
'    box-shadow: 0 30px 60px -18px rgba(0,0,0,0.55), inset 0 1px 0 rgba(255,255,255,0.18) !important;',
'    padding: 10px;',
'    overflow: hidden !important;',
'}',
'/* Grid shell transparent so the region glass shows through */',
'.a-IG, .a-IG-body, .a-IG-header, .a-IG-contentContainer, .a-IG-gridView,',
'.a-GV, .a-GV-w-hdr, .a-GV-w-frozen, .a-GV-w-scroll, .a-GV-bdy {',
'    background: transparent !important;',
'}',
'/* No data / alt message on dark glass */',
'.a-GV-altMessage, .a-GV-noDataMsg {',
'    background: transparent !important;',
'}',
'.a-GV-altMessage-text {',
'    color: rgba(203,236,231,0.8) !important;',
'}',
'.a-GV-altMessage-icon {',
'    color: rgba(167,220,212,0.55) !important;',
'}',
'/* Toolbar search input - dark glass */',
'.a-Toolbar-input, .a-Toolbar-inputText, input.a-Toolbar-input[type="search"] {',
'    background: rgba(7,26,30,0.50) !important;',
'    -webkit-backdrop-filter: blur(10px);',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(255,255,255,0.16) !important;',
'    border-radius: 10px !important;',
'    color: #e2fdf9 !important;',
'}',
'.a-Toolbar-input:focus {',
'    border-color: #2dd4bf !important;',
'    box-shadow: 0 0 0 3px rgba(45,212,191,0.18) !important;',
'    outline: none !important;',
'}',
'/* Column headers */',
'.a-GV-header {',
'    background: rgba(19,78,74,0.85) !important;',
'    border-bottom: 2px solid #2dd4bf !important;',
'    font-weight: 700;',
'    color: #eafffb !important;',
'}',
'/* Column header text */',
'.a-GV-headerLabel {',
'    font-size: 12px;',
'    font-weight: 700;',
'    text-transform: uppercase;',
'    color: #eafffb !important;',
'}',
'/* Data rows - dark glass */',
'.a-GV-row {',
'    background: rgba(255,255,255,0.04) !important;',
'    border-bottom: 1px solid rgba(255,255,255,0.08) !important;',
'}',
'.a-GV-cell {',
'    color: #d6efeb !important;',
'    background: transparent !important;',
'    border-right: 1px solid rgba(255,255,255,0.06) !important;',
'}',
'/* Table row hover */',
'.a-GV-row:hover, .a-GV-row:hover .a-GV-cell {',
'    background: rgba(45,212,191,0.10) !important;',
'}',
'/* Details button inside the grid */',
'.a-GV-cell a {',
'    background: linear-gradient(135deg, #0f766e, #14b8a6);',
'    border: 1px solid rgba(255,255,255,0.25);',
'    padding: 5px 12px;',
'    border-radius: 20px;',
'    color: white !important;',
'    text-decoration: none;',
'    font-size: 11px;',
'    font-weight: 600;',
'    display: inline-block;',
'    transition: all 0.2s ease;',
'    box-shadow: 0 3px 10px rgba(20,184,166,0.35);',
'}',
'.a-GV-cell a:hover {',
'    background: linear-gradient(135deg, #2dd4bf, #22d3ee);',
'    box-shadow: 0 6px 16px rgba(34,211,238,0.45);',
'    transform: translateY(-1px);',
'}',
'/* Pagination */',
'.a-GV-pageRange {',
'    background: rgba(45,212,191,0.15) !important;',
'    color: #7df3e1 !important;',
'    padding: 3px 12px;',
'    border-radius: 20px;',
'    font-size: 12px;',
'}',
'/* Grid footer */',
'.a-GV-footer {',
'    background: rgba(13,42,45,0.55) !important;',
'    border-top: 1px solid rgba(255,255,255,0.12) !important;',
'}',
'.a-GV-status {',
'    color: rgba(203,236,231,0.75) !important;',
'}',
'/* Toolbar above the grid - frosted dark */',
'.a-Toolbar, .a-IRR-toolbar {',
'    background: rgba(13,42,45,0.45) !important;',
'    -webkit-backdrop-filter: blur(12px);',
'    backdrop-filter: blur(12px);',
'    border-radius: 12px;',
'    border: 1px solid rgba(255,255,255,0.10);',
'}',
'/* Generic toolbar buttons - teal glass */',
'.a-Button {',
'    background: rgba(45,212,191,0.14);',
'    border: 1px solid rgba(45,212,191,0.28);',
'    border-radius: 8px;',
'    color: #7df3e1;',
'    padding: 6px 14px;',
'    font-weight: 600;',
'    font-size: 12px;',
'    transition: all 0.2s ease;',
'}',
'.a-Button:hover {',
'    background: rgba(45,212,191,0.32);',
'    color: white;',
'}',
'/* Actions button (with icon) */',
'.a-Button--withIcon {',
'    background: rgba(255,255,255,0.06);',
'    color: #b9d9d4;',
'    border: 1px solid rgba(255,255,255,0.22);',
'}',
'.a-Button--withIcon:hover {',
'    background: rgba(45,212,191,0.25);',
'    color: white;',
'    border-color: rgba(45,212,191,0.45);',
'}',
'/* ========== STATUS STYLING IN THE INTERACTIVE GRID WITH ROUND INDICATOR ========== */',
'/* Round indicator for grid status */',
'.status-indicator-grid {',
'    display: inline-block;',
'    width: 10px;',
'    height: 10px;',
'    border-radius: 50%;',
'    animation: pulse-grid 2s infinite;',
'}',
'/* Pulse animation for the grid indicator */',
'@keyframes pulse-grid {',
'    0% {',
'        box-shadow: 0 0 0 0 rgba(45, 212, 191, 0.4);',
'        transform: scale(1);',
'    }',
'    50% {',
'        transform: scale(1.1);',
'    }',
'    70% {',
'        box-shadow: 0 0 0 6px rgba(45, 212, 191, 0);',
'        transform: scale(1);',
'    }',
'    100% {',
'        box-shadow: 0 0 0 0 rgba(45, 212, 191, 0);',
'        transform: scale(1);',
'    }',
'}',
'/* Hover effect for the grid status cell */',
'.a-GV-cell span[style*="border-radius: 40px"] {',
'    transition: all 0.2s ease;',
'}',
'.a-GV-cell span[style*="border-radius: 40px"]:hover {',
'    transform: translateY(-2px);',
'    box-shadow: 0 4px 12px rgba(45,212,191,0.25);',
'}',
'/* Optional: adjust grid row height for comfort */',
'.a-GV-row .a-GV-cell {',
'    padding: 8px 12px;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------- BREADCRUMB styling (light on dark) ------------------- */',
'/* -------------------------------------------------------------------------------------------- */',
'.t-Breadcrumb-label {',
'    color: rgba(226,253,249,0.75) !important;',
'    font-weight: 500;',
'}',
'.t-Breadcrumb-item.is-active .t-Breadcrumb-label {',
'    color: #2dd4bf !important;',
'    font-weight: 700;',
'    text-shadow: 0 0 12px rgba(45,212,191,0.35);',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------- PLACEHOLDER ------------------- */',
'/* -------------------------------------------------------------------------------------------- */',
'::placeholder {',
'    color: rgba(148,183,178,0.75) !important;',
'    font-style: italic;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'#reset_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'}',
'#reset_button .t-Icon {',
'    animation: none;',
'    transition: transform 0.3s ease;',
'}',
'#reset_button:hover .t-Icon {',
'    animation: rotate 0.8s linear infinite;',
'}',
'@keyframes rotate {',
'    0% {',
'        transform: rotate(0deg);',
'    }',
'    100% {',
'        transform: rotate(360deg);',
'    }',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------- POPUP LOV DIALOG (dark liquid glass dropdown) ------------------- */',
'/* -------------------------------------------------------------------------------------------- */',
'/* Dialog shell (overrides glass-theme light frost) */',
'.ui-dialog--popup, .ui-dialog-popuplov {',
'    background: linear-gradient(160deg, rgba(13,42,45,0.88), rgba(7,24,28,0.94)) !important;',
'    -webkit-backdrop-filter: blur(24px) saturate(1.5);',
'    backdrop-filter: blur(24px) saturate(1.5);',
'    border: 1px solid rgba(255,255,255,0.18) !important;',
'    border-radius: 16px !important;',
'    box-shadow: 0 24px 55px -15px rgba(0,0,0,0.65), 0 0 0 1px rgba(45,212,191,0.10) !important;',
'    overflow: hidden;',
'}',
'.a-PopupLOV-dialog {',
'    background: transparent !important;',
'    -webkit-backdrop-filter: none;',
'    backdrop-filter: none;',
'    border: none !important;',
'}',
'/* Search bar strip */',
'.a-PopupLOV-searchBar {',
'    background: rgba(45,212,191,0.08) !important;',
'    border-bottom: 1px solid rgba(255,255,255,0.12) !important;',
'    padding: 8px;',
'}',
'/* Search input - dark glass (high specificity to beat glass-theme white input) */',
'.a-PopupLOV-searchBar input.a-PopupLOV-search.apex-item-text {',
'    background: rgba(7,26,30,0.60) !important;',
'    border: 1px solid rgba(255,255,255,0.18) !important;',
'    border-radius: 10px !important;',
'    color: #e2fdf9 !important;',
'}',
'.a-PopupLOV-searchBar input.a-PopupLOV-search.apex-item-text:focus {',
'    border-color: #2dd4bf !important;',
'    box-shadow: 0 0 0 3px rgba(45,212,191,0.18) !important;',
'    outline: none !important;',
'}',
'/* Search button */',
'.a-PopupLOV-doSearch {',
'    background: rgba(45,212,191,0.18) !important;',
'    border: 1px solid rgba(45,212,191,0.32) !important;',
'    border-radius: 10px !important;',
'    color: #7df3e1 !important;',
'}',
'.a-PopupLOV-doSearch:hover {',
'    background: rgba(45,212,191,0.35) !important;',
'    color: white !important;',
'}',
'/* Results area transparent so the dark dialog shows through */',
'.a-PopupLOV-results, .a-TMV, .a-TMV-body, .a-TMV-w-scroll {',
'    background: transparent !important;',
'}',
'/* Result list items */',
'.a-PopupLOV-dialog .a-IconList {',
'    background: transparent !important;',
'}',
'.a-PopupLOV-dialog .a-IconList-item {',
'    color: #d6efeb !important;',
'    border-radius: 8px;',
'}',
'.a-PopupLOV-dialog .a-IconList-item .a-IconList-label {',
'    color: #d6efeb !important;',
'}',
'.a-PopupLOV-dialog .a-IconList-item:hover,',
'.a-PopupLOV-dialog .a-IconList-item.is-hover {',
'    background: rgba(45,212,191,0.15) !important;',
'}',
'.a-PopupLOV-dialog .a-IconList-item.is-selected,',
'.a-PopupLOV-dialog .a-IconList-item.is-focused,',
'.a-PopupLOV-dialog .a-IconList-item:focus {',
'    background: rgba(45,212,191,0.25) !important;',
'    outline: 1px solid rgba(45,212,191,0.5);',
'}',
'/* Show More button */',
'.a-GV-loadMore .a-GV-loadMoreButton {',
'    background: rgba(45,212,191,0.14) !important;',
'    border: 1px solid rgba(45,212,191,0.28) !important;',
'    border-radius: 8px !important;',
'    color: #7df3e1 !important;',
'}',
'.a-GV-loadMore .a-GV-loadMoreButton:hover {',
'    background: rgba(45,212,191,0.32) !important;',
'    color: white !important;',
'}',
'/* Popup dialog titlebar (when shown) */',
'.ui-dialog-popuplov .ui-dialog-titlebar {',
'    background: rgba(45,212,191,0.10) !important;',
'    border-bottom: 1px solid rgba(255,255,255,0.12) !important;',
'    color: #eafffb !important;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
''))
,p_step_template=>wwv_flow_imp.id(14344826106539088988)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345224294255855052)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344416360437909459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(14344300662067909308)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14344478748618909495)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344850720558370731)
,p_plug_name=>'Report List'
,p_static_id=>'report-list'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344394156784909442)
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ROW_NUMBER() OVER (',
'           ORDER BY ',
'               CASE WHEN STATUS != ''CLOSED'' THEN 0 ELSE 1 END,',
'               ID DESC',
'       ) AS LINE_NUMBER,',
'       NVL(STATUS, ''N/A'') AS STATUS,',
'       -- Background color',
'       CASE ',
'           WHEN STATUS = ''RECEIVED'' THEN ''linear-gradient(135deg, #ccfbf1 0%, #99f6e4 100%)''',
'           WHEN STATUS = ''ON REVIEW'' THEN ''linear-gradient(135deg, #fff3e0 0%, #ffe0b2 100%)''',
'           WHEN STATUS = ''ON INVESTIGATION'' THEN ''linear-gradient(135deg, #fce4ec 0%, #f8bbd0 100%)''',
'           WHEN STATUS = ''CANCELLED'' THEN ''linear-gradient(135deg, #ffebee 0%, #ffcdd2 100%)''',
'           WHEN STATUS = ''CLOSED'' THEN ''linear-gradient(135deg, #e8f5e9 0%, #c8e6c9 100%)''',
'           ELSE ''#f1f5f9''',
'       END AS STATUS_bg_color,',
'       -- Text color',
'       CASE ',
'           WHEN STATUS = ''RECEIVED'' THEN ''#0f766e''',
'           WHEN STATUS = ''ON REVIEW'' THEN ''#e65100''',
'           WHEN STATUS = ''ON INVESTIGATION'' THEN ''#ad1457''',
'           WHEN STATUS = ''CANCELLED'' THEN ''#c62828''',
'           WHEN STATUS = ''CLOSED'' THEN ''#2e7d32''',
'           ELSE ''#1e293b''',
'       END AS STATUS_text_color,',
'       -- Circle indicator color per-status',
'       CASE ',
'           WHEN STATUS = ''RECEIVED'' THEN ''#14b8a6''',
'           WHEN STATUS = ''ON REVIEW'' THEN ''#ff9800''',
'           WHEN STATUS = ''ON INVESTIGATION'' THEN ''#e91e63''',
'           WHEN STATUS = ''CANCELLED'' THEN ''#f44336''',
'           WHEN STATUS = ''CLOSED'' THEN ''#4caf50''',
'           ELSE ''#94a3b8''',
'       END AS STATUS_indicator_color,',
'       NOMOR_LAPORAN,',
'       NAMA_PELAPOR,',
'       TELP_PELAPOR,',
'       EMAIL_PELAPOR,',
'       KATEGORI_PELANGGARAN AS TINDAKAN,',
'       NAMA_TERLAPOR,',
'       JABATAN_TERLAPOR,',
'       WAKTU_KEJADIAN,',
'       LOKASI_KEJADIAN,',
'       CREATED_DATE,',
'       CREATED_BY,',
'       UPDATED_DATE,',
'       UPDATED_BY,',
'       CASE ',
'           WHEN ID IS NULL THEN '''' ',
'           WHEN ID IS NOT NULL THEN ''''',
'       END AS DETAILS,',
'       SOURCE',
'from XTD_WBS',
'WHERE ',
'    (:P2_NOMOR_LAPORAN_LOV IS NULL OR :P2_NOMOR_LAPORAN_LOV = ''All Report Numbers'' OR NOMOR_LAPORAN = :P2_NOMOR_LAPORAN_LOV)',
'    AND (:P2_NAMA_PELAPOR_LOV IS NULL OR :P2_NAMA_PELAPOR_LOV = ''All Reporter Names'' OR NAMA_PELAPOR = :P2_NAMA_PELAPOR_LOV)',
'    AND (:P2_EMAIL_PELAPOR_LOV IS NULL OR :P2_EMAIL_PELAPOR_LOV = ''All Reporter Emails'' OR EMAIL_PELAPOR = :P2_EMAIL_PELAPOR_LOV)',
'    AND (:P2_STATUS_LOV IS NULL OR :P2_STATUS_LOV = ''All Status'' OR STATUS = :P2_STATUS_LOV)',
'    AND (:P2_KATEGORI_PELANGGARAN_LOV IS NULL OR :P2_KATEGORI_PELANGGARAN_LOV = ''All Violation Categories'' OR KATEGORI_PELANGGARAN = :P2_KATEGORI_PELANGGARAN_LOV)',
'    AND (:P2_MEDIA_PELAPORAN_LOV IS NULL OR :P2_MEDIA_PELAPORAN_LOV = ''All Reporting Channels'' OR SOURCE = :P2_MEDIA_PELAPORAN_LOV)',
';'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report List'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344852121995370745)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344852042038370744)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344852465501370748)
,p_name=>'DETAILS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Details'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,:P4_HEADER_ID,P4_NOMOR_LAPORAN:&ID.,&NOMOR_LAPORAN.'
,p_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="Details">'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344851445895370738)
,p_name=>'EMAIL_PELAPOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL_PELAPOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reporter Email'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1020
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344850934072370733)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344851769426370741)
,p_name=>'JABATAN_TERLAPOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JABATAN_TERLAPOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Accused Position'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14345422717716289935)
,p_name=>'LINE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NUMBER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344851925843370743)
,p_name=>'LOKASI_KEJADIAN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOKASI_KEJADIAN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Incident Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344851182863370736)
,p_name=>'NAMA_PELAPOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAMA_PELAPOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reporter Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344851666752370740)
,p_name=>'NAMA_TERLAPOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAMA_TERLAPOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Accused Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344851096013370735)
,p_name=>'NOMOR_LAPORAN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMOR_LAPORAN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Report No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14346971133566915730)
,p_name=>'SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reporting Channel'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1020
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14345689107877332521)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Status'
,p_label=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span style="background: &STATUS_BG_COLOR.; color: &STATUS_TEXT_COLOR.; display: flex; text-align: center; justify-content: center; align-items: center; gap: 10px; min-width: fit-content; font-weight: bold; border-radius: 40px; padding: 6px 16px;">',
    '    <span class="status-indicator-grid" style="background-color: &STATUS_INDICATOR_COLOR.;"></span>',
    '    <span>&STATUS.</span>',
    '</span>')))).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14345688773475332517)
,p_name=>'STATUS_BG_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_BG_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14345688969348332519)
,p_name=>'STATUS_INDICATOR_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_INDICATOR_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14345688821386332518)
,p_name=>'STATUS_TEXT_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_TEXT_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344851322271370737)
,p_name=>'TELP_PELAPOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TELP_PELAPOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reporter Phone'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344851567472370739)
,p_name=>'TINDAKAN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TINDAKAN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Category'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344852321206370747)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344852270594370746)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14344851790657370742)
,p_name=>'WAKTU_KEJADIAN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WAKTU_KEJADIAN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Incident Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(14344850851025370732)
,p_internal_uid=>65308971468929016
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(14345242438323190338)
,p_interactive_grid_id=>wwv_flow_imp.id(14344850851025370732)
,p_static_id=>'657006'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(14345242629142190338)
,p_report_id=>wwv_flow_imp.id(14345242438323190338)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345243119408190343)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(14344850934072370733)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345244910177190351)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(14344851096013370735)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345245878287190353)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(14344851182863370736)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>151
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345246732885190355)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(14344851322271370737)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>177
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345247641899190357)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(14344851445895370738)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345248493674190359)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(14344851567472370739)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>192
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345249411579190361)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(14344851666752370740)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345250204824190363)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(14344851769426370741)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345251101389190365)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(14344851790657370742)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345252002155190367)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(14344851925843370743)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>143
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345252898348190369)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(14344852042038370744)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345253821754190371)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(14344852121995370745)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345254680196190373)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(14344852270594370746)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345255627774190375)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(14344852321206370747)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345257709662207346)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(14344852465501370748)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345478091007008981)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(14345422717716289935)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>48
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345694961241340217)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(14345688773475332517)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345695790556340220)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(14345688821386332518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345700470373478805)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(14345688969348332519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345704724528492678)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(14345689107877332521)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>231
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14347043352920547506)
,p_view_id=>wwv_flow_imp.id(14345242629142190338)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(14346971133566915730)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14344852569901370749)
,p_plug_name=>'Report List Search'
,p_static_id=>'report-list-search'
,p_region_name=>'list_laporan_search'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14345301382946060920)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_button_name=>'Find'
,p_static_id=>'find'
,p_button_static_id=>'find_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Find'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14344854229686370766)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_button_name=>'Reset'
,p_static_id=>'reset'
,p_button_static_id=>'reset_button'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_image_alt=>'Reset'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-rotate-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344853920214370763)
,p_name=>'P2_EMAIL_PELAPOR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_prompt=>'Reporter Email'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344853781367370762)
,p_name=>'P2_EMAIL_PELAPOR_ITEM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344854051710370764)
,p_name=>'P2_EMAIL_PELAPOR_LOV'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_placeholder=>'-- Select a reporter email --'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT EMAIL_PELAPOR FROM XTD_WBS',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346972295141915742)
,p_name=>'P2_KATEGORI_PELANGGARAN'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_prompt=>'Violation Category'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346972247452915741)
,p_name=>'P2_KATEGORI_PELANGGARAN_ITEM'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346972468012915743)
,p_name=>'P2_KATEGORI_PELANGGARAN_LOV'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_placeholder=>'-- Select a violation category --'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT display_value, return_value',
'FROM (',
'    SELECT ''All Violation Categories'' AS display_value,',
'           ''All Violation Categories'' AS return_value,',
'           0 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''Fraud'' AS display_value,',
'           ''Fraud'' AS return_value,',
'           1 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''Code of Conduct Violation'' AS display_value,',
'           ''Code of Conduct Violation'' AS return_value,',
'           2 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''Policy and Procedure Deviation'' AS display_value,',
'           ''Policy and Procedure Deviation'' AS return_value,',
'           3 AS sort_order',
'    FROM DUAL',
')',
'ORDER BY sort_order, display_value;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346972672192915745)
,p_name=>'P2_MEDIA_PELAPORAN'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_prompt=>'Reporting Channel'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346972569329915744)
,p_name=>'P2_MEDIA_PELAPORAN_ITEM'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346972716081915746)
,p_name=>'P2_MEDIA_PELAPORAN_LOV'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_placeholder=>'-- Select a reporting channel --'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT display_value, return_value',
'FROM (',
'    SELECT ''All Reporting Channels'' AS display_value,',
'           ''All Reporting Channels'' AS return_value,',
'           0 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''WHATSAPP'' AS display_value,',
'           ''WHATSAPP'' AS return_value,',
'           1 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''WEBSITE'' AS display_value,',
'           ''WEBSITE'' AS return_value,',
'           2 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''EMAIL'' AS display_value,',
'           ''EMAIL'' AS return_value,',
'           3 AS sort_order',
'    FROM DUAL',
')',
'ORDER BY sort_order, display_value;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344853316930370757)
,p_name=>'P2_NAMA_PELAPOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_prompt=>'Reporter Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344853260872370756)
,p_name=>'P2_NAMA_PELAPOR_ITEM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344853382081370758)
,p_name=>'P2_NAMA_PELAPOR_LOV'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_placeholder=>'-- Select a reporter name --'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT NAMA_PELAPOR FROM XTD_WBS',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344852706692370751)
,p_name=>'P2_NOMOR_LAPORAN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_prompt=>'Report Number'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344852585343370750)
,p_name=>'P2_NOMOR_LAPORAN_ITEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344852783668370752)
,p_name=>'P2_NOMOR_LAPORAN_LOV'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_placeholder=>'-- Select a report number --'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMOR_LAPORAN FROM XTD_WBS',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344853019050370754)
,p_name=>'P2_STATUS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344852926062370753)
,p_name=>'P2_STATUS_ITEM'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14344853179458370755)
,p_name=>'P2_STATUS_LOV'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(14344852569901370749)
,p_placeholder=>'-- Select a status --'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT display_value, return_value',
'FROM (',
'    SELECT ''All Status'' AS display_value,',
'           ''All Status'' AS return_value,',
'           0 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''RECEIVED'' AS display_value,',
'           ''RECEIVED'' AS return_value,',
'           1 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''ON REVIEW'' AS display_value,',
'           ''ON REVIEW'' AS return_value,',
'           2 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''ON INVESTIGATION'' AS display_value,',
'           ''ON INVESTIGATION'' AS return_value,',
'           3 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''CANCELLED'' AS display_value,',
'           ''CANCELLED'' AS return_value,',
'           4 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''CLOSED'' AS display_value,',
'           ''CLOSED'' AS return_value,',
'           5 AS sort_order',
'    FROM DUAL',
')',
'ORDER BY sort_order, display_value;'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14345301166940060917)
,p_name=>'Set Null & Submit Page (Reset)'
,p_static_id=>'set-null-submit-page-reset'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14344854229686370766)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14345301200063060918)
,p_event_id=>wwv_flow_imp.id(14345301166940060917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_NOMOR_LAPORAN_LOV,P2_NAMA_PELAPOR_LOV,P2_EMAIL_PELAPOR_LOV,P2_STATUS_LOV,P2_KATEGORI_PELANGGARAN_LOV,P2_MEDIA_PELAPORAN_LOV'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    'BEGIN',
    '    IF :P2_NOMOR_LAPORAN_LOV IS NOT NULL THEN        ',
    '        :P2_NOMOR_LAPORAN_LOV := NULL; ',
    '    END IF;',
    '',
    '    IF :P2_NAMA_PELAPOR_LOV IS NOT NULL THEN        ',
    '        :P2_NAMA_PELAPOR_LOV := NULL; ',
    '    END IF;',
    '',
    '    IF :P2_EMAIL_PELAPOR_LOV IS NOT NULL THEN        ',
    '        :P2_EMAIL_PELAPOR_LOV := NULL; ',
    '    END IF;',
    '',
    '    IF :P2_STATUS_LOV IS NOT NULL THEN        ',
    '        :P2_STATUS_LOV := NULL; ',
    '    END IF;',
    '',
    '    IF :P2_KATEGORI_PELANGGARAN_LOV IS NOT NULL THEN        ',
    '        :P2_KATEGORI_PELANGGARAN_LOV := NULL; ',
    '    END IF;',
    '    ',
    '    IF :P2_MEDIA_PELAPORAN_LOV IS NOT NULL THEN        ',
    '        :P2_MEDIA_PELAPORAN_LOV := NULL; ',
    '    END IF;',
    '',
    '    RETURN NULL;',
    'END;',
    '')),
  'suppress_change_event', 'N',
  'type', 'FUNCTION_BODY')).to_clob
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14345301310223060919)
,p_event_id=>wwv_flow_imp.id(14345301166940060917)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-submit-page'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_processing', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14345301521702060921)
,p_name=>'Show Report List'
,p_static_id=>'show-report-list'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14345301382946060920)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14345301595855060922)
,p_event_id=>wwv_flow_imp.id(14345301521702060921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14344850720558370731)
);
wwv_flow_imp.component_end;
end;
/
