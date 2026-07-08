prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Download Report'
,p_alias=>'REPORT-DOWNLOAD'
,p_step_title=>'Download Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(14344328733724909391)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14346762035931094938)
,p_plug_name=>'Download'
,p_static_id=>'download'
,p_region_name=>'download_laporan'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344394156784909442)
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,',
'       NOMOR_LAPORAN,',
'       CREATED_DATE AS TANGGAL_LAPORAN,',
'       SOURCE AS MEDIA_PELAPORAN,',
'       NAMA_PELAPOR,',
'       TELP_PELAPOR,',
'       EMAIL_PELAPOR,',
'       JABATAN_PELAPOR,',
'       KATEGORI_PELANGGARAN AS TINDAKAN,',
'       NAMA_TERLAPOR,',
'       JABATAN_TERLAPOR,',
'       WAKTU_KEJADIAN,',
'       LOKASI_KEJADIAN,',
'       KRONOLOGIS_KEJADIAN,',
'       STATUS,',
'       JENIS_BUKTI_PENDUKUNG,',
'       HASIL_VERIFIKASI,',
'       NO_BERITA_ACARA_TINDAK_LANJUT,',
'       TIM_INVESTIGASI,',
'       RESULT_SUMMARY,',
'       NOTES',
'FROM XTD_WBS',
'WHERE ID = :P8_HEADER_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Download'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14346762121969094939)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'XLSX'
,p_download_filename=>'Download Report &P8_NOMOR_LAPORAN. - &P8_STATUS.'
,p_enable_mail_download=>'Y'
,p_internal_uid=>67220242412653223
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346762646567094944)
,p_db_column_name=>'EMAIL_PELAPOR'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Reporter Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346763618936094954)
,p_db_column_name=>'HASIL_VERIFIKASI'
,p_display_order=>180
,p_column_identifier=>'O'
,p_column_label=>'Verification Result'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346762194098094940)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346762756241094945)
,p_db_column_name=>'JABATAN_PELAPOR'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Relationship with the Company'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346763076681094948)
,p_db_column_name=>'JABATAN_TERLAPOR'
,p_display_order=>120
,p_column_identifier=>'I'
,p_column_label=>'Accused Position'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346763500614094953)
,p_db_column_name=>'JENIS_BUKTI_PENDUKUNG'
,p_display_order=>170
,p_column_identifier=>'N'
,p_column_label=>'Supporting Evidence Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346763360105094951)
,p_db_column_name=>'KRONOLOGIS_KEJADIAN'
,p_display_order=>150
,p_column_identifier=>'L'
,p_column_label=>'Detailed Incident Chronology'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346763224612094950)
,p_db_column_name=>'LOKASI_KEJADIAN'
,p_display_order=>140
,p_column_identifier=>'K'
,p_column_label=>'Incident Location'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346970726295915726)
,p_db_column_name=>'MEDIA_PELAPORAN'
,p_display_order=>40
,p_column_identifier=>'U'
,p_column_label=>'Reporting Channel'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346762434094094942)
,p_db_column_name=>'NAMA_PELAPOR'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Reporter Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346762972238094947)
,p_db_column_name=>'NAMA_TERLAPOR'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Accused Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346762369370094941)
,p_db_column_name=>'NOMOR_LAPORAN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Report Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346970802323915727)
,p_db_column_name=>'NOTES'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Keterangan'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346763733665094955)
,p_db_column_name=>'NO_BERITA_ACARA_TINDAK_LANJUT'
,p_display_order=>190
,p_column_identifier=>'P'
,p_column_label=>'Follow-up Memo No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346763939738094957)
,p_db_column_name=>'RESULT_SUMMARY'
,p_display_order=>210
,p_column_identifier=>'R'
,p_column_label=>'Result Summary'
,p_column_type=>'STRING'
,p_static_id=>'download_laporan'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346763417491094952)
,p_db_column_name=>'STATUS'
,p_display_order=>160
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346970640821915725)
,p_db_column_name=>'TANGGAL_LAPORAN'
,p_display_order=>30
,p_column_identifier=>'T'
,p_column_label=>'Report Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD Month YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346762554947094943)
,p_db_column_name=>'TELP_PELAPOR'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Reporter Phone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346763820674094956)
,p_db_column_name=>'TIM_INVESTIGASI'
,p_display_order=>200
,p_column_identifier=>'Q'
,p_column_label=>'Investigation Team'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346762794473094946)
,p_db_column_name=>'TINDAKAN'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14346763138626094949)
,p_db_column_name=>'WAKTU_KEJADIAN'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'Incident Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14346815479916180121)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'672737'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMOR_LAPORAN:STATUS:TANGGAL_LAPORAN:MEDIA_PELAPORAN:TINDAKAN:NAMA_PELAPOR:TELP_PELAPOR:EMAIL_PELAPOR:JABATAN_PELAPOR:NAMA_TERLAPOR:JABATAN_TERLAPOR:WAKTU_KEJADIAN:LOKASI_KEJADIAN:KRONOLOGIS_KEJADIAN:JENIS_BUKTI_PENDUKUNG:HASIL_VERIFIKASI:NO_BERITA_A'
||'CARA_TINDAK_LANJUT:TIM_INVESTIGASI:RESULT_SUMMARY:NOTES'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346764037257094958)
,p_name=>'P8_HEADER_ID'
,p_item_sequence=>10
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346764250089094960)
,p_name=>'P8_NOMOR_LAPORAN'
,p_item_sequence=>20
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346764281200094961)
,p_name=>'P8_STATUS'
,p_item_sequence=>30
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346764452666094962)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P4_HEADER_ID'
,p_static_id=>'set-p4-header-id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT ID',
'INTO :P8_HEADER_ID',
'FROM XTD_WBS',
'WHERE ID = :P8_HEADER_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67222573109653246
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346764503138094963)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P8_NOMOR_LAPORAN'
,p_static_id=>'set-p8-nomor-laporan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT NOMOR_LAPORAN',
'INTO :P8_NOMOR_LAPORAN',
'FROM XTD_WBS',
'WHERE ID = :P8_HEADER_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67222623581653247
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346764661749094964)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P8_STATUS'
,p_static_id=>'set-p8-status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT STATUS',
'INTO :P8_STATUS',
'FROM XTD_WBS',
'WHERE ID = :P8_HEADER_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67222782192653248
);
wwv_flow_imp.component_end;
end;
/
