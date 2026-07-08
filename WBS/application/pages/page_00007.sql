prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Report Intake'
,p_alias=>'REPORT-INTAKE'
,p_step_title=>'Report Intake'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.addEventListener(''DOMContentLoaded'', function() {',
'    const fields = [',
unistr('        { id: ''P7_NAMA_PELAPOR'', text: ''\D83D\DCDD Enter the reporter name'' },'),
unistr('        { id: ''P7_TELP_PELAPOR'', text: ''\D83D\DCDE Example: 81234567890 (without the leading 0)'' },'),
unistr('        { id: ''P7_EMAIL_PELAPOR'', text: ''\2709\FE0F A valid and accessible email address (e.g. name@domain.com)'' },'),
unistr('        { id: ''P7_JABATAN_PELAPOR'', text: ''\D83C\DFE2 Employee / Vendor / Customer / Other'' },'),
unistr('        { id: ''P7_NAMA_TERLAPOR'', text: ''\D83D\DC64 Full name of the reported person'' },'),
unistr('        { id: ''P7_JABATAN_TERLAPOR'', text: ''\D83D\DCCC Position/role of the reported person (e.g. Staff, Supervisor, Vendor, etc.)'' },'),
unistr('        { id: ''P7_WAKTU_KEJADIAN'', text: ''\D83D\DCC5 Example: January 2024 or 15 January 2024'' },'),
unistr('        { id: ''P7_LOKASI_KEJADIAN'', text: ''\D83D\DCCD Where the incident occurred, such as a branch, department, work area, or other relevant location'' },'),
unistr('        { id: ''P7_KRONOLOGIS_KEJADIAN'', text: ''\D83D\DCD6 Describe the sequence of events in detail (5W1H: what happened, who was involved, when, where, why, and how)'' },'),
unistr('        { id: ''P7_SOURCE'', text: ''\D83D\DCD6 WHATSAPP / WEBSITE / EMAIL'' }'),
'    ];',
'    ',
'    // Store the timeout ID for each field',
'    const timeouts = {};',
'    let isAnimationStarted = false;',
'    ',
'    // Function to split a string including emoji',
'    function splitString(str) {',
'        return Array.from(str);',
'    }',
'    ',
'    // Stop the animation for a given field',
'    function stopAnimationForField(fieldId) {',
'        if (timeouts[fieldId]) {',
'            clearTimeout(timeouts[fieldId]);',
'            timeouts[fieldId] = null;',
'        }',
'    }',
'    ',
'    // Start the animation for a given field (single typing pass)',
'    function startAnimationForField(fieldId, text) {',
'        const inputElement = document.getElementById(fieldId);',
'        if (!inputElement) return;',
'        ',
'        // Skip the animation if the field already has a value',
'        if (inputElement.value !== '''') return;',
'        ',
'        // Stop any previous animation',
'        if (timeouts[fieldId]) {',
'            clearTimeout(timeouts[fieldId]);',
'        }',
'        ',
'        const chars = splitString(text);',
'        const totalChars = chars.length;',
'        let index = 0;',
'        ',
'        function typeEffect() {',
'            // Stop the animation if the field already has a value',
'            if (inputElement.value !== '''') {',
'                stopAnimationForField(fieldId);',
'                return;',
'            }',
'            ',
'            if (index <= totalChars) {',
'                if (index === totalChars) {',
'                    // Typing finished, show the full text (no cursor)',
'                    inputElement.setAttribute(''placeholder'', text);',
'                    return;',
'                }',
'                ',
'                // Tampilkan teks sejauh index + cursor',
'                const currentText = chars.slice(0, index + 1).join('''');',
'                inputElement.setAttribute(''placeholder'', currentText + ''|'');',
'                index++;',
'                ',
'                // Kecepatan typing',
'                const speed = 60 + Math.random() * 40;',
'                timeouts[fieldId] = setTimeout(typeEffect, speed);',
'            }',
'        }',
'        ',
'        // Start the animation',
'        typeEffect();',
'    }',
'    ',
'    // Initialize all fields',
'    function initAllFields() {',
'        // Hanya jalankan sekali',
'        if (isAnimationStarted) return;',
'        isAnimationStarted = true;',
'        ',
'        for (const field of fields) {',
'            const element = document.getElementById(field.id);',
'            if (element) {',
'                // Kosongkan placeholder awal',
'                element.setAttribute(''placeholder'', '''');',
'                ',
'                // Add a focus listener (stop the animation when the user clicks)',
'                element.addEventListener(''focus'', function() {',
'                    stopAnimationForField(field.id);',
'                    // Tampilkan placeholder penuh tanpa cursor',
'                    if (this.value === '''') {',
'                        this.setAttribute(''placeholder'', field.text);',
'                    }',
'                });',
'                ',
'                // Add an input listener (stop the animation while typing)',
'                element.addEventListener(''input'', function() {',
'                    stopAnimationForField(field.id);',
'                });',
'            }',
'        }',
'        ',
'        // Start the animation for ALL fields simultaneously',
'        setTimeout(() => {',
'            for (const field of fields) {',
'                const element = document.getElementById(field.id);',
'                if (element && element.value === '''') {',
'                    startAnimationForField(field.id, field.text);',
'                }',
'            }',
'        }, 500);',
'    }',
'    ',
'    // Start all initialization',
'    initAllFields();',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ----------------- Header NavBar ----------------- */',
'.t-Header-nav{',
'    display: none;',
'}',
'.t-NavigationBar-item.icon-only, .t-NavigationBar-item.has-username {',
'    display: none;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ----------------- Global Body (aurora, match app background) ----------------- */',
'body {',
'  background: radial-gradient(1100px 700px at 8% -12%, rgba(45,212,191,0.30), transparent 60%), radial-gradient(1000px 650px at 108% 8%, rgba(34,211,238,0.24), transparent 55%), radial-gradient(900px 900px at 50% 118%, rgba(13,148,136,0.22), transpar'
||'ent 62%), linear-gradient(160deg, #071a1e 0%, #0b2b30 45%, #0d3a3d 100%) !important;',
'  background-attachment: fixed !important;',
'  font-family: system-ui, -apple-system, ''Segoe UI'', Roboto, ''Helvetica Neue'', sans-serif;',
'}',
'.container {',
'  max-width: 1280px;',
'  margin: 0 auto;',
'  padding: 0 20px;',
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
'.t-Breadcrumb-item.is-active .t-Breadcrumb-label {',
'  color: #2dd4bf !important;',
'  font-weight: 700;',
'  text-shadow: 0 0 12px rgba(45,212,191,0.35);',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ============ REGIONS: dark liquid-glass cards (same recipe as the login card) ============ */',
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
'  box-shadow: 0 30px 60px -18px rgba(0,0,0,0.55), inset 0 1px 0 rgba(255,255,255,0.18), 0 0 0 1px rgba(45,212,191,0.08) !important;',
'  padding: 18px !important;',
'  margin-bottom: 20px;',
'  position: relative;',
'  transition: all 0.3s ease;',
'}',
'.t-Region-bodyWrap:hover {',
'  border-color: rgba(45,212,191,0.35) !important;',
'  box-shadow: 0 34px 70px -18px rgba(0,0,0,0.60), inset 0 1px 0 rgba(255,255,255,0.20), 0 0 26px rgba(45,212,191,0.18) !important;',
'}',
'/* Sheen highlight across the top of each glass card */',
'.t-Region-bodyWrap::before {',
'  content: '''';',
'  position: absolute;',
'  top: 0; left: 0; right: 0;',
'  height: 42%;',
'  background: linear-gradient(180deg, rgba(255,255,255,0.08), transparent);',
'  border-radius: 24px 24px 0 0;',
'  pointer-events: none;',
'}',
'.t-Region-body { position: relative; }',
'/* Region header: transparent over the aurora, light glowing title */',
'.t-Region-header {',
'  background: transparent !important;',
'  border-bottom: none !important;',
'  align-items: center;',
'  padding: 12px 4px !important;',
'}',
'.t-Region-header .t-Region-title,',
'.t-Region .t-Region-title {',
'  color: #eafffb !important;',
'  text-shadow: 0 0 14px rgba(45,212,191,0.4);',
'}',
'.form-section-header {',
'  padding: 7px 20px 7px 2px;',
'  background: transparent;',
'  font-size: 16px;',
'  font-weight: 700;',
'  color: #eafffb !important;',
'  text-shadow: 0 0 14px rgba(45,212,191,0.4);',
'  display: flex;',
'  align-items: center;',
'  gap: 8px;',
'}',
'.step-num {',
'  width: 26px;',
'  height: 26px;',
'  background: linear-gradient(135deg, #2dd4bf, #0f766e);',
'  color: white;',
'  border-radius: 50%;',
'  display: flex;',
'  align-items: center;',
'  justify-content: center;',
'  font-size: 14px;',
'  font-weight: 700;',
'  box-shadow: 0 2px 10px rgba(45,212,191,0.45), 0 0 0 3px rgba(45,212,191,0.15);',
'  text-shadow: none;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ============ FORM FIELDS on dark glass: light labels + dark glass inputs ============ */',
'.t-Form-fieldContainer {',
'  margin-bottom: 20px;',
'}',
'.t-Region-bodyWrap .t-Form-label {',
'  font-weight: 600;',
'  color: #a7dcd4 !important;',
'  font-size: 13px;',
'}',
'/* Inputs - dark glass, same recipe as the login inputs */',
'.t-Region-bodyWrap input.text_field,',
'.t-Region-bodyWrap .apex-item-text,',
'.t-Region-bodyWrap textarea.apex-item-textarea,',
'.t-Region-bodyWrap .apex-item-select {',
'  background: rgba(7,26,30,0.50) !important;',
'  -webkit-backdrop-filter: blur(12px);',
'  backdrop-filter: blur(12px);',
'  border: 1px solid rgba(255,255,255,0.16) !important;',
'  border-radius: 14px !important;',
'  padding: 10px 14px;',
'  font-size: 14px;',
'  color: #e2fdf9 !important;',
'  transition: all 0.3s ease !important;',
'}',
'.t-Region-bodyWrap input.text_field::placeholder,',
'.t-Region-bodyWrap .apex-item-text::placeholder,',
'.t-Region-bodyWrap textarea.apex-item-textarea::placeholder {',
'  color: rgba(148,183,178,0.75) !important;',
'}',
'.t-Region-bodyWrap input.text_field:hover,',
'.t-Region-bodyWrap .apex-item-text:hover,',
'.t-Region-bodyWrap textarea.apex-item-textarea:hover {',
'  border-color: rgba(45,212,191,0.45) !important;',
'}',
'.t-Region-bodyWrap input.text_field:focus,',
'.t-Region-bodyWrap .apex-item-text:focus,',
'.t-Region-bodyWrap textarea.apex-item-textarea:focus {',
'  border-color: #2dd4bf !important;',
'  box-shadow: 0 0 0 4px rgba(45,212,191,0.15), 0 0 18px rgba(45,212,191,0.25) !important;',
'  outline: none !important;',
'  background: rgba(10,34,38,0.62) !important;',
'}',
'/* Required indicator + inline error on dark glass */',
'.t-Form-itemRequired {',
'  color: rgba(226,253,249,0.55) !important;',
'}',
'.t-Form-itemRequired-marker {',
'  background: #f87171;',
'  border-radius: 4px;',
'}',
'.a-Form-error {',
'  color: #fda4af !important;',
'}',
'/* Inline help (upload notes) on dark glass */',
'.t-Form-inlineHelp, .t-Form-inlineHelp em, .t-Form-inlineHelp p {',
'  color: rgba(203,236,231,0.78) !important;',
'}',
'.t-Form-inlineHelp b {',
'  color: #7df3e1 !important;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ----------------- Help Button + Help Popup ----------------- */',
'.t-Form-labelContainer {',
'  position: relative;',
'  display: flex;',
'  align-items: center;',
'  gap: 6px;',
'  flex-wrap: wrap;',
'}',
'.t-Form-helpButton {',
'  margin: 0;',
'  padding: 0;',
'  background: transparent;',
'  border: none;',
'  cursor: pointer;',
'  transition: all 0.2s ease;',
'}',
'.t-Form-helpButton .icon-help {',
'  font-size: 14px;',
'  color: rgba(167,220,212,0.6);',
'  transition: all 0.2s ease;',
'}',
'.t-Form-helpButton:hover .icon-help {',
'  color: #2dd4bf;',
'  transform: scale(1.1);',
'}',
'/* Help popup - dark glass like the card */',
'.a-Popup--help {',
'  max-width: 360px;',
'  border-radius: 16px;',
'  box-shadow: 0 20px 40px -12px rgba(0,0,0,0.55);',
'  border: 1px solid rgba(255,255,255,0.18) !important;',
'  background: linear-gradient(160deg, rgba(13,42,45,0.85), rgba(7,24,28,0.92)) !important;',
'  -webkit-backdrop-filter: blur(24px) saturate(1.5);',
'  backdrop-filter: blur(24px) saturate(1.5);',
'}',
'.a-Popup--help .a-Popup-content {',
'  padding: 16px;',
'}',
'.a-Popup--help p {',
'  margin: 0 0 8px 0;',
'  font-size: 13px;',
'  line-height: 1.5;',
'  color: rgba(226,253,249,0.85) !important;',
'}',
'.a-Popup--help strong {',
'  color: #7df3e1 !important;',
'}',
'.a-Popup--help i {',
'  color: rgba(167,220,212,0.7) !important;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ----------------- Info Banner (dark liquid glass, matches regions) ----------------- */',
'.info-banner {',
'  background: linear-gradient(160deg, rgba(13,42,45,0.50), rgba(7,24,28,0.66));',
'  -webkit-backdrop-filter: blur(28px) saturate(1.6);',
'  backdrop-filter: blur(28px) saturate(1.6);',
'  border: 1px solid rgba(255,255,255,0.16);',
'  box-shadow: inset 0 1px 0 rgba(255,255,255,0.18);',
'  border-radius: 24px;',
'  padding: 24px 28px;',
'  margin-bottom: 24px;',
'  display: flex;',
'  align-items: flex-start;',
'  gap: 16px;',
'  color: white;',
'  position: relative;',
'  overflow: hidden;',
'  animation: fadeIn 0.6s ease-out;',
'}',
'.info-banner::before {',
'  content: '''';',
'  position: absolute;',
'  top: 0;',
'  left: 0;',
'  right: 0;',
'  bottom: 0;',
'  background-image: radial-gradient(rgba(255,255,255,0.08) 1px, transparent 1px);',
'  background-size: 24px 24px;',
'  pointer-events: none;',
'}',
'.info-banner-icon {',
'  font-size: 40px;',
'  flex-shrink: 0;',
'  margin-top: 4px;',
'  animation: float 4s ease-in-out infinite;',
'}',
'.info-banner h2 {',
'  font-size: 20px;',
'  font-weight: 700;',
'  margin-bottom: 8px;',
'  color: #eafffb;',
'  text-shadow: 0 0 14px rgba(45,212,191,0.35);',
'}',
'.info-banner p {',
'  font-size: 13px;',
'  line-height: 1.7;',
'  opacity: .9;',
'}',
'.info-banner .chips {',
'  display: flex;',
'  gap: 8px;',
'  flex-wrap: wrap;',
'  margin-top: 12px;',
'}',
'.info-banner .chip {',
'  background: rgba(255,255,255,.12);',
'  border: 1px solid rgba(255,255,255,.25);',
'  color: rgba(255,255,255,.9);',
'  font-size: 11px;',
'  padding: 3px 10px;',
'  border-radius: 12px;',
'}',
'@keyframes fadeIn {',
'  from { opacity: 0; }',
'  to { opacity: 1; }',
'}',
'@keyframes float {',
'  0% { transform: translateY(0px); }',
'  50% { transform: translateY(-5px); }',
'  100% { transform: translateY(0px); }',
'}',
'/* Chips hover */',
'.chip {',
'  transition: all 0.3s ease-in-out;',
'  cursor: default;',
'  position: relative;',
'  background: rgba(255,255,255,0.12);',
'  border: 1px solid rgba(255,255,255,0.3);',
'  color: rgba(255,255,255,0.9);',
'  font-size: 12px;',
'  padding: 4px 12px;',
'  border-radius: 20px;',
'  backdrop-filter: blur(4px);',
'}',
'.chip:hover {',
'  background: linear-gradient(135deg, rgba(34, 211, 238, 0.2), rgba(45, 212, 191, 0.2));',
'  border: 1px solid rgba(34, 211, 238, 0.6);',
'  box-shadow: 0 8px 20px rgba(34, 211, 238, 0.3), 0 0 0 1px rgba(45, 212, 191, 0.2);',
'  color: white;',
'  text-shadow: 0 0 4px rgba(45, 212, 191, 0.5);',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ----------------- Buttons ----------------- */',
'#create_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    background: linear-gradient(135deg, #2dd4bf, #0f766e) !important;',
'    border: 1px solid rgba(255,255,255,0.25) !important;',
'    color: #ffffff;',
'    transition: all 0.3s ease;',
'    box-shadow: 0 4px 15px rgba(45,212,191,0.3);',
'}',
'#create_button .t-Icon {',
'    opacity: 0;',
'    transform: scale(0);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'#create_button:hover {',
'    background: linear-gradient(135deg, #5eead4, #0d9488) !important;',
'    transform: translateY(-2px);',
'    box-shadow: 0 8px 25px rgba(45,212,191,0.5), 0 0 24px rgba(34,211,238,0.25);',
'}',
'#create_button:hover .t-Icon {',
'    opacity: 1;',
'    transform: scale(1);',
'}',
'#create_button .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'#create_button:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'/* Cancel button - ghost glass (like the landing-page button on login) */',
'#cancel_button {',
'    background: rgba(255,255,255,0.06) !important;',
'    -webkit-backdrop-filter: blur(8px);',
'    backdrop-filter: blur(8px);',
'    border: 1px solid rgba(255,255,255,0.22) !important;',
'    color: #b9d9d4 !important;',
'    transition: all 0.3s ease;',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    box-shadow: 0 4px 12px rgba(2,24,26,0.3);',
'}',
'#cancel_button .t-Icon {',
'    opacity: 0;',
'    transform: scale(0);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'#cancel_button:hover {',
'    background: rgba(45,212,191,0.12) !important;',
'    border-color: #2dd4bf !important;',
'    color: #2dd4bf !important;',
'    transform: translateY(-2px);',
'    box-shadow: 0 8px 20px rgba(2,24,26,0.4);',
'}',
'#cancel_button:hover .t-Icon {',
'    opacity: 1;',
'    transform: scale(1);',
'}',
'#cancel_button .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'#cancel_button:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ----------------- File Upload Dropzone (dark liquid glass) ----------------- */',
'.a-FileDrop.a-FileDrop--dropzone {',
'    background: rgba(7,26,30,0.45) !important;',
'    -webkit-backdrop-filter: blur(16px) saturate(1.4) !important;',
'    backdrop-filter: blur(16px) saturate(1.4) !important;',
'    border: 2px dashed rgba(45,212,191,0.40) !important;',
'    border-radius: 20px !important;',
'    transition: all 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94);',
'    position: relative;',
'    overflow: hidden;',
'}',
'.a-FileDrop.a-FileDrop--dropzone::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    right: 0;',
'    bottom: 0;',
'    background:',
'        radial-gradient(circle at 30% 30%, rgba(34, 211, 238, 0.12) 0%, transparent 50%),',
'        radial-gradient(circle at 70% 70%, rgba(45, 212, 191, 0.12) 0%, transparent 50%);',
'    opacity: 0;',
'    transition: opacity 0.3s ease;',
'    border-radius: 18px;',
'}',
'.a-FileDrop.a-FileDrop--dropzone:hover::before {',
'    opacity: 1;',
'}',
'.a-FileDrop.a-FileDrop--dropzone:hover {',
'    background: rgba(10,34,38,0.60) !important;',
'    border-color: rgba(34, 211, 238, 0.65) !important;',
'    transform: translateY(-2px);',
'    box-shadow: 0 12px 40px rgba(34, 211, 238, 0.18);',
'}',
'.a-FileDrop-heading {',
'    color: #eafffb !important;',
'    font-weight: 600 !important;',
'    font-size: 1.2em !important;',
'}',
'.a-FileDrop-description {',
'    color: rgba(167,220,212,0.75) !important;',
'    font-size: 0.95em !important;',
'}',
'.a-FileDrop-action-choose.a-Button.a-Button--hot {',
'    background: linear-gradient(135deg, #0f766e, #34d399) !important;',
'    border: 1px solid rgba(255,255,255,0.3) !important;',
'    border-radius: 16px !important;',
'    color: white !important;',
'    font-weight: 600 !important;',
'    padding: 12px 24px !important;',
'    transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1) !important;',
'    position: relative;',
'    overflow: hidden;',
'}',
'.a-FileDrop-action-choose.a-Button.a-Button--hot::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: -100%;',
'    width: 100%;',
'    height: 100%;',
'    background: linear-gradient(90deg,',
'        transparent,',
'        rgba(255, 255, 255, 0.3),',
'        transparent);',
'    transition: left 0.6s ease;',
'}',
'.a-FileDrop-action-choose.a-Button.a-Button--hot:hover::before {',
'    left: 100%;',
'}',
'.a-FileDrop-action-choose.a-Button.a-Button--hot:hover {',
'    transform: translateY(-2px) scale(1.05);',
'    box-shadow:',
'        0 8px 25px rgba(34, 211, 238, 0.4),',
'        0 4px 15px rgba(45, 212, 191, 0.3);',
'    background: linear-gradient(135deg, #14b8a6, #22d3ee) !important;',
'}',
'.a-FileDrop-progressbar {',
'    background: linear-gradient(90deg, #0f766e, #34d399) !important;',
'    border-radius: 10px !important;',
'    height: 4px !important;',
'    position: relative;',
'    overflow: hidden;',
'}',
'.a-FileDrop-progressbar::after {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: -100%;',
'    width: 100%;',
'    height: 100%;',
'    background: linear-gradient(90deg,',
'        transparent,',
'        rgba(255, 255, 255, 0.6),',
'        transparent);',
'    animation: progressShimmer 2s ease-in-out infinite;',
'}',
'@keyframes progressShimmer {',
'    0% {',
'        left: -100%;',
'    }',
'    100% {',
'        left: 100%;',
'    }',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ----------------- Custom Scrollbar (dark neon) ----------------- */',
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
'/* ----------------- Responsive Tweaks ----------------- */',
'@media (max-width: 768px) {',
'  .info-banner {',
'    flex-direction: column;',
'    text-align: center;',
'    padding: 20px;',
'  }',
'',
'  .info-banner-icon {',
'    margin: 0 auto;',
'  }',
'',
'  .info-banner .chips {',
'    justify-content: center;',
'  }',
'',
'  .t-Region-bodyWrap {',
'    padding: 10px !important;',
'  }',
'',
'  .form-section-header {',
'    font-size: 14px;',
'  }',
'',
'  .step-num {',
'    width: 22px;',
'    height: 22px;',
'    font-size: 12px;',
'  }',
'',
'  #P7_TELP_PELAPOR_CONTAINER {',
'    margin-left: 0;',
'  }',
'',
'  .t-Form-labelContainer {',
'    flex-wrap: wrap;',
'  }',
'',
'  .t-Form-helpButton {',
'    margin-left: auto;',
'  }',
'}',
'@media (max-width: 480px) {',
'  .info-banner h2 {',
'    font-size: 18px;',
'  }',
'',
'  .info-banner p {',
'    font-size: 12px;',
'  }',
'',
'  .t-Button-label {',
'    font-size: 13px;',
'  }',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* -------------------------------------------------------------------------------------------- */',
'/* ----------------- Page 7 specifics ----------------- */',
'.t-Form-itemRequired {',
'    display: none !important;',
'}',
'.icon-help {',
'    margin-top: 0;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------- POPUP LOV item (P7_SOURCE) - dark glass ------------------- */',
'.apex-item-group--popup-lov {',
'    display: flex;',
'    align-items: stretch;',
'    background: rgba(7,26,30,0.50) !important;',
'    -webkit-backdrop-filter: blur(10px);',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(255,255,255,0.16) !important;',
'    border-radius: 12px !important;',
'    overflow: hidden;',
'    transition: all 0.2s ease;',
'}',
'.apex-item-group--popup-lov input.apex-item-popup-lov {',
'    flex: 1;',
'    border: none !important;',
'    padding: 12px 14px;',
'    font-size: 14px;',
'    background: transparent !important;',
'    color: #e2fdf9 !important;',
'}',
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
'.apex-item-group--popup-lov:focus-within {',
'    border-color: #2dd4bf !important;',
'    box-shadow: 0 0 0 2px rgba(45, 212, 191, 0.3), 0 0 16px rgba(45,212,191,0.2);',
'}',
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
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14346268638004298498)
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
 p_id=>wwv_flow_imp.id(14411528314596826290)
,p_plug_name=>'Buttons Container'
,p_static_id=>'buttons-container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(14344340113263909407)
,p_plug_display_sequence=>90
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14411532407719826331)
,p_plug_name=>'<div class="form-section-header"><span class="step-num"> 1 </span> Reporter Details </div>'
,p_static_id=>'div-class-form-section-header-span-class-step-num-1-span-reporter-details-div'
,p_parent_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14411532599530826333)
,p_plug_name=>'<div class="form-section-header"><span class="step-num"> 2 </span> Reported Party Details </div>'
,p_static_id=>'div-class-form-section-header-span-class-step-num-2-span-reported-party-details-div'
,p_parent_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14411560744821227484)
,p_plug_name=>'<div class="form-section-header"><span class="step-num"> 3 </span> Incident Chronology </div>'
,p_static_id=>'div-class-form-section-header-span-class-step-num-3-span-incident-chronology-div'
,p_parent_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14411560803246227485)
,p_plug_name=>'<div class="form-section-header"><span class="step-num"> 4 </span> Supporting Evidence </div>'
,p_static_id=>'div-class-form-section-header-span-class-step-num-4-span-supporting-evidence-div'
,p_parent_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14411528681921826293)
,p_plug_name=>'Form'
,p_static_id=>'form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344337289386909406)
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       STATUS,',
'       NOMOR_LAPORAN,',
'       NAMA_PELAPOR,',
'       TELP_PELAPOR,',
'       EMAIL_PELAPOR,',
'       JABATAN_PELAPOR,',
'       NAMA_TERLAPOR,',
'       JABATAN_TERLAPOR,',
'       WAKTU_KEJADIAN,',
'       LOKASI_KEJADIAN,',
'       KRONOLOGIS_KEJADIAN,',
'       NOMINAL,',
'       dbms_lob.getlength(file_blob) as UPLOAD,',
'       FILE_NAME,',
'       PIC,',
'       MIME_TYPE',
'  from XTD_WBS'))
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14411528270822826289)
,p_plug_name=>'Info Banner'
,p_static_id=>'info-banner'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="info-banner">',
unistr('    <div class="info-banner-icon">\D83D\DCE2</div>'),
'    <div>',
'      <h2>Witnessed wrongdoing? Do not hesitate to speak up!</h2>',
'      <!-- <p>Use this form to report suspected violations, fraud, or unethical conduct within the company. ',
'        To follow up on your report, please include your name, contact number, and a reachable email address. Your identity is guaranteed to remain confidential.</p> -->',
'      <p>Provide accurate, complete, and clear information to help us process your report. ',
'        Your identity will be kept confidential in accordance with company policy.</p>',
'      <div class="chips">',
unistr('        <span class="chip">\D83D\DD12 Confidential</span>'),
unistr('        <span class="chip">\2696\FE0F Independent</span>'),
unistr('        <span class="chip">\D83D\DEAB Impartial</span>'),
unistr('        <span class="chip">\D83D\DEE1\FE0F Whistleblower Protection</span>'),
'      </div>',
'    </div>',
'  </div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14346255124070298490)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14411528314596826290)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_button_static_id=>'cancel_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,7,1::'
,p_icon_css_classes=>'fa-times-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14346254694426298487)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14411528314596826290)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_button_static_id=>'create_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Report'
,p_button_position=>'CREATE'
,p_confirm_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The reporter identity and the information provided are guaranteed to remain <b>confidential</b> and <b>protected</b>. ',
'<br>',
'<br>',
'Thank you for using WBS and supporting our efforts ',
'to build a better company. ',
'<br>',
'<br>',
'<b>Are you sure the information provided is correct?</b>'))
,p_confirm_style=>'information'
,p_icon_css_classes=>'fa-send-o'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14346273633014298501)
,p_branch_name=>'Go back to Page 1 (Home Page)'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,7,1::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14346254694426298487)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14347140000885197365)
,p_name=>'P7_CURRENT_YEAR'
,p_item_sequence=>60
,p_item_default=>'SELECT TO_CHAR(SYSDATE, ''YYYY'') FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411538209135826328)
,p_name=>'P7_EMAIL_PELAPOR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(14411532407719826331)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_prompt=>'Reporter Email'
,p_placeholder=>'A valid and accessible email address (e.g. name@domain.com)'
,p_source=>'EMAIL_PELAPOR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1020
,p_field_template=>wwv_flow_imp.id(14344475460481909491)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_is_persistent=>'N'
,p_help_text=>'<p style="position: relative; max-width: 532px; margin-right: 60px;">An email address is required because we will follow up on the report through two-way communication.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411534880338826337)
,p_name=>'P7_FILE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_source=>'FILE_NAME'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411533309862826321)
,p_name=>'P7_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411567984102227496)
,p_name=>'P7_JABATAN_PELAPOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(14411532407719826331)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_prompt=>'Relationship with the Company'
,p_placeholder=>'For example: employee, vendor, customer, or other party'
,p_source=>'JABATAN_PELAPOR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474535539909490)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411542259356826333)
,p_name=>'P7_JABATAN_TERLAPOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(14411532599530826333)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_prompt=>'Accused Position'
,p_placeholder=>'Position/role of the reported person (e.g. Staff, Supervisor, Vendor, etc.)'
,p_source=>'JABATAN_TERLAPOR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474535539909490)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411544165936826337)
,p_name=>'P7_KRONOLOGIS_KEJADIAN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(14411560744821227484)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_prompt=>'Detailed Incident Chronology'
,p_placeholder=>'Describe the sequence of events in detail (5W1H: what happened, who was involved, when, where, why, and how)'
,p_source=>'KRONOLOGIS_KEJADIAN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>62.5
,p_cMaxlength=>4000
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(14344474535539909490)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411544129420826336)
,p_name=>'P7_LOKASI_KEJADIAN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(14411560744821227484)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_prompt=>'Incident Location'
,p_placeholder=>'Example: City X Branch, Department X'
,p_source=>'LOKASI_KEJADIAN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344475460481909491)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411534840405826336)
,p_name=>'P7_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_source=>'MIME_TYPE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411537939936826326)
,p_name=>'P7_NAMA_PELAPOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14411532407719826331)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_prompt=>'Reporter Name'
,p_placeholder=>'Enter the reporter name'
,p_source=>'NAMA_PELAPOR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_imp.id(14344474535539909490)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411542169854826332)
,p_name=>'P7_NAMA_TERLAPOR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(14411532599530826333)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_prompt=>'Accused Name'
,p_placeholder=>'Full name of the reported person'
,p_source=>'NAMA_TERLAPOR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_imp.id(14344475460481909491)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411533462941826323)
,p_name=>'P7_NOMOR_LAPORAN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_source=>'NOMOR_LAPORAN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411534724616826335)
,p_name=>'P7_PIC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_source=>'PIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346971047713915729)
,p_name=>'P7_SOURCE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(14411532407719826331)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_prompt=>'Reporting Channel Source'
,p_placeholder=>unistr('\D83D\DCD6 WHATSAPP / WEBSITE / EMAIL')
,p_source=>'NAMA_PELAPOR'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT display_value, return_value',
'FROM (',
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
,p_cSize=>50
,p_field_template=>wwv_flow_imp.id(14344475460481909491)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(14411533418843826322)
,p_name=>'P7_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_source=>'STATUS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14347139738421195635)
,p_name=>'P7_SUBMITTED_DATE'
,p_item_sequence=>50
,p_item_default=>'SELECT TO_CHAR(SYSDATE, ''DD-MON-YYYY'') FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411538103658826327)
,p_name=>'P7_TELP_PELAPOR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(14411532407719826331)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_prompt=>'Reporter Phone (+62)'
,p_placeholder=>'Example: 8xxxxxxxxxx'
,p_source=>'TELP_PELAPOR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344475460481909491)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_is_persistent=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; align-items: flex-start; gap: 12px; margin-top: 8px;">',
'  <div style="background: linear-gradient(135deg, #0d9488, #134e4a); border-radius: 12px; padding: 6px 14px; color: white; font-weight: 700; font-size: 16px; box-shadow: 0 2px 8px rgba(13,148,136,0.3);">',
'    +62',
'  </div>',
'  <div style="flex: 1;">',
'    <p style="margin: 0 0 4px 0; font-size: 12px; color: #64748b;">',
'      <i>Input example: <strong>81234567890</strong></i>',
'    </p>',
'    <p style="margin: 0; font-size: 12px; color: #475569; background: #f1f5f9; padding: 8px 12px; border-radius: 10px; border-left: 3px solid #0d9488;">',
unistr('      \D83D\DCDE A phone number is required because we will follow up on the report through two-way communication.'),
'    </p>',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411546594826826340)
,p_name=>'P7_UPLOAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(14411560803246227485)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_source=>'UPLOAD'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_icon_css_classes=>'-'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><em>Please upload any relevant supporting evidence (documents, data, photos, chat screenshots, and audio/video recordings) to strengthen the report. ',
'Sufficient evidence helps speed up verification and investigation. The maximum file size is 8 MB.</em></p>',
'',
'<!-- <p><em>The maximum file size for files to be uploaded is 8 MB.</em></p> -->'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_copy_paste', 'N',
  'allow_multiple_files', 'Y',
  'display_as', 'DROPZONE_BLOCK',
  'dropzone_title', unistr('\D83D\DCCEDrag or Drop to Upload Files'),
  'max_file_size', '8192',
  'purge_file_at', 'REQUEST',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14411544026897826335)
