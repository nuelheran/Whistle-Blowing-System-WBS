prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'Verify Report'
,p_alias=>'REPORT-VERIFY'
,p_page_mode=>'MODAL'
,p_step_title=>'Verify Report'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#verify_button{',
'    background-color: #0cb56c;',
'    border: none;',
'    color: #003c29;',
'    box-shadow: 0 4px 12px rgba(13,148,136,0.3);',
'}',
'',
unistr('/* \2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500 VERIFY BUTTON CHECKLIST ANIMATION \2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500\2500 */'),
'#verify_button:hover .t-Icon.fa-check {',
'    animation: checkPulse 0.8s ease-in-out infinite;',
'    color: #00561b;',
'}',
'',
'@keyframes checkPulse {',
'    0%, 100% {',
'        transform: scale(1);',
'        filter: drop-shadow(0 0 0 rgba(12, 181, 108, 0));',
'    }',
'    50% {',
'        transform: scale(1.25);',
'        filter: drop-shadow(0 0 8px rgba(12, 181, 108, 0.6));',
'    }',
'}'))
,p_step_template=>wwv_flow_imp.id(14344308352300909377)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14414140281772517898)
,p_plug_name=>'Buttons Container'
,p_static_id=>'buttons-container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344340113263909407)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14346918072235864654)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14414140281772517898)
,p_button_name=>'VERIFY'
,p_static_id=>'verify'
,p_button_static_id=>'verify_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Verify'
,p_button_position=>'NEXT'
,p_confirm_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Are you sure you want to follow up on report number <b>&P10_NOMOR_LAPORAN.</b> ',
'and change its status to <b>ON INVESTIGATION</b>?'))
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14346921287369864664)
,p_branch_name=>'After Verify Go to Page 4'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,10::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14346918072235864654)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14414280125162022964)
,p_name=>'P10_EMAIL_TO'
,p_item_sequence=>40
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346904649758600033)
,p_name=>'P10_HASIL_VERIFIKASI_VALUE'
,p_item_sequence=>60
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14414279764765022961)
,p_name=>'P10_ID'
,p_item_sequence=>10
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346904559231600032)
,p_name=>'P10_JENIS_BUKTI_VALUE'
,p_item_sequence=>50
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346904775785600034)
,p_name=>'P10_KATEGORI_PELANGGARAN_VALUE'
,p_item_sequence=>70
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT KATEGORI_PELANGGARAN',
'FROM XTD_WBS',
'WHERE ID = :P10_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14414280023810022963)
,p_name=>'P10_NOMOR_LAPORAN'
,p_item_sequence=>20
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14414279872618022962)
,p_name=>'P10_REJECTED_DATE'
,p_item_sequence=>30
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14414279673085022960)
,p_name=>'P10_VERIFY_NOTES'
,p_item_sequence=>80
,p_prompt=>'Notes'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    NOTES',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P10_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346920424102864663)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P10_ID'
,p_static_id=>'set-p10-id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ID',
'    INTO :P10_ID',
'    FROM XTD_WBS',
'    WHERE ID = :P10_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67378544546422947
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346920831594864663)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P10_NOMOR_LAPORAN'
,p_static_id=>'set-p10-nomor-laporan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT NOMOR_LAPORAN',
'    INTO :P10_NOMOR_LAPORAN',
'    FROM XTD_WBS',
'    WHERE ID = :P10_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67378952038422947
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346906912248600056)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Page Item(s) Value'
,p_static_id=>'set-page-item-s-value'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT JENIS_BUKTI_PENDUKUNG, HASIL_VERIFIKASI, KATEGORI_PELANGGARAN',
'    INTO :P10_JENIS_BUKTI_VALUE, :P10_HASIL_VERIFIKASI_VALUE, :P10_KATEGORI_PELANGGARAN_VALUE',
'    FROM XTD_WBS',
'    WHERE ID = :P10_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67365032692158340
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346920127642864663)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Verify Report'
,p_static_id=>'verify-report'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_no_batl VARCHAR2(255);',
'',
'BEGIN',
'    SELECT ''FUP/'' || TO_CHAR(SYSDATE, ''YYYY'') || ''/'' || LPAD(TO_CHAR(XTD_NO_BATL.NEXTVAL), 4, ''0'')',
'    INTO v_no_batl',
'    FROM DUAL;',
'',
'    UPDATE XTD_WBS',
'    SET ',
'        NO_BERITA_ACARA_TINDAK_LANJUT = v_no_batl,',
'        STATUS = ''ON INVESTIGATION'',',
'        JENIS_BUKTI_PENDUKUNG = :P4_JENIS_BUKTI_VALUE,',
'        HASIL_VERIFIKASI = :P4_HASIL_VERIFIKASI_VALUE,',
'        TIM_INVESTIGASI = :P4_TIM_INVESTIGASI_VALUE,',
'        RESULT_SUMMARY = :P4_RESULT_SUMMARY_VALUE,',
'        KATEGORI_PELANGGARAN = :P4_KATEGORI_PELANGGARAN_VALUE, ',
'        NOTES = :P10_VERIFY_NOTES',
'    WHERE ID = :P4_HEADER_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14346918072235864654)
,p_internal_uid=>67378248086422947
);
wwv_flow_imp.component_end;
end;
/
