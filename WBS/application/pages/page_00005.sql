prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>'Update Report'
,p_alias=>'REPORT-UPDATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Update Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(14344308352300909377)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345423183300289940)
,p_plug_name=>'Buttons Container'
,p_static_id=>'buttons-container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(14344340113263909407)
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345424047754289948)
,p_plug_name=>'Update Form'
,p_static_id=>'update-form'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14345423405720289942)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14345423183300289940)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_button_static_id=>'cancel_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-times-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14345423282522289941)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14345423183300289940)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_button_static_id=>'submit_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_confirm_message=>'Are you sure you want to <b>update</b> this report?'
,p_icon_css_classes=>'fa-check-circle-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345424277691289950)
,p_name=>'P5_FEEDBACK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14345424047754289948)
,p_prompt=>'Feedback'
,p_placeholder=>'-- Berikan tanggapan --'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(14344300039949909298)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345423510939289943)
,p_name=>'P5_HEADER_ID'
,p_item_sequence=>10
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345423692385289945)
,p_name=>'P5_NOMOR_LAPORAN'
,p_item_sequence=>20
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345424296378289951)
,p_name=>'P5_PIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14345424047754289948)
,p_prompt=>'PIC'
,p_placeholder=>'-- Select a PIC --'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT display_value, return_value',
'FROM (',
'    SELECT ''DEFAULT'' AS display_value,',
'           '''' AS return_value,',
'           0 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''HUMAN RESOURCES'' AS display_value,',
'           ''HUMAN RESOURCES'' AS return_value,',
'           1 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''INTERNAL AUDIT'' AS display_value,',
'           ''INTERNAL AUDIT'' AS return_value,',
'           1 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''LEGAL'' AS display_value,',
'           ''LEGAL'' AS return_value,',
'           1 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''IT'' AS display_value,',
'           ''IT'' AS return_value,',
'           1 AS sort_order',
'    FROM DUAL',
')',
'ORDER BY sort_order, display_value;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_imp.id(14344300039949909298)
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
 p_id=>wwv_flow_imp.id(14345424150371289949)
,p_name=>'P5_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14345424047754289948)
,p_prompt=>'Status'
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
'    SELECT ''OPEN'' AS display_value,',
'           ''OPEN'' AS return_value,',
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
'    SELECT ''REJECTED'' AS display_value,',
'           ''REJECTED'' AS return_value,',
'           4 AS sort_order',
'    FROM DUAL',
'    UNION ALL',
'    SELECT ''CLOSED'' AS display_value,',
'           ''CLOSED'' AS return_value,',
'           5 AS sort_order',
'    FROM DUAL',
')',
'ORDER BY sort_order, display_value;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14345423971767289947)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P4_NOMOR_LAPORAN'
,p_static_id=>'set-p4-nomor-laporan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT NOMOR_LAPORAN',
'INTO :P5_NOMOR_LAPORAN',
'FROM XTD_WBS',
'WHERE ID = :P5_HEADER_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65882092210848231
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14345423817417289946)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P5_HEADER_ID'
,p_static_id=>'set-p5-header-id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT ID',
'INTO :P5_HEADER_ID',
'FROM XTD_WBS',
'WHERE ID = :P5_HEADER_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65881937860848230
);
wwv_flow_imp.component_end;
end;
/