,p_name=>'P7_WAKTU_KEJADIAN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(14411560744821227484)
,p_item_source_plug_id=>wwv_flow_imp.id(14411528681921826293)
,p_prompt=>'Incident Date (Date or Period)'
,p_placeholder=>'When the incident occurred (e.g. January 2024)'
,p_source=>'WAKTU_KEJADIAN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_imp.id(14344475460481909491)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14346269978780298499)
,p_validation_name=>'Email must have domain'
,p_static_id=>'email-must-have-domain'
,p_validation_sequence=>20
,p_validation=>'P7_EMAIL_PELAPOR'
,p_validation2=>'^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Invalid email address'
,p_associated_item=>wwv_flow_imp.id(14411538209135826328)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14346269557914298499)
,p_validation_name=>'Phone Number Format'
,p_static_id=>'phone-number-format'
,p_validation_sequence=>10
,p_validation=>'P7_TELP_PELAPOR'
,p_validation2=>'^8[0-9]{6,12}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Invalid reporter phone number. It must start with the digit ''8'' and contain 8-12 digits.'
,p_associated_item=>wwv_flow_imp.id(14411538103658826327)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346259603186298493)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(14411528681921826293)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Report Submission Form'
,p_static_id=>'initialize-form-report-submission-form'
,p_internal_uid=>66717723629856777
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346270636298298499)
,p_process_sequence=>20
,p_parent_process_id=>wwv_flow_imp.id(14346270181654298499)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Form WBS'
,p_static_id=>'process-form-wbs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_blob_content BLOB;',
'    v_mime_type VARCHAR2(255);',
'    v_file_name VARCHAR2(500);',
'    v_nomor_laporan VARCHAR2(100);',
'BEGIN',
'    -- Generate NOMOR_LAPORAN',
'    SELECT XTD_WBS_NO.NEXTVAL || ''/IVC/'' || TO_CHAR(SYSDATE, ''RM'') || ''/'' || TO_CHAR(SYSDATE, ''YYYY'')',
'    INTO v_nomor_laporan',
'    FROM DUAL;',
'    ',
'    IF :P7_UPLOAD IS NOT NULL THEN',
'        SELECT BLOB_CONTENT, MIME_TYPE, FILENAME',
'        INTO v_blob_content, v_mime_type, v_file_name',
'        FROM APEX_APPLICATION_TEMP_FILES',
'        WHERE name = :P7_UPLOAD;',
'        ',
'        INSERT INTO XTD_WBS (',
'            ID,',
'            NAMA_PELAPOR,',
'            TELP_PELAPOR,',
'            EMAIL_PELAPOR,',
'            TINDAKAN,',
'            NAMA_TERLAPOR,',
'            JABATAN_TERLAPOR,',
'            WAKTU_KEJADIAN,',
'            LOKASI_KEJADIAN,',
'            KRONOLOGIS_KEJADIAN,',
'            -- NOMINAL,',
'            FILE_BLOB,',
'            MIME_TYPE,',
'            FILE_NAME,',
'            STATUS,',
'            NOMOR_LAPORAN,',
'            PIC',
'        ) VALUES (',
'            XTD_WBS_NO.NEXTVAL,',
'            :P7_NAMA_PELAPOR,',
'            ''+62 '' || :P7_TELP_PELAPOR,',
'            :P7_EMAIL_PELAPOR,',
'            NULL,',
'            :P7_NAMA_TERLAPOR,',
'            :P7_JABATAN_TERLAPOR,',
'            :P7_WAKTU_KEJADIAN,',
'            :P7_LOKASI_KEJADIAN,',
'            :P7_KRONOLOGIS_KEJADIAN,',
'            -- :P7_NOMINAL,',
'            v_blob_content,',
'            v_mime_type,',
'            v_file_name,',
'            :P7_STATUS,',
'            v_nomor_laporan,',
'            :APP_USER',
'        ) RETURNING ID INTO :P7_ID;',
'        ',
'        -- Delete temporary file',
'        DELETE FROM APEX_APPLICATION_TEMP_FILES WHERE name = :P7_UPLOAD;',
'        ',
'    ELSE',
'        -- Insert without file',
'        INSERT INTO XTD_WBS (',
'            ID,',
'            NAMA_PELAPOR,',
'            TELP_PELAPOR,',
'            EMAIL_PELAPOR,',
'            TINDAKAN,',
'            NAMA_TERLAPOR,',
'            JABATAN_TERLAPOR,',
'            WAKTU_KEJADIAN,',
'            LOKASI_KEJADIAN,',
'            KRONOLOGIS_KEJADIAN,',
'            -- NOMINAL,',
'            FILE_BLOB,',
'            MIME_TYPE,',
'            FILE_NAME,',
'            STATUS,',
'            NOMOR_LAPORAN,',
'            PIC',
'        ) VALUES (',
'            XTD_WBS_NO.NEXTVAL,',
'            :P7_NAMA_PELAPOR,',
'            ''+62 '' || :P7_TELP_PELAPOR,',
'            :P7_EMAIL_PELAPOR,',
'            NULL,',
'            :P7_NAMA_TERLAPOR,',
'            :P7_JABATAN_TERLAPOR,',
'            :P7_WAKTU_KEJADIAN,',
'            :P7_LOKASI_KEJADIAN,',
'            :P7_KRONOLOGIS_KEJADIAN,',
'            -- :P7_NOMINAL,',
'            NULL,',
'            NULL,',
'            NULL,',
'            :P7_STATUS,',
'            v_nomor_laporan,',
'            :APP_USER',
'        ) RETURNING ID INTO :P7_ID;',
'        ',
'    END IF;',
'    ',
'    :P7_NOMOR_LAPORAN := v_nomor_laporan;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        IF :P7_UPLOAD IS NOT NULL THEN',
'            DELETE FROM APEX_APPLICATION_TEMP_FILES WHERE name = :P7_UPLOAD;',
'        END IF;',
'        RAISE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(14346254694426298487)
,p_process_success_message=>'Your report has been created and submitted successfully.'
,p_required_patch=>wwv_flow_imp.id(14344300039949909298)
,p_internal_uid=>66728756741856783
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346272246410298500)
,p_process_sequence=>30
,p_parent_process_id=>wwv_flow_imp.id(14346270181654298499)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Form WBS (rev.)'
,p_static_id=>'process-form-wbs-rev'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_blob_content BLOB;',
'    v_mime_type VARCHAR2(255);',
'    v_file_name VARCHAR2(500);',
'    v_nomor_laporan VARCHAR2(100);',
'    v_wbs_id NUMBER;',
'    v_temp_name VARCHAR2(2000);',
'    v_file_count NUMBER;',
'BEGIN',
'    -- SELECT XTD_WBS_NO.NEXTVAL || ''/IVC/'' || TO_CHAR(SYSDATE, ''RM'') || ''/'' || TO_CHAR(SYSDATE, ''YYYY'')',
'    -- INTO v_nomor_laporan',
'    -- FROM DUAL;',
'    ',
'    SELECT ''IVC/'' || TO_CHAR(SYSDATE, ''YYYY'') || ''/'' || LPAD(TO_CHAR(XTD_WBS_NO.NEXTVAL), 4, ''0'')',
'    INTO v_nomor_laporan',
'    FROM DUAL;',
'',
'    INSERT INTO XTD_WBS (',
'        ID,',
'        NAMA_PELAPOR,',
'        TELP_PELAPOR,',
'        EMAIL_PELAPOR,',
'        TINDAKAN,',
'        NAMA_TERLAPOR,',
'        JABATAN_TERLAPOR,',
'        WAKTU_KEJADIAN,',
'        LOKASI_KEJADIAN,',
'        KRONOLOGIS_KEJADIAN,',
'        FILE_BLOB,',
'        MIME_TYPE,',
'        FILE_NAME,',
'        STATUS,',
'        NOMOR_LAPORAN,',
'        SOURCE',
'    ) VALUES (',
'        XTD_WBS_NO.NEXTVAL,',
'        :P7_NAMA_PELAPOR,',
'        ''+62 '' || :P7_TELP_PELAPOR,',
'        :P7_EMAIL_PELAPOR,',
'        NULL,',
'        :P7_NAMA_TERLAPOR,',
'        :P7_JABATAN_TERLAPOR,',
'        :P7_WAKTU_KEJADIAN,',
'        :P7_LOKASI_KEJADIAN,',
'        :P7_KRONOLOGIS_KEJADIAN,',
'        NULL, -- FILE_BLOB',
'        NULL, -- MIME_TYPE',
'        NULL, -- FILE_NAME',
'        ''RECEIVED'',',
'        v_nomor_laporan,',
'        :P7_SOURCE',
'    ) RETURNING ID INTO v_wbs_id;',
'    ',
'    :P7_ID := v_wbs_id;',
'    :P7_NOMOR_LAPORAN := v_nomor_laporan;',
'    ',
'    -- Handle multiple file uploads',
'    -- Option 1: using APEX native multiple file upload (colon separated values: ''file1,file2,file3'')',
'    IF :P7_UPLOAD IS NOT NULL AND :P7_UPLOAD != ''[]'' THEN',
'        ',
'        IF :P7_UPLOAD LIKE ''{%'' OR :P7_UPLOAD LIKE ''[%'' THEN',
'            -- Parse JSON array (for APEX 22.2+)',
'            FOR rec IN (',
'                SELECT ',
'                    JSON_VALUE(value, ''$.name'') AS temp_name',
'                FROM JSON_TABLE(:P7_UPLOAD, ''$[*]'' COLUMNS (value VARCHAR2(4000) PATH ''$''))',
'            ) LOOP',
'                SELECT BLOB_CONTENT, MIME_TYPE, FILENAME',
'                INTO v_blob_content, v_mime_type, v_file_name',
'                FROM APEX_APPLICATION_TEMP_FILES',
'                WHERE name = rec.temp_name;',
'                ',
'                INSERT INTO XTD_WBS_BLOB (',
'                    FILE_NAME,',
'                    FILE_MIME_TYPE,',
'                    FILE_BLOB_DATED,',
'                    FILE_BLOB,',
'                    WBS_ID',
'                ) VALUES (',
'                    v_file_name,',
'                    v_mime_type,',
'                    SYSDATE,',
'                    v_blob_content,',
'                    v_wbs_id',
'                );',
'                ',
'                DELETE FROM APEX_APPLICATION_TEMP_FILES WHERE name = rec.temp_name;',
'            END LOOP;',
'        ELSE',
'            -- Option 2: using colon separated values (e.g. ''name1:name2:name3'')',
'            FOR rec IN (',
'                SELECT COLUMN_VALUE AS temp_name',
'                FROM TABLE(APEX_STRING.split(:P7_UPLOAD, '':''))',
'                WHERE COLUMN_VALUE IS NOT NULL',
'            ) LOOP',
'                BEGIN',
'                    SELECT BLOB_CONTENT, MIME_TYPE, FILENAME',
'                    INTO v_blob_content, v_mime_type, v_file_name',
'                    FROM APEX_APPLICATION_TEMP_FILES',
'                    WHERE name = rec.temp_name;',
'                    ',
'                    INSERT INTO XTD_WBS_BLOB (',
'                        FILE_NAME,',
'                        FILE_MIME_TYPE,',
'                        FILE_BLOB_DATED,',
'                        FILE_BLOB,',
'                        WBS_ID',
'                    ) VALUES (',
'                        v_file_name,',
'                        v_mime_type,',
'                        SYSDATE,',
'                        v_blob_content,',
'                        v_wbs_id',
'                    );',
'                    ',
'                    DELETE FROM APEX_APPLICATION_TEMP_FILES WHERE name = rec.temp_name;',
'                EXCEPTION',
'                    WHEN NO_DATA_FOUND THEN',
'                        CONTINUE;',
'                END;',
'            END LOOP;',
'        END IF;',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        -- IF :P7_UPLOAD IS NOT NULL THEN',
'        --     IF :P7_UPLOAD LIKE ''{%'' OR :P7_UPLOAD LIKE ''[%'' THEN',
'        --         -- If JSON array',
'        --         FOR rec IN (',
'        --             SELECT JSON_VALUE(value, ''$.name'') AS temp_name',
'        --             FROM JSON_TABLE(:P7_UPLOAD, ''$[*]'' COLUMNS (value VARCHAR2(4000) PATH ''$''))',
'        --         ) LOOP',
'        --             DELETE FROM APEX_APPLICATION_TEMP_FILES WHERE name = rec.temp_name;',
'        --         END LOOP;',
'        --     ELSE',
'        --         -- If single or colon separated',
'        --         FOR rec IN (',
'        --             SELECT COLUMN_VALUE AS temp_name',
'        --             FROM TABLE(APEX_STRING.split(:P7_UPLOAD, '':''))',
'        --             WHERE COLUMN_VALUE IS NOT NULL',
'        --         ) LOOP',
'        --             DELETE FROM APEX_APPLICATION_TEMP_FILES WHERE name = rec.temp_name;',
'        --         END LOOP;',
'        --     END IF;',
'        -- END IF;',
'        NULL;',
'        RAISE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(14346254694426298487)
,p_process_success_message=>'Your report has been created and submitted successfully.'
,p_internal_uid=>66730366853856784
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14347140588242202512)
,p_process_sequence=>50
,p_parent_process_id=>wwv_flow_imp.id(14346270181654298499)
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Send Email to Administrator'
,p_static_id=>'send-email-to-administrator'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'bcc', '&P0_EMAIL_TO.',
  'email_template_id', wwv_flow_imp.id(14345142470302266107),
  'from', '&P0_EMAIL_FROM.',
  'placeholder_values', '{"REPORT_NUMBER":"&P7_NOMOR_LAPORAN.","REPORTER_NAME":"&P7_NAMA_PELAPOR.","REPORTER_EMAIL":"&P7_EMAIL_PELAPOR.","ACCUSED_NAME":"&P7_NAMA_TERLAPOR.","ACCUSED_POSITION":"&P7_JABATAN_TERLAPOR.","INCIDENT_DATE":"&P7_WAKTU_KEJADIAN.","INCIDENT_LOCATION":"'
