prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Report Tracker'
,p_alias=>'REPORT-TRACKER'
,p_step_title=>'Report Tracker'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- TOP NAVIGATION BAR -->',
'<nav class="apex-nav">',
'  <div class="nav-logo">',
'    <svg viewBox="0 0 24 24" fill="white"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path></svg>',
'    WBS',
'  </div>',
'  <div class="nav-tabs">',
unistr('    <a class="nav-tab" href="f?p=&APP_ID.:99:&APP_SESSION.">\D83C\DFE0 Landing Page</a>'),
'  </div>',
'</nav>',
'',
'<!-- HERO SECTION -->',
'<div class="hero">',
'  <div class="hero-text">',
'    <h1>Welcome to WBS</h1>',
unistr('    <p>A secure and trusted internal whistleblowing platform \2014 report violations, fraud, and unethical conduct safely and confidentially.</p>'),
'    <div class="hero-sub">',
unistr('      <span class="hero-chip">\D83D\DD12 Confidential</span>'),
unistr('      <span class="hero-chip">\2696\FE0F Independent</span>'),
unistr('      <span class="hero-chip">\D83D\DEAB Impartial</span>'),
unistr('      <span class="hero-chip">\D83D\DEE1\FE0F Whistleblower Protection</span>'),
'    </div>',
'  </div>',
unistr('  <div class="hero-icon">\D83D\DEE1\FE0F</div>'),
'</div>',
'',
'<!-- BACK BUTTON -->',
'<!-- <div style="padding: 12px 40px 0 40px; margin-left: -30px;">',
'  <a href="f?p=&APP_ID.:99:&APP_SESSION." ',
'     style="display: inline-flex; align-items: center; gap: 8px; background: #e2e8f0; color: #134e4a; padding: 8px 16px; border-radius: 8px; text-decoration: none; font-size: 13px; font-weight: 600; transition: all 0.2s ease; border: 1px solid #cbd5e'
||'1;"',
'     onmouseover="this.style.background=''#cbd5e1''; this.style.transform=''translateX(-2px)'';"',
'     onmouseout="this.style.background=''#e2e8f0''; this.style.transform=''translateX(0)'';">',
unistr('    \2190 Back to Landing Page'),
'  </a>',
'</div> -->',
'',
'<!-- Track Report Header -->',
'<div style="display: flex; align-items: center; gap: 16px; margin: 24px 0 20px 0;">',
'  <div style="flex: 1; height: 2px; background: linear-gradient(90deg, transparent, #0d9488, #e2e8f0);"></div>',
'  <div style="font-size: 28px; font-weight: 700; color: #134e4a; white-space: nowrap;">',
unistr('    \D83D\DCCB Track Your Report'),
'  </div>',
'  <div style="flex: 1; height: 2px; background: linear-gradient(90deg, #e2e8f0, #0d9488, transparent);"></div>',
'</div>',
'',
'<!-- Instruksi -->',
'<div style="text-align: center; margin-bottom: 24px;">',
'  <div style="color: #64748b; font-size: 15px; line-height: 1.6; max-width: 500px; margin: 0 auto;">',
'    Enter your report number in the field below to track its status.',
'  </div>',
'</div>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.addEventListener(''DOMContentLoaded'', function() {',
'    const inputField = document.getElementById(''P6_NOMOR_LAPORAN'');',
'    if (!inputField) return;',
'    ',
'    // Teks placeholder w/ emoji',
unistr('    const placeholderText = ''\D83D\DD0D Enter your report number here...'';'),
'    let index = 0;',
'    let isDeleting = false;',
'    let isTypingComplete = false;',
'    let timeoutId = null;',
'    let isAnimating = true;',
'    ',
'    // Function to split a string including emoji',
'    function splitString(str) {',
'        return Array.from(str);',
'    }',
'    ',
'    const chars = splitString(placeholderText);',
'    const totalChars = chars.length;',
'    ',
'    // Stop the animation when the user starts typing',
'    function stopAnimation() {',
'        if (timeoutId) {',
'            clearTimeout(timeoutId);',
'            timeoutId = null;',
'        }',
'        isAnimating = false;',
'        // Tampilkan placeholder penuh tanpa cursor',
'        inputField.setAttribute(''placeholder'', placeholderText);',
'    }',
'    ',
'    // Restart the animation from the beginning',
'    function startAnimation() {',
'        if (!isAnimating) return;',
'        ',
'        if (timeoutId) {',
'            clearTimeout(timeoutId);',
'            timeoutId = null;',
'        }',
'        ',
'        index = 0;',
'        isDeleting = false;',
'        isTypingComplete = false;',
'        inputField.setAttribute(''placeholder'', '''');',
'        typeEffect();',
'    }',
'    ',
'    function typeEffect() {',
'        if (!isAnimating) return;',
'        ',
'        if (!isDeleting && index <= totalChars) {',
'            // Mode: typing',
'            if (index === totalChars) {',
'                // Typing finished, show with cursor',
'                inputField.setAttribute(''placeholder'', placeholderText + ''|'');',
'                isTypingComplete = true;',
'                // Wait 2 seconds before deleting',
'                timeoutId = setTimeout(function() {',
'                    if (isAnimating && isTypingComplete) {',
'                        isDeleting = true;',
'                        typeEffect();',
'                    }',
'                }, 2000);',
'                return;',
'            }',
'            ',
'            // Tampilkan teks sejauh index + cursor',
'            const currentText = chars.slice(0, index + 1).join('''');',
'            inputField.setAttribute(''placeholder'', currentText + ''|'');',
'            index++;',
'            ',
'            // Typing speed (varied for a natural effect)',
'            const speed = 70 + Math.random() * 30;',
'            timeoutId = setTimeout(typeEffect, speed);',
'            ',
'        } else if (isDeleting && index >= 0) {',
'            // Mode: Menghapus',
'            isTypingComplete = false;',
'            ',
'            if (index === 0) {',
'                // Deleting finished, start again',
'                isDeleting = false;',
'                inputField.setAttribute(''placeholder'', ''|'');',
'                timeoutId = setTimeout(typeEffect, 500);',
'                return;',
'            }',
'            ',
'            // Tampilkan teks sejauh index + cursor',
'            const currentText = chars.slice(0, index).join('''');',
'            inputField.setAttribute(''placeholder'', currentText + ''|'');',
'            index--;',
'            ',
'            // Deleting speed (faster)',
'            timeoutId = setTimeout(typeEffect, 40);',
'        }',
'    }',
'    ',
'    // When the user starts typing, STOP the animation (no restart)',
'    inputField.addEventListener(''focus'', function() {',
'        stopAnimation();',
'    });',
'    ',
'    // When the user stops typing and the field is empty, RESTART the animation',
'    inputField.addEventListener(''blur'', function() {',
'        if (inputField.value === '''') {',
'            isAnimating = true;',
'            startAnimation();',
'        }',
'    });',
'    ',
'    // If the user clicks outside the field but it is not empty, do not restart',
'    document.addEventListener(''click'', function(event) {',
'        // If the click target is not the input field and the field is empty, start the animation',
'        if (event.target !== inputField && inputField.value === '''' && !isAnimating) {',
'            isAnimating = true;',
'            startAnimation();',
'        }',
'    });',
'    ',
'    // Start the animation for the first time',
'    startAnimation();',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Login-container {',
'    margin-top: -200px;',
'}',
'/* ------------------------- Top Navigation Bar (frosted) ------------------------- */',
'.apex-nav {',
'  background: rgba(10,34,37,0.55);',
'  -webkit-backdrop-filter: blur(16px) saturate(1.4);',
'  backdrop-filter: blur(16px) saturate(1.4);',
'  border-bottom: 1px solid rgba(255,255,255,0.14);',
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
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------------- Hero Section (liquid glass) ------------------------------- */',
'.hero {',
'  background: linear-gradient(135deg, rgba(19,78,74,0.50) 0%, rgba(13,148,136,0.42) 55%, rgba(34,211,238,0.30) 120%);',
'  -webkit-backdrop-filter: blur(20px) saturate(1.5);',
'  backdrop-filter: blur(20px) saturate(1.5);',
'  border: 1px solid rgba(255,255,255,0.28);',
'  border-radius: 22px;',
'  margin: 14px;',
'  box-shadow: 0 22px 50px -20px rgba(2,24,26,0.6), inset 0 1px 0 rgba(255,255,255,0.30);',
'  padding: 48px 40px;',
'  display: flex;',
'  align-items: center;',
'  gap: 32px;',
'  min-height: 220px;',
'  position: relative;',
'  overflow: hidden;',
'  animation: fadeIn 0.6s ease-out;',
'}',
'/* Animated background dots pattern */',
'.hero::before {',
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
'.hero-text h1 {',
'  font-size: 28px;',
'  font-weight: 700;',
'  color: white;',
'  margin-bottom: 8px;',
'  text-shadow: 0 0 18px rgba(45,212,191,0.4);',
'}',
'.hero-text p {',
'  color: rgba(255,255,255,0.8);',
'  font-size: 15px;',
'  line-height: 1.6;',
'  max-width: 560px;',
'}',
'.hero-text .hero-sub {',
'  margin-top: 16px;',
'  display: flex;',
'  gap: 12px;',
'  flex-wrap: wrap;',
'}',
'.hero-icon {',
'  cursor: default;',
'  margin-left: auto;',
'  width: 120px;',
'  height: 120px;',
'  background: rgba(255,255,255,0.1);',
'  border: 1px solid rgba(255,255,255,0.2);',
'  border-radius: 24px;',
'  display: flex;',
'  align-items: center;',
'  justify-content: center;',
'  font-size: 56px;',
'  flex-shrink: 0;',
'  animation: float 4s ease-in-out infinite;',
'  transition: all 0.3s ease;',
'}',
'.hero-icon:hover {',
'  transform: scale(1.05);',
'  background: rgba(255,255,255,0.2);',
'  box-shadow: 0 0 30px rgba(45,212,191,0.35);',
'}',
'@keyframes float {',
'  0% { transform: translateY(0px); }',
'  50% { transform: translateY(-10px); }',
'  100% { transform: translateY(0px); }',
'}',
'@keyframes fadeIn {',
'  from { opacity: 0; }',
'  to { opacity: 1; }',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* ------------------------------ Hero Chips Hover Effect ------------------------------ */',
'.hero-chip {',
'  transition: all 0.3s ease-in-out;',
'  cursor: default;',
'  position: relative;',
'  background: rgba(255,255,255,0.15);',
'  border: 1px solid rgba(255,255,255,0.3);',
'  color: rgba(255,255,255,0.9);',
'  font-size: 12px;',
'  padding: 4px 12px;',
'  border-radius: 20px;',
'  backdrop-filter: blur(4px);',
'}',
'.hero-chip:hover {',
'  background: linear-gradient(135deg, rgba(34, 211, 238, 0.2), rgba(45, 212, 191, 0.2));',
'  border: 1px solid rgba(34, 211, 238, 0.6);',
'  box-shadow: 0 8px 20px rgba(34, 211, 238, 0.3), 0 0 0 1px rgba(45, 212, 191, 0.2);',
'  color: white;',
'  text-shadow: 0 0 4px rgba(45, 212, 191, 0.5);',
'}',
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
'/* ------------------------------ INFO BANNER (dark liquid glass) ------------------------------ */',
'div[style*="background:white;border:1px solid #e2e8f0;border-left:4px solid #0d9488"] {',
'  background: linear-gradient(160deg, rgba(13,42,45,0.55), rgba(7,24,28,0.68)) !important;',
'  -webkit-backdrop-filter: blur(20px) saturate(1.5);',
'  backdrop-filter: blur(20px) saturate(1.5);',
'  border-color: rgba(255,255,255,0.18) !important;',
'  border-left-color: #2dd4bf !important;',
'  transition: all 0.3s ease;',
'  box-shadow: 0 12px 30px -12px rgba(0,0,0,0.5), inset 0 1px 0 rgba(255,255,255,0.15);',
'  border-radius: 14px !important;',
'}',
'div[style*="background:white;border:1px solid #e2e8f0;border-left:4px solid #0d9488"]:hover {',
'  transform: translateY(-2px);',
'  box-shadow: 0 16px 34px -12px rgba(0,0,0,0.55), 0 0 22px rgba(45,212,191,0.18);',
'  border-left-width: 6px;',
'}',
'/* Light text inside the banner (overrides the inline dark colors) */',
'div[style*="background:white;border:1px solid #e2e8f0;border-left:4px solid #0d9488"] div[style*="color:#134e4a"] {',
'  color: #7df3e1 !important;',
'  text-shadow: 0 0 12px rgba(45,212,191,0.35);',
'}',
'div[style*="background:white;border:1px solid #e2e8f0;border-left:4px solid #0d9488"] div[style*="color:#64748b"] {',
'  color: rgba(203,236,231,0.8) !important;',
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
'  background: linear-gradient(160deg, rgba(13,42,45,0.50) 0%, rgba(7,24,28,0.66) 100%);',
'  -webkit-backdrop-filter: blur(28px) saturate(1.6);',
'  backdrop-filter: blur(28px) saturate(1.6);',
'  border: 1px solid rgba(255,255,255,0.16);',
'  border-radius: 24px;',
'  box-shadow: 0 30px 60px -18px rgba(0,0,0,0.55), inset 0 1px 0 rgba(255,255,255,0.18);',
'  padding: 8px;',
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
'/* --------------------- Styling Track Report Region (dark liquid glass) --------------------- */',
'/* Container region */',
'#cari_laporan_region {',
'    border-radius: 24px;',
'    box-shadow: 0 25px 45px -12px rgba(0, 0, 0, 0.5), 0 0 0 1px rgba(45, 212, 191, 0.15);',
'    padding: 8px;',
'    margin: 0 20px 20px 20px;',
'    transition: all 0.3s ease;',
'    border: 1px solid rgba(255,255,255,0.20) !important;',
'    -webkit-backdrop-filter: blur(26px) saturate(1.5);',
'    backdrop-filter: blur(26px) saturate(1.5);',
'    background: linear-gradient(160deg, rgba(13,42,45,0.55), rgba(7,24,28,0.68)) !important;',
'}',
'#cari_laporan_region:hover {',
'    box-shadow: 0 0 20px rgba(45, 212, 191, 0.2);',
'    border-color: rgba(45, 212, 191, 0.4) !important;',
'}',
'/* Body wrap inside the region */',
'#cari_laporan_region .t-Region-bodyWrap {',
'    background: transparent !important;',
'    box-shadow: none !important;',
'    border: none !important;',
'    -webkit-backdrop-filter: none;',
'    backdrop-filter: none;',
'    padding: 8px !important;',
'}',
'/* Input field styling - dark glass */',
'#P6_NOMOR_LAPORAN {',
'    background: rgba(7,26,30,0.50) !important;',
'    -webkit-backdrop-filter: blur(10px);',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(255,255,255,0.22) !important;',
'    border-radius: 16px !important;',
'    padding: 14px 20px !important;',
'    font-size: 15px !important;',
'    transition: all 0.3s ease !important;',
'    width: 100% !important;',
'    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2) !important;',
'    color: #e2fdf9 !important;',
'}',
'#P6_NOMOR_LAPORAN::placeholder {',
'    color: rgba(148,183,178,0.75) !important;',
'}',
'#P6_NOMOR_LAPORAN:focus {',
'    border-color: #2dd4bf !important;',
'    box-shadow: 0 0 0 4px rgba(45, 212, 191, 0.15), 0 0 18px rgba(45,212,191,0.25) !important;',
'    outline: none !important;',
'    background: rgba(10,34,38,0.62) !important;',
'}',
'/* Label styling */',
'#P6_NOMOR_LAPORAN_LABEL {',
'    font-size: 14px !important;',
'    font-weight: 600 !important;',
'    color: #a7dcd4 !important;',
'    margin-bottom: 8px !important;',
'    display: block !important;',
'    letter-spacing: 0.5px;',
'}',
'/* Container input wrapper */',
'.t-Form-fieldContainer--stacked {',
'    margin-bottom: 20px !important;',
'}',
'/* Button styling (Back) - ghost glass */',
'#back_button {',
'    padding: 12px;',
'    font-size: 14px;',
'    font-weight: 600;',
'    color: #b9d9d4 !important;',
'    background: rgba(255,255,255,0.06) !important;',
'    -webkit-backdrop-filter: blur(8px);',
'    backdrop-filter: blur(8px);',
'    border: 1px solid rgba(255,255,255,0.22) !important;',
'    border-radius: 10px;',
'    left: 30px;',
'    transition: all 0.3s ease;',
'}',
'#back_button:hover {',
'    background: rgba(45,212,191,0.12) !important;',
'    border-color: #2dd4bf !important;',
'    color: #2dd4bf !important;',
'}',
'/* Button styling (Find) - neon glass */',
'#find_button {',
'    background: linear-gradient(135deg, #2dd4bf, #0f766e) !important;',
'    border: 1px solid rgba(255,255,255,0.25) !important;',
'    border-radius: 40px !important;',
'    padding: 10px 28px !important;',
'    font-weight: 600 !important;',
'    transition: all 0.3s ease !important;',
'    box-shadow: 0 4px 15px rgba(45, 212, 191, 0.3) !important;',
'    color: white !important;',
'}',
'#find_button:hover {',
'    transform: translateY(-2px);',
'    box-shadow: 0 8px 25px rgba(45, 212, 191, 0.5) !important;',
'    background: linear-gradient(135deg, #5eead4, #0d9488) !important;',
'}',
'/* Button styling (Reset) - dark glass */',
'#reset_button {',
'    background: rgba(51,65,85,0.55) !important;',
'    -webkit-backdrop-filter: blur(8px);',
'    backdrop-filter: blur(8px);',
'    border: 1px solid rgba(255,255,255,0.22) !important;',
'    border-radius: 40px !important;',
'    padding: 10px 24px !important;',
'    font-weight: 600 !important;',
'    color: #cbd5e1 !important;',
'    transition: all 0.3s ease !important;',
'}',
'#reset_button:hover {',
'    background: rgba(71,85,105,0.7) !important;',
'    transform: translateY(-2px);',
'    border-color: rgba(255,255,255,0.4) !important;',
'    color: white !important;',
'}',
'#reset_button:hover .t-Icon {',
'    animation: rotate 0.8s linear infinite;',
'}',
'/* Button group container */',
'.t-ButtonRegion-buttons {',
'    display: flex;',
'    gap: 12px;',
'    justify-content: flex-end;',
'}',
'/* Header region */',
'#cari_laporan_region .t-Region-header {',
'    background: transparent !important;',
'    border-bottom: 1px solid rgba(45, 212, 191, 0.15) !important;',
'    margin-bottom: 8px;',
'}',
'#cari_laporan_region .t-Region-title {',
'    color: #2dd4bf !important;',
'    font-size: 16px;',
'    font-weight: 600;',
'    text-shadow: 0 0 14px rgba(45,212,191,0.4);',
'}',
'/* Info banner inside the region */',
'#cari_laporan_region div[style*="background:white"] {',
'    background: rgba(7,26,30,0.55) !important;',
'    border-color: rgba(255,255,255,0.15) !important;',
'    border-left-color: #2dd4bf !important;',
'}',
'#cari_laporan_region div[style*="background:white"] div {',
'    color: rgba(203,236,231,0.8) !important;',
'}',
'#cari_laporan_region div[style*="background:white"] div div:first-child {',
'    color: #7df3e1 !important;',
'}',
'/* Responsive */',
'@media (max-width: 768px) {',
'    #cari_laporan_region {',
'        margin: 0 12px 20px 12px;',
'    }',
'',
'    #find_button,',
'    #reset_button {',
'        padding: 8px 20px !important;',
'        font-size: 13px !important;',
'    }',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'/* --------------------------- Interactive Grid (dark liquid glass) --------------------------- */',
'/* Grid main container */',
'#hasil_cari_laporan {',
'    margin: 20px 20px 20px 20px !important;',
'    border-radius: 20px !important;',
'    overflow: hidden !important;',
'    background: linear-gradient(160deg, rgba(13,42,45,0.50), rgba(7,24,28,0.66)) !important;',
'    -webkit-backdrop-filter: blur(24px) saturate(1.5);',
'    backdrop-filter: blur(24px) saturate(1.5);',
'    border: 1px solid rgba(255,255,255,0.16) !important;',
'    box-shadow: 0 24px 50px -18px rgba(0,0,0,0.55), inset 0 1px 0 rgba(255,255,255,0.14);',
'}',
'#hasil_cari_laporan .a-GV-hdr {',
'    border-bottom: 2px solid #2dd4bf !important;',
'    border-radius: 16px 16px 0 0 !important;',
'}',
'/* Header cell styling */',
'#hasil_cari_laporan .a-GV-header {',
'    font-weight: 600 !important;',
'    font-size: 13px !important;',
'    letter-spacing: 0.5px !important;',
'    padding: 12px 16px !important;',
'    border-right: 1px solid rgba(45, 212, 191, 0.2) !important;',
'    transition: none !important;',
'}',
'/* Prevent header cell background change on hover */',
'#hasil_cari_laporan .a-GV-header:hover {',
'    background: transparent !important;',
'    background-color: transparent !important;',
'}',
'/* Header links - prevent background change */',
'#hasil_cari_laporan .a-GV-headerLink,',
'#hasil_cari_laporan .a-GV-headerLink:hover {',
'    background: transparent !important;',
'    text-decoration: none !important;',
'}',
'/* Prevent effects on the active/sorted header */',
'#hasil_cari_laporan .a-GV-header.a-GV-header--sorted,',
'#hasil_cari_laporan .a-GV-header.a-GV-header--sorted:hover {',
'    background: transparent !important;',
'}',
'/* Prevent effects on the header sort buttons */',
'#hasil_cari_laporan .a-GV-header .js-asc,',
'#hasil_cari_laporan .a-GV-header .js-desc,',
'#hasil_cari_laporan .a-GV-header .js-asc:hover,',
'#hasil_cari_laporan .a-GV-header .js-desc:hover {',
'    background: rgba(255, 255, 255, 0.1) !important;',
'    border-radius: 4px !important;',
'}',
'/* Grid body / data rows - dark glass */',
'#hasil_cari_laporan .a-GV-bdy {',
'    background: transparent !important;',
'    border-radius: 0 0 16px 16px !important;',
'}',
'#hasil_cari_laporan .a-GV-row {',
'    background: rgba(255,255,255,0.04) !important;',
'    transition: all 0.2s ease !important;',
'    border-bottom: 1px solid rgba(255,255,255,0.08) !important;',
'}',
'#hasil_cari_laporan .a-GV-row:hover {',
'    background: rgba(45,212,191,0.10) !important;',
'    box-shadow: -4px 0 0 #2dd4bf;',
'}',
'#hasil_cari_laporan .a-GV-cell {',
'    padding: 14px 16px !important;',
'    font-size: 14px !important;',
'    color: #d6efeb !important;',
'    font-weight: 500 !important;',
'    border-right: 1px solid rgba(255,255,255,0.06) !important;',
'    background: transparent !important;',
'}',
'#hasil_cari_laporan .a-GV-cell:last-child {',
'    border-right: none !important;',
'}',
'/* Custom styling for the Report Number column */',
'#hasil_cari_laporan .a-GV-cell:first-child {',
'    font-weight: 700 !important;',
'    color: #7df3e1 !important;',
'    font-family: ''Courier New'', monospace !important;',
'    letter-spacing: 0.5px;',
'}',
'/* Footer grid - dark glass */',
'#hasil_cari_laporan .a-GV-footer {',
'    background: rgba(13,42,45,0.55) !important;',
'    border-top: 1px solid rgba(255,255,255,0.12) !important;',
'    border-radius: 0 0 16px 16px !important;',
'    padding: 10px 16px !important;',
'}',
'#hasil_cari_laporan .a-GV-status {',
'    color: rgba(203,236,231,0.75) !important;',
'    font-size: 12px !important;',
'    font-weight: 500 !important;',
'}',
'#hasil_cari_laporan .a-GV-pageRange {',
'    background: rgba(45,212,191,0.15) !important;',
'    padding: 4px 12px !important;',
'    border-radius: 20px !important;',
'    color: #7df3e1 !important;',
'    font-size: 12px !important;',
'}',
'/* Scrollbar inside the grid */',
'#hasil_cari_laporan .a-GV-w-scroll::-webkit-scrollbar {',
'    width: 6px;',
'    height: 6px;',
'}',
'#hasil_cari_laporan .a-GV-w-scroll::-webkit-scrollbar-track {',
'    background: rgba(7,26,30,0.5);',
'    border-radius: 10px;',
'}',
'#hasil_cari_laporan .a-GV-w-scroll::-webkit-scrollbar-thumb {',
'    background: linear-gradient(135deg, #2dd4bf, #0d9488);',
'    border-radius: 10px;',
'}',
'#hasil_cari_laporan .a-GV-w-scroll::-webkit-scrollbar-thumb:hover {',
'    background: linear-gradient(135deg, #14b8a6, #22d3ee);',
'}',
'/* Loading / no data state */',
'#hasil_cari_laporan .a-GV-altMessage {',
'    padding: 40px !important;',
'    background: transparent !important;',
'}',
'#hasil_cari_laporan .a-GV-altMessage-icon {',
'    color: rgba(167,220,212,0.6) !important;',
'}',
'#hasil_cari_laporan .a-GV-altMessage-text {',
'    color: rgba(203,236,231,0.75) !important;',
'    font-size: 14px !important;',
'}',
'/* Styling for the grid status badge */',
'#hasil_cari_laporan .a-GV-cell span[style*="border-radius: 40px"] {',
'    transition: all 0.2s ease;',
'    display: inline-flex !important;',
'    align-items: center !important;',
'    justify-content: center !important;',
'    gap: 8px !important;',
'    font-weight: 600 !important;',
'    box-shadow: 0 2px 6px rgba(0,0,0,0.25);',
'}',
'#hasil_cari_laporan .a-GV-cell span[style*="border-radius: 40px"]:hover {',
'    transform: scale(1.02);',
'    box-shadow: 0 4px 14px rgba(45,212,191,0.25);',
'}',
'/* Pulse animation for the status indicator */',
'.status-indicator-grid {',
'    display: inline-block;',
'    width: 10px;',
'    height: 10px;',
'    border-radius: 50%;',
'    animation: pulse-status 1.5s infinite;',
'    box-shadow: 0 0 0 rgba(45, 212, 191, 0.4);',
'}',
'@keyframes pulse-status {',
'    0% {',
'        box-shadow: 0 0 0 0 rgba(45, 212, 191, 0.4);',
'        transform: scale(1);',
'    }',
'    50% {',
'        transform: scale(1.15);',
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
'/* Responsive grid */',
'@media (max-width: 768px) {',
'    #hasil_cari_laporan {',
'        margin: 12px !important;',
'    }',
'',
'    #hasil_cari_laporan .a-GV-cell {',
'        padding: 10px 12px !important;',
'        font-size: 12px !important;',
'    }',
'',
'    #hasil_cari_laporan .a-GV-header {',
'        padding: 8px 12px !important;',
'        font-size: 11px !important;',
'    }',
'}',
'/* Shadow effect on the grid on hover */',
'#hasil_cari_laporan:hover {',
'    box-shadow: 0 10px 40px -12px rgba(0,0,0,0.5), 0 0 22px rgba(45,212,191,0.18);',
'    transition: box-shadow 0.3s ease;',
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
''))
,p_step_template=>wwv_flow_imp.id(14344831783930091406)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14411306523852484809)
,p_plug_name=>'Info Banner'
,p_static_id=>'info-banner'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(14344337289386909406)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <!-- Info Banner -->',
'  <div style="background:white;border:1px solid #e2e8f0;border-left:4px solid #0d9488;border-radius:8px;padding:18px 20px;display:flex;align-items:flex-start;gap:14px;">',
unistr('    <span style="font-size:22px;flex-shrink:0;">\2139\FE0F</span>'),
'    <div>',
'      <div style="font-weight:700;color:#134e4a;margin-bottom:4px;">Your Identity Stays Confidential</div>',
'      <div style="font-size:13px;color:#64748b;line-height:1.6;">The reporter identity is guaranteed confidential. You may report anonymously. Every report is handled seriously and professionally.</div>',
'    </div>',
'  </div>',
'',
'</div>'))
,p_required_patch=>wwv_flow_imp.id(14344300039949909298)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345689434187332524)
,p_plug_name=>'Report Search Results'
,p_static_id=>'report-search-results'
,p_region_name=>'hasil_cari_laporan'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(14344394156784909442)
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMOR_LAPORAN, ',
'       STATUS,',
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
'       END AS STATUS_indicator_color',
'FROM XTD_WBS',
'WHERE UPPER(NOMOR_LAPORAN) = UPPER(:P6_NOMOR_LAPORAN);'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P6_NOMOR_LAPORAN'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report Search Results'
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
 p_id=>wwv_flow_imp.id(14345690261884332532)
,p_name=>'NOMOR_LAPORAN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMOR_LAPORAN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Report Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'nomor_laporan_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14345690329365332533)
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
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span style="background: &STATUS_BG_COLOR.; color: &STATUS_TEXT_COLOR.; display: flex; text-align: center; justify-content: center; align-items: center; gap: 10px; min-width: fit-content; font-weight: bold; border-radius: 40px; padding: 6px 16px;">',
    '    <span class="status-indicator-grid" style="background-color: &STATUS_INDICATOR_COLOR.;"></span>',
    '    <span>&STATUS.</span>',
    '</span>')))).to_clob
,p_static_id=>'status_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14345691264392332542)
,p_name=>'STATUS_BG_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_BG_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14345691456424332544)
,p_name=>'STATUS_INDICATOR_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_INDICATOR_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14345691348344332543)
,p_name=>'STATUS_TEXT_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_TEXT_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(14345690173892332531)
,p_internal_uid=>66148294335890815
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
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
 p_id=>wwv_flow_imp.id(14345993137268925783)
,p_interactive_grid_id=>wwv_flow_imp.id(14345690173892332531)
,p_static_id=>'664513'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(14345993298049925784)
,p_report_id=>wwv_flow_imp.id(14345993137268925783)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345993841792925789)
,p_view_id=>wwv_flow_imp.id(14345993298049925784)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(14345690261884332532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14345994754592925795)
,p_view_id=>wwv_flow_imp.id(14345993298049925784)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(14345690329365332533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14346107895210461952)
,p_view_id=>wwv_flow_imp.id(14345993298049925784)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(14345691264392332542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14346108966175461955)
,p_view_id=>wwv_flow_imp.id(14345993298049925784)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(14345691348344332543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14346109896371461957)
,p_view_id=>wwv_flow_imp.id(14345993298049925784)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(14345691456424332544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345689276458332522)
,p_plug_name=>'Track Report'
,p_static_id=>'track-report'
,p_region_name=>'cari_laporan_region'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14350223942978799417)
,p_button_sequence=>60
,p_button_name=>'BACK'
,p_static_id=>'back'
,p_button_static_id=>'back_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--simple:t-Button--iconLeft:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Landing Page'
,p_button_redirect_url=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:RP,6,99::'
,p_icon_css_classes=>'fa-long-arrow-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14345690043319332530)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14345689276458332522)
,p_button_name=>'FIND'
,p_static_id=>'find'
,p_button_static_id=>'find_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Find'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14345690528369332535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14345689276458332522)
,p_button_name=>'RESET'
,p_static_id=>'reset'
,p_button_static_id=>'reset_button'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_image_alt=>'Reset'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-rotate-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345689771001332527)
,p_name=>'P6_NOMOR_LAPORAN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14345689276458332522)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14344474535539909490)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14345690591781332536)
,p_name=>'Set Null & Submit Page (Reset)'
,p_static_id=>'set-null-submit-page-reset'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14345690528369332535)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14345690691359332537)
,p_event_id=>wwv_flow_imp.id(14345690591781332536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_NOMOR_LAPORAN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'N',
  'items_to_submit', 'P6_NOMOR_LAPORAN',
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    'BEGIN',
    '    IF :P6_NOMOR_LAPORAN IS NOT NULL THEN        ',
    '        :P6_NOMOR_LAPORAN := NULL; ',
    '    END IF;',
    '    ',
    '    RETURN NULL;',
    'END;',
    '')),
  'suppress_change_event', 'N',
  'type', 'FUNCTION_BODY')).to_clob
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14345690847510332538)
,p_event_id=>wwv_flow_imp.id(14345690591781332536)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-submit-page'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_processing', 'N')).to_clob
);
wwv_flow_imp.component_end;
end;
/
