prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Reject Report'
,p_alias=>'REPORT-REJECT'
,p_page_mode=>'MODAL'
,p_step_title=>'Reject Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(14344308352300909377)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14346764685730094965)
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
 p_id=>wwv_flow_imp.id(14346764779750094966)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14346764685730094965)
,p_button_name=>'REJECT'
,p_static_id=>'reject'
,p_button_static_id=>'reject_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reject'
,p_button_position=>'NEXT'
,p_confirm_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Are you sure you want to reject report number <b>&P9_NOMOR_LAPORAN.</b> ',
'and change its status to <b>CANCELLED</b>?'))
,p_icon_css_classes=>'fa-x-axis'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14346903574803600022)
,p_branch_name=>'After Reject Go to Page 4'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,9::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14346764779750094966)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346903454792600021)
,p_name=>'P9_EMAIL_TO'
,p_item_sequence=>40
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346970344819915722)
,p_name=>'P9_HASIL_VERIFIKASI_VALUE'
,p_item_sequence=>60
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346903094395600018)
,p_name=>'P9_ID'
,p_item_sequence=>10
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346970200006915721)
,p_name=>'P9_JENIS_BUKTI_VALUE'
,p_item_sequence=>50
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346970417119915723)
,p_name=>'P9_KATEGORI_PELANGGARAN_VALUE'
,p_item_sequence=>70
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346903353440600020)
,p_name=>'P9_NOMOR_LAPORAN'
,p_item_sequence=>20
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346903202248600019)
,p_name=>'P9_REJECTED_DATE'
,p_item_sequence=>30
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346903002715600017)
,p_name=>'P9_REJECT_NOTES'
,p_is_required=>true
,p_item_sequence=>80
,p_prompt=>'Reject Notes'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    NOTES',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P9_ID;'))
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
 p_id=>wwv_flow_imp.id(14346903621335600023)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Report'
,p_static_id=>'reject-report'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_old_status    VARCHAR2(255);',
'    v_new_status    VARCHAR2(255);',
'    ',
'BEGIN',
'    SELECT STATUS',
'    INTO v_old_status',
'    FROM XTD_WBS',
'    WHERE ID = :P9_ID;',
'    ',
'    UPDATE XTD_WBS',
'    SET ',
'        STATUS = ''CANCELLED'',',
'        NOTES = :P9_REJECT_NOTES,',
'        JENIS_BUKTI_PENDUKUNG = :P4_JENIS_BUKTI_VALUE,',
'        HASIL_VERIFIKASI = :P4_HASIL_VERIFIKASI_VALUE,',
'        KATEGORI_PELANGGARAN = :P4_KATEGORI_PELANGGARAN_VALUE',
'    WHERE ID = :P9_ID',
'    AND STATUS = ''ON REVIEW''',
'    AND NOMOR_LAPORAN = :P9_NOMOR_LAPORAN;',
'',
'    IF SQL%ROWCOUNT > 0 THEN',
'        SELECT STATUS',
'        INTO v_new_status',
'        FROM XTD_WBS',
'        WHERE ID = :P9_ID;',
'        ',
'        -- Success message',
'        APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Report rejected and its status changed from '' || v_old_status || '' to '' || v_new_status || ''.'';',
'    ELSE',
'        -- Error message',
'        apex_error.add_error( ',
'            p_message          => ''No changes made: invalid ID or the status does not meet the criteria.'',',
'            p_display_location => apex_error.c_inline_in_notification',
'        ); ',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        apex_error.add_error( ',
'            p_message          => ''Record with ID '' || :P9_ID || '' was not found.'',',
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'    WHEN OTHERS THEN',
'        apex_error.add_error( ',
'            p_message          => ''Terjadi kesalahan: '' || SQLERRM,',
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14346764779750094966)
,p_internal_uid=>67361741779158307
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346903955737600026)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P9_ID'
,p_static_id=>'set-p9-id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ID',
'    INTO :P9_ID',
'    FROM XTD_WBS',
'    WHERE ID = :P9_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67362076181158310
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346903982058600027)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P9_NOMOR_LAPORAN'
,p_static_id=>'set-p9-nomor-laporan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT NOMOR_LAPORAN',
'    INTO :P9_NOMOR_LAPORAN',
'    FROM XTD_WBS',
'    WHERE ID = :P9_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67362102502158311
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346970144033915720)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Page Item(s) Value'
,p_static_id=>'set-page-item-s-value'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT JENIS_BUKTI_PENDUKUNG, HASIL_VERIFIKASI, KATEGORI_PELANGGARAN',
'    INTO :P9_JENIS_BUKTI_VALUE, :P9_HASIL_VERIFIKASI_VALUE, :P9_KATEGORI_PELANGGARAN_VALUE',
'    FROM XTD_WBS',
'    WHERE ID = :P9_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67428264477474004
);
wwv_flow_imp.component_end;
end;
/