||'&P7_LOKASI_KEJADIAN.","KRONOLOGI_SUMMARY":"&P7_KRONOLOGIS_KEJADIAN.","ATTACHMENT_STATUS":"&P7_STATUS.","APP_URL":"&P0_LOGIN_LINK.","CURRENT_YEAR":"&P7_CURRENT_YEAR."}',
  'send_immediately', 'N',
  'to', '&P0_EMAIL_ADMIN.')).to_clob
,p_process_when_button_id=>wwv_flow_imp.id(14346254694426298487)
,p_internal_uid=>67598708685760796
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14347140335126201230)
,p_process_sequence=>40
,p_parent_process_id=>wwv_flow_imp.id(14346270181654298499)
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Send Email to Submitter'
,p_static_id=>'send-email-to-submitter'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'bcc', '&P0_EMAIL_TO.',
  'email_template_id', wwv_flow_imp.id(14345142820446278430),
  'from', '&P0_EMAIL_FROM.',
  'placeholder_values', '{"REPORT_NUMBER":"&P7_NOMOR_LAPORAN.","REPORTER_EMAIL":"&P7_EMAIL_PELAPOR.","REPORT_DATE":"&P7_SUBMITTED_DATE.","CURRENT_YEAR":"&P7_CURRENT_YEAR."}',
  'send_immediately', 'N',
  'to', '&P7_EMAIL_PELAPOR.')).to_clob
