prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>'Additional Evidence Upload'
,p_alias=>'ADDITIONAL-EVIDENCE-UPLOAD'
,p_page_mode=>'MODAL'
,p_step_title=>'Upload Additional Evidence'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ========================================================================= */',
'/* UPLOAD REGION STYLING */',
'/* ========================================================================= */',
'',
'#upload_region {',
'    background: linear-gradient(135deg, rgba(13,42,45,0.55), rgba(7,26,30,0.62)) !important;',
'    border-radius: 24px;',
'    border: 1px solid rgba(45, 212, 191, 0.25);',
'    overflow: hidden;',
'    transition: all 0.3s ease;',
'    margin-bottom: 20px;',
'    -webkit-backdrop-filter: blur(26px) saturate(1.5); backdrop-filter: blur(26px) saturate(1.5);',
'    box-shadow: 0 25px 45px -12px rgba(0, 0, 0, 0.4);',
'}',
'',
'#upload_region:hover {',
'    border-color: rgba(45, 212, 191, 0.5);',
'    box-shadow: 0 0 20px rgba(45, 212, 191, 0.15);',
'    transform: translateY(-2px);',
'}',
'',
'/* Header region styling */',
'#upload_region .t-Region-header {',
'    background: transparent !important;',
'    border-bottom: 1px solid rgba(45, 212, 191, 0.2);',
'    padding: 16px 24px;',
'}',
'',
'/* Title region styling */',
'#upload_region .t-Region-title {',
'    color: #2dd4bf !important;',
'    font-weight: 700;',
'    font-size: 16px;',
'    letter-spacing: 0.5px;',
'    display: flex;',
'    align-items: center;',
'    gap: 10px;',
'}',
'',
'/* Icon inside the title */',
'#upload_region .t-Region-title .fa,',
'#upload_region .t-Region-title i {',
'    color: #2dd4bf;',
'    font-size: 18px;',
'}',
'',
'/* Body wrap region */',
'#upload_region .t-Region-bodyWrap {',
'    background: transparent !important;',
'    padding: 20px 24px;',
'}',
'',
'/* Body region */',
'#upload_region .t-Region-body {',
'    padding: 0;',
'}',
'',
'/* ========================================================================= */',
'/* FILE UPLOAD DROPZONE STYLING - Dark Elegant */',
'/* ========================================================================= */',
'',
'/* Container file upload */',
'#P11_FILE_CONTAINER,',
'.apex-item-wrapper--file {',
'    margin-top: 20px;',
'    margin-bottom: 20px;',
'}',
'',
'/* Dropzone styling utama */',
'.a-FileDrop.a-FileDrop--dropzone {',
'    background: rgba(15, 23, 42, 0.6);',
'    border: 2px dashed rgba(45, 212, 191, 0.4);',
'    border-radius: 20px;',
'    transition: all 0.3s ease;',
'    backdrop-filter: blur(4px);',
'    margin: 0 15px 0 15px;',
'}',
'',
'/* Hover effect on the dropzone */',
'.a-FileDrop.a-FileDrop--dropzone:hover {',
'    border-color: #2dd4bf;',
'    background: rgba(45, 212, 191, 0.08);',
'    transform: scale(1.01);',
'    box-shadow: 0 0 20px rgba(45, 212, 191, 0.15);',
'}',
'',
'/* Icon inside the dropzone */',
'.a-FileDrop-icon .fa {',
'    color: #2dd4bf;',
'    font-size: 48px;',
'    filter: drop-shadow(0 0 10px rgba(45, 212, 191, 0.3));',
'    transition: all 0.3s ease;',
'}',
'',
'.a-FileDrop:hover .a-FileDrop-icon .fa {',
'    transform: scale(1.1);',
'    filter: drop-shadow(0 0 15px rgba(45, 212, 191, 0.5));',
'}',
'',
'/* Heading text on the dropzone */',
'.a-FileDrop-heading {',
'    color: #f1f5f9;',
'    font-weight: 600;',
'    font-size: 16px;',
'}',
'',
'/* Description text */',
'.a-FileDrop-description {',
'    color: rgba(241, 245, 249, 0.7);',
'    font-size: 14px;',
'}',
'',
'/* Choose File Button */',
'.a-FileDrop-action-choose {',
'    background: linear-gradient(135deg, #2dd4bf, #0f766e);',
'    border: none;',
'    border-radius: 40px;',
'    color: #fff;',
'    padding: 8px 24px;',
'    transition: all 0.3s ease;',
'    cursor: pointer;',
'    font-weight: 600;',
'    box-shadow: 0 4px 12px rgba(45, 212, 191, 0.3);',
'}',
'',
'.a-FileDrop-action-choose:hover {',
'    background: linear-gradient(135deg, #5eead4, #0d9488);',
'    transform: translateY(-2px);',
'    box-shadow: 0 6px 18px rgba(45, 212, 191, 0.4);',
'}',
'',
'/* Remove button styling */',
'.a-FileDrop-remove {',
'    background: rgba(100, 116, 139, 0.3);',
'    border: 1px solid rgba(100, 116, 139, 0.5);',
'    border-radius: 40px;',
'    color: #f87171;',
'    transition: all 0.3s ease;',
'    cursor: pointer;',
'    padding: 8px 16px;',
'}',
'',
'.a-FileDrop-remove:hover {',
'    background: rgba(248, 113, 113, 0.15);',
'    border-color: #f87171;',
'    transform: translateY(-1px);',
'}',
'',
'/* Progress bar styling */',
'.a-FileDrop-progressbar {',
'    background: linear-gradient(90deg, #2dd4bf, #0f766e);',
'    border-radius: 10px;',
'}',
'',
'/* Inline help text styling */',
'.t-Form-inlineHelp span {',
'    color: #94a3b8 !important;',
'    font-size: 12px;',
'    font-style: italic;',
'    margin-left: 12px;',
'}',
'',
'/* Error message styling */',
'.a-Form-error {',
'    background: rgba(248, 113, 113, 0.1);',
'    border-left: 4px solid #f87171;',
'    padding: 10px 14px;',
'    border-radius: 12px;',
'    color: #fca5a5;',
'    font-size: 12px;',
'    margin-top: 8px;',
'}',
'',
'/* ========================================================================= */',
'/* HELP TEXT REGION STYLING (Static ID: help_text) */',
'/* ========================================================================= */',
'',
'#help_text {',
'    margin-top: 15px;',
'    margin-bottom: 20px;',
'    padding: 14px 20px;',
'    /* background: rgba(11, 47, 62, 0.599); */',
'    background: linear-gradient(135deg, rgba(13,42,45,0.55), rgba(7,26,30,0.62)) !important;',
'    border-radius: 16px;',
'    border-left: 4px solid #2dd4bf;',
'    transition: all 0.3s ease;',
'}',
'',
'#help_text:hover {',
'    background: rgba(45, 212, 191, 0.12);',
'    transform: translateX(3px);',
'}',
'',
'/* Styling for the text inside help_text */',
'#help_text p,',
'#help_text span,',
'#help_text div {',
'    color: #cbd5e1;',
'    font-size: 13px;',
'    line-height: 1.5;',
'    margin: 0;',
'}',
'',
'/* Styling for the icon in the help text */',
'#help_text .fa,',
'#help_text i {',
'    color: #2dd4bf;',
'    margin-right: 8px;',
'}',
'',
'/* Styling for links in the help text */',
'#help_text a {',
'    color: #2dd4bf;',
'    text-decoration: none;',
'    border-bottom: 1px dotted #2dd4bf;',
'    transition: all 0.3s ease;',
'}',
'',
'#help_text a:hover {',
'    color: #5eead4;',
'    border-bottom-color: #5eead4;',
'}',
'',
'/* ========================================================================= */',
'/* UPLOAD BUTTON STYLING */',
'/* ========================================================================= */',
'',
'#upload_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    background: linear-gradient(135deg, #2dd4bf, #0f766e);',
'    border: none;',
'    border-radius: 40px;',
'    padding: 12px 32px;',
'    transition: all 0.3s ease;',
'    box-shadow: 0 4px 15px rgba(45, 212, 191, 0.3);',
'    cursor: pointer;',
'}',
'',
'#upload_button .t-Icon {',
'    transition: transform 0.3s ease;',
'    color: #fff;',
'    filter: drop-shadow(0 1px 2px rgba(0,0,0,0.2));',
'}',
'',
'#upload_button .t-Button-label {',
'    color: #fff;',
'    font-weight: 600;',
'    letter-spacing: 0.5px;',
'}',
'',
'#upload_button:hover {',
'    background: linear-gradient(135deg, #5eead4, #0d9488);',
'    transform: translateY(-2px);',
'    box-shadow: 0 8px 25px rgba(45, 212, 191, 0.45);',
'}',
'',
'#upload_button:hover .t-Icon {',
'    animation: moveUp 0.8s ease-in-out infinite;',
'}',
'',
'@keyframes moveUp {',
'    0% { transform: translateY(3px); }',
'    50% { transform: translateY(-3px); }',
'    100% { transform: translateY(3px); }',
'}',
'',
'/* ========================================================================= */',
'/* RESPONSIVE ADJUSTMENTS */',
'/* ========================================================================= */',
'',
'@media (max-width: 768px) {',
'    #upload_region {',
'        border-radius: 20px;',
'        margin: 0 12px 20px 12px;',
'    }',
'    ',
'    #upload_region .t-Region-header {',
'        padding: 12px 16px;',
'    }',
'    ',
'    #upload_region .t-Region-title {',
'        font-size: 14px;',
'    }',
'    ',
'    #upload_region .t-Region-bodyWrap {',
'        padding: 16px;',
'    }',
'    ',
'    /* Dropzone responsive */',
'    .a-FileDrop.a-FileDrop--dropzone {',
'        padding: 20px 15px;',
'    }',
'    ',
'    .a-FileDrop-icon .fa {',
'        font-size: 32px;',
'    }',
'    ',
'    .a-FileDrop-heading {',
'        font-size: 14px;',
'    }',
'    ',
'    .a-FileDrop-description {',
'        font-size: 11px;',
'    }',
'    ',
'    .a-FileDrop-action-choose {',
'        padding: 6px 18px;',
'        font-size: 12px;',
'    }',
'    ',
'    /* Help text responsive */',
'    #help_text {',
'        padding: 10px 15px;',
'    }',
'    ',
'    #help_text p {',
'        font-size: 11px;',
'    }',
'    ',
'    /* Upload button responsive */',
'    #upload_button {',
'        padding: 10px 24px;',
'        width: 100%;',
'    }',
'}',
'',
'/* ========================================================================= */',
'/* ANIMATIONS */',
'/* ========================================================================= */',
'',
'/* Ripple effect on drag and drop */',
'.a-FileDrop.a-FileDrop--dropzone.drag-over {',
'    border-color: #2dd4bf;',
'    background: rgba(45, 212, 191, 0.12);',
'    animation: pulse-glow 0.5s ease;',
'}',
'',
'@keyframes pulse-glow {',
'    0% {',
'        box-shadow: 0 0 0 0 rgba(45, 212, 191, 0.3);',
'    }',
'    100% {',
'        box-shadow: 0 0 0 20px rgba(45, 212, 191, 0);',
'    }',
'}',
'',
'/* Glow effect on the upload region while dragging */',
'@keyframes regionGlow {',
'    0% {',
'        box-shadow: 0 0 0 0 rgba(45, 212, 191, 0.15);',
'    }',
'    100% {',
'        box-shadow: 0 0 0 10px rgba(45, 212, 191, 0);',
'    }',
'}',
'',
'#upload_region.drag-active {',
'    border-color: #2dd4bf;',
'    animation: regionGlow 0.8s ease;',
'    background: rgba(45, 212, 191, 0.05);',
'}',
'',
'/* ========================================================================= */',
'/* SCROLLBAR STYLING */',
'/* ========================================================================= */',
'',
'::-webkit-scrollbar {',
'    width: 6px;',
'    height: 6px;',
'}',
'',
'::-webkit-scrollbar-track {',
'    background: rgba(7,26,30,0.4);',
'    border-radius: 10px;',
'}',
'',
'::-webkit-scrollbar-thumb {',
'    background: linear-gradient(135deg, #2dd4bf, #0f766e);',
'    border-radius: 10px;',
'}',
'',
'::-webkit-scrollbar-thumb:hover {',
'    background: linear-gradient(135deg, #5eead4, #0d9488);',
'}'))
,p_step_template=>wwv_flow_imp.id(14344308352300909377)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14346974050949915759)
,p_plug_name=>'Buttons Container'
,p_static_id=>'buttons-container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(14344340113263909407)
,p_plug_display_sequence=>100
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14346974543662915764)
,p_plug_name=>'Help Text'
,p_static_id=>'help-text'
,p_region_name=>'help_text'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344337289386909406)
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p style="color: #fff">',
'    Please click the <span id="upload_link" style="color: #00fdff; text-decoration: none; cursor: pointer;">''Upload''</span> button to upload the file.',
'</p>',
'',
'<script>',
'    document.getElementById(''upload_link'').addEventListener(''click'', function() {',
'        document.getElementById(''upload_button'').click();',
'    });',
'</script>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14346974335276915762)
,p_plug_name=>'Upload Region'
,p_static_id=>'upload-region'
,p_region_name=>'upload_region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344337289386909406)
,p_plug_display_sequence=>90
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14346974252213915761)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14346974050949915759)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_button_static_id=>'cancel_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14344477136542909495)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_HEADER_ID:&P11_HEADER_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14346974153368915760)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14346974050949915759)
,p_button_name=>'UPLOAD'
,p_static_id=>'upload'
,p_button_static_id=>'upload_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'CREATE'
,p_confirm_message=>'Are you sure you want to <b>upload</b> this additional supporting evidence for further processing?'
,p_confirm_style=>'information'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14347772432821758617)
,p_branch_name=>'Go back to Page 4 (Report Detail)'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,11:P4_HEADER_ID,P4_NOMOR_LAPORAN:&P11_HEADER_ID.,&P11_NOMOR_LAPORAN.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14346974153368915760)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346974432518915763)
,p_name=>'P11_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14346974335276915762)
,p_prompt=>'Upload a File'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_FILE'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14344474359992909489)
,p_item_icon_css_classes=>'fa-cloud-upload'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_inline_help_text=>'<span style="color: white;"><i>Max. file size is 8 MB.</i></span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_copy_paste', 'N',
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'dropzone_title', 'Drag or Drop to Upload Files',
  'max_file_size', '8192',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346973699352915756)