,p_process_when_button_id=>wwv_flow_imp.id(14346254694426298487)
,p_internal_uid=>67598455569759514
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346270181654298499)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Submit Chain Process'
,p_static_id=>'submit-chain-process'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'run_in_background', 'N')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14346254694426298487)
,p_internal_uid=>66728302097856783
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346270990012298500)
,p_process_sequence=>10
,p_parent_process_id=>wwv_flow_imp.id(14346270181654298499)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Upload File to XTD_WBS_BLOB'
,p_static_id=>'upload-file-to-xtd-wbs-blob'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_id number; ',
'   l_file_names apex_t_varchar2;',
'   l_file apex_application_temp_files%rowtype;',
'BEGIN',
'   l_file_names := apex_string.split (',
'      p_str => :P7_UPLOAD,',
'      p_sep => '':''',
'   );',
'',
'   FOR i IN 1 .. l_file_names.count LOOP',
'      SELECT *',
'      INTO l_file',
'      FROM apex_application_temp_files',
'      WHERE name = l_file_names(i);',
'',
'      INSERT INTO XTD_WBS_BLOB (',
'         FILE_NAME,',
'         FILE_MIME_TYPE,',
'         FILE_BLOB_DATED,',
'         FILE_BLOB,',
'         WBS_ID',
'      ) VALUES (',
'         l_file.filename,',
'         l_file.mime_type,',
'         SYSDATE,',
'         l_file.blob_content,',
'         :P7_ID ',
'      );',
'   END LOOP;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(14344300039949909298)
,p_internal_uid=>66729110455856784
);
wwv_flow_imp.component_end;
end;
/