,p_name=>'P11_HEADER_ID'
,p_item_sequence=>60
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346973910224915758)
,p_name=>'P11_NOMOR_LAPORAN'
,p_item_sequence=>70
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346973808415915757)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P11_HEADER_ID'
,p_static_id=>'set-p11-header-id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT ID',
'INTO :P11_HEADER_ID',
'FROM XTD_WBS',
'WHERE ID = :P11_HEADER_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67431928859474041
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346974632745915765)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P11_NOMOR_LAPORAN'
,p_static_id=>'set-p11-nomor-laporan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT NOMOR_LAPORAN',
'INTO :P11_NOMOR_LAPORAN',
'FROM XTD_WBS',
'WHERE ID = :P11_HEADER_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67432753189474049
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346974723593915766)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Upload File'
,p_static_id=>'upload-file'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_blob_content BLOB;',
'    v_mime_type VARCHAR2(255);',
'    v_file_name VARCHAR2(500);',
'    v_nomor_laporan VARCHAR2(100) := :P11_NOMOR_LAPORAN;',
'    v_temp_name VARCHAR2(2000);',
'    v_file_count NUMBER;',
'    v_wbs_id NUMBER := :P11_HEADER_ID;',
'',
'BEGIN',
'    :P11_HEADER_ID := v_wbs_id;',
'    :P11_NOMOR_LAPORAN := v_nomor_laporan;',
'    ',
'    -- Option 1: using APEX native multiple file upload (colon separated values: ''file1,file2,file3'')',
'    IF :P11_FILE IS NOT NULL AND :P11_FILE != ''[]'' THEN',
'        ',
'        IF :P11_FILE LIKE ''{%'' OR :P11_FILE LIKE ''[%'' THEN',
'            -- Parse JSON array',
'            FOR rec IN (',
'                SELECT ',
'                    JSON_VALUE(value, ''$.name'') AS temp_name',
'                FROM JSON_TABLE(:P11_FILE, ''$[*]'' COLUMNS (value VARCHAR2(4000) PATH ''$''))',
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
'                FROM TABLE(APEX_STRING.split(:P11_FILE, '':''))',
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
'        NULL;',
'        RAISE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14346974153368915760)
,p_process_success_message=>'Additional supporting evidence has been uploaded for report number <b>&P11_NOMOR_LAPORAN.</b>.'
,p_internal_uid=>67432844037474050
);
wwv_flow_imp.component_end;
end;
/
