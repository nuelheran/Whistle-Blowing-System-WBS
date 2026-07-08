prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Report Detail'
,p_alias=>'REPORT-DETAIL'
,p_step_title=>'Report Detail'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Function to download a file (uses the existing download column in the Interactive Report)',
'function downloadFile(fileId) {',
'    // Cari link download di tabel Interactive Report berdasarkan data-id',
'    var downloadLink = $(''.preview-file[data-id="'' + fileId + ''"]'').closest(''tr'').find(''a[download]'');',
'    ',
'    if (downloadLink.length > 0) {',
'        // If a download link is found, click it',
'        var href = downloadLink.attr(''href'');',
'        if (href && href !== ''#'') {',
'            window.open(href, ''_blank'');',
'        } else {',
'            downloadLink[0].click();',
'        }',
'    } else {',
'        // Alternatif: gunakan URL download langsung',
'        var downloadUrl = ''f?p='' + $v(''pFlowId'') + '':4:'' + $v(''pFlowStepId'') + ''::::P4_HEADER_ID:'' + fileId;',
'        downloadUrl += ''&clear=IRR'';',
'        ',
'        // Trigger download via hidden iframe',
'        var iframe = document.createElement(''iframe'');',
'        iframe.style.display = ''none'';',
'        iframe.src = downloadUrl;',
'        document.body.appendChild(iframe);',
'        ',
'        setTimeout(function() {',
'            document.body.removeChild(iframe);',
'        }, 5000);',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// // Function to preview a file',
'// function previewFile(fileId, fileName, mimeType) {',
'//     // Create modal if not exists',
'//     if (!$(''#previewModal'').length) {',
'//         $(''body'').append(`',
'//             <div id="previewModal" class="preview-modal" style="display:none;">',
'//                 <div class="preview-modal-overlay"></div>',
'//                 <div class="preview-modal-container">',
'//                     <div class="preview-modal-header">',
'//                         <h3><i class="fa fa-eye"></i> Preview: <span id="previewFileName"></span></h3>',
'//                         <button class="preview-modal-close" onclick="$(''#previewModal'').hide()">&times;</button>',
'//                     </div>',
'//                     <div class="preview-modal-body">',
'//                         <div id="previewContent" class="preview-content">',
'//                             <div class="preview-loading">',
'//                                 <i class="fa fa-spinner fa-spin fa-2x"></i>',
'//                                 <p>Loading preview...</p>',
'//                             </div>',
'//                         </div>',
'//                     </div>',
'//                 </div>',
'//             </div>',
'//         `);',
'        ',
'//         // Close modal when clicking overlay',
'//         $(''.preview-modal-overlay'').on(''click'', function() {',
'//             $(''#previewModal'').hide();',
'//         });',
'//     }',
'    ',
'//     // Set filename',
'//     $(''#previewFileName'').text(fileName);',
'    ',
'//     // Show modal',
'//     $(''#previewModal'').show();',
'    ',
'//     // Show loading',
'//     $(''#previewContent'').html(`',
'//         <div class="preview-loading">',
'//             <i class="fa fa-spinner fa-spin fa-2x"></i>',
'//             <p>Loading preview...</p>',
'//         </div>',
'//     `);',
'    ',
'//     // Call AJAX to get file',
'//     apex.server.process(''GET_FILE_PREVIEW'', {',
'//         x01: fileId',
'//     }, {',
'//         success: function(data) {',
'//             if (!data.success) {',
'//                 $(''#previewContent'').html(`',
'//                     <div class="preview-error">',
'//                         <i class="fa fa-exclamation-triangle fa-2x"></i>',
'//                         <p>Error: ${data.message || ''Failed to load file''}</p>',
'//                     </div>',
'//                 `);',
'//                 return;',
'//             }',
'            ',
'//             var content = '''';',
'            ',
'//             // Handle based on MIME type',
'//             if (data.mime_type && data.mime_type.startsWith(''image/'')) {',
'//                 // Display image',
'//                 content = `<img src="${data.file_data}" class="preview-image" alt="${data.file_name}">`;',
'//             } ',
'//             else if (data.mime_type === ''application/pdf'') {',
'//                 // Display PDF',
'//                 content = `<iframe src="${data.file_data}" class="preview-pdf"></iframe>`;',
'//             }',
'//             else if (data.mime_type && data.mime_type.startsWith(''text/'')) {',
'//                 // Display text',
'//                 content = `<pre class="preview-text">${escapeHtml(data.file_content)}</pre>`;',
'//             }',
'//             else {',
'//                 // Other file types - show download option',
'//                 content = `',
'//                     <div class="preview-unsupported">',
'//                         <i class="fa fa-file-o fa-3x"></i>',
'//                         <p>Preview not available for ${data.mime_type || ''this file type''}</p>',
'//                         <button onclick="downloadFile(${fileId})" class="preview-download-btn">',
'//                             <i class="fa fa-download"></i> Download File',
'//                         </button>',
'//                     </div>',
'//                 `;',
'//             }',
'            ',
'//             $(''#previewContent'').html(content);',
'//         },',
'//         error: function() {',
'//             $(''#previewContent'').html(`',
'//                 <div class="preview-error">',
'//                     <i class="fa fa-exclamation-triangle fa-2x"></i>',
'//                     <p>Failed to load preview. Please try again.</p>',
'//                 </div>',
'//             `);',
'//         }',
'//     });',
'// }',
'',
'// // Helper function to escape HTML',
'// function escapeHtml(text) {',
'//     if (!text) return '''';',
'//     var div = document.createElement(''div'');',
'//     div.appendChild(document.createTextNode(text));',
'//     return div.innerHTML;',
'// }',
'',
'// // Function to download a file (uses the existing download column)',
'// function downloadFile(fileId) {',
'//     // Trigger download from existing IR download column',
'//     // You can also create a direct download link',
'//     window.location.href = ''f?p='' + $v(''pFlowId'') + '':DOWNLOAD_FILE:'' + $v(''pFlowStepId'') + ''::::P_FILE_ID:'' + fileId;',
'// }',
'',
'// // Event handler for preview links',
'// $(document).on(''click'', ''.preview-file'', function(e) {',
'//     e.preventDefault();',
'//     var fileId = $(this).data(''id'');',
'//     var fileName = $(this).data(''filename'');',
'//     var mimeType = $(this).data(''mimetype'');',
'//     previewFile(fileId, fileName, mimeType);',
'// });',
'',
'// Function to preview a file',
'function previewFile(fileId, fileName, mimeType) {',
'    console.log(''Preview called with:'', {',
'        fileId: fileId,',
'        fileName: fileName,',
'        mimeType: mimeType',
'    });',
'    ',
'    // Create modal if not exists',
'    if (!$(''#previewModal'').length) {',
'        $(''body'').append(`',
'            <div id="previewModal" class="preview-modal" style="display:none;">',
'                <div class="preview-modal-overlay"></div>',
'                <div class="preview-modal-container">',
'                    <div class="preview-modal-header">',
'                        <h3><i class="fa fa-eye"></i> Preview: <span id="previewFileName"></span></h3>',
'                        <button class="preview-modal-close" onclick="$(''#previewModal'').hide()">&times;</button>',
'                    </div>',
'                    <div class="preview-modal-body">',
'                        <div id="previewContent" class="preview-content">',
'                            <div class="preview-loading">',
'                                <i class="fa fa-spinner fa-spin fa-2x"></i>',
'                                <p>Loading preview...</p>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        `);',
'        ',
'        // Close modal when clicking overlay',
'        $(''.preview-modal-overlay'').on(''click'', function() {',
'            $(''#previewModal'').hide();',
'        });',
'    }',
'    ',
'    // Set filename',
'    $(''#previewFileName'').text(fileName);',
'    ',
'    // Show modal',
'    $(''#previewModal'').show();',
'    ',
'    // Show loading',
'    $(''#previewContent'').html(`',
'        <div class="preview-loading">',
'            <i class="fa fa-spinner fa-spin fa-2x"></i>',
'            <p>Loading preview...</p>',
'        </div>',
'    `);',
'    ',
'    // Call AJAX to get file',
'    apex.server.process(''GET_FILE_PREVIEW'', {',
'        x01: fileId',
'    }, {',
'        success: function(data) {',
'            console.log(''AJAX Response:'', data); // Debug: inspect the response in the console',
'            ',
'            if (!data.success) {',
'                $(''#previewContent'').html(`',
'                    <div class="preview-error">',
'                        <i class="fa fa-exclamation-triangle fa-2x"></i>',
'                        <p>Error: ${data.message || ''Failed to load file''}</p>',
'                    </div>',
'                `);',
'                return;',
'            }',
'            ',
'            var content = '''';',
'            var mimeTypeFromServer = data.file_mime_type || mimeType;',
'            ',
'            console.log(''Processing MIME type:'', mimeTypeFromServer); // Debug',
'            ',
'            // Handle based on MIME type - perbaiki pengecekan',
'            if (mimeTypeFromServer && (mimeTypeFromServer.startsWith(''image/'') || mimeTypeFromServer.indexOf(''image'') !== -1)) {',
'                // Display image',
'                content = `<img src="${data.file_data}" class="preview-image" alt="${data.file_name}" style="max-width:100%; max-height:70vh;">`;',
'            } ',
'            else if (mimeTypeFromServer && (mimeTypeFromServer === ''application/pdf'' || mimeTypeFromServer.indexOf(''pdf'') !== -1)) {',
'                // Display PDF',
'                content = `<iframe src="${data.file_data}" class="preview-pdf" style="width:100%; height:70vh; border:none;"></iframe>`;',
'            }',
'            else if (mimeTypeFromServer && (mimeTypeFromServer.startsWith(''text/'') || mimeTypeFromServer.indexOf(''text'') !== -1)) {',
'                // Display text',
'                content = `<pre class="preview-text" style="background:#f5f5f5; padding:15px; overflow:auto; max-height:70vh;">${escapeHtml(data.file_content || ''No content'')}</pre>`;',
'            }',
'            else {',
'                // Other file types - show download option with more info',
'                console.log(''Unhandled MIME type:'', mimeTypeFromServer);',
'                content = `',
'                    <div class="preview-unsupported">',
'                        <i class="fa fa-file-o fa-3x"></i>',
'                        <p>Preview not available for: ${mimeTypeFromServer || ''unknown file type''}</p>',
'                        <p>File: ${data.file_name || fileName}</p>',
'                        <button onclick="downloadFile(${fileId})" class="preview-download-btn" style="margin-top:15px; padding:8px 16px; background:#007bff; color:white; border:none; border-radius:4px; cursor:pointer;">',
'                            <i class="fa fa-download"></i> Download File',
'                        </button>',
'                    </div>',
'                `;',
'            }',
'            ',
'            $(''#previewContent'').html(content);',
'        },',
'        error: function(xhr, status, error) {',
'            console.error(''AJAX Error:'', {xhr: xhr, status: status, error: error});',
'            $(''#previewContent'').html(`',
'                <div class="preview-error">',
'                    <i class="fa fa-exclamation-triangle fa-2x"></i>',
'                    <p>Failed to load preview. Please try again.</p>',
'                    <p>Error: ${error}</p>',
'                    <button onclick="downloadFile(${fileId})" class="preview-download-btn">',
'                        <i class="fa fa-download"></i> Download File',
'                    </button>',
'                </div>',
'            `);',
'        }',
'    });',
'}',
'',
'// Helper function to escape HTML',
'function escapeHtml(text) {',
'    if (!text) return '''';',
'    var div = document.createElement(''div'');',
'    div.appendChild(document.createTextNode(text));',
'    return div.innerHTML;',
'}',
'',
'// Function to download a file',
'function downloadFile(fileId) {',
'    window.location.href = ''f?p='' + $v(''pFlowId'') + '':DOWNLOAD_FILE:'' + $v(''pFlowStepId'') + ''::::P_FILE_ID:'' + fileId;',
'}',
'',
'// Event handler for preview links',
'$(document).on(''click'', ''.preview-file'', function(e) {',
'    e.preventDefault();',
'    var $this = $(this);',
'    var fileId = $this.data(''id'');',
'    var fileName = $this.data(''filename'');',
'    var mimeType = $this.data(''mimetype'');',
'    ',
'    console.log(''Preview link clicked:'', {',
'        fileId: fileId,',
'        fileName: fileName,',
'        mimeType: mimeType',
'    });',
'    ',
'    previewFile(fileId, fileName, mimeType);',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P4_NAMA_PELAPOR_LABEL, #P4_TELP_PELAPOR_LABEL, ',
'#P4_EMAIL_PELAPOR_LABEL, #P4_JABATAN_PELAPOR_LABEL,',
'#P4_NAMA_TERLAPOR_LABEL, #P4_JABATAN_TERLAPOR_LABEL,',
'#P4_WAKTU_KEJADIAN_LABEL, #P4_LOKASI_KEJADIAN_LABEL,',
'#P4_KRONOLOGIS_KEJADIAN_LABEL, #P4_JENIS_BUKTI_LABEL, ',
'#P4_JENIS_BUKTI_VERIFIED_LABEL, #P4_HASIL_VERIFIKASI_VERIFIED_LABEL,',
'#P4_KATEGORI_PELANGGARAN_VERIFIED_LABEL,',
'#P4_NO_BERITA_ACARA_VERIFIED_LABEL, #P4_TIM_INVESTIGASI_VERIFIED_LABEL,',
'#P4_RESULT_SUMMARY_VERIFIED_LABEL, #P4_HASIL_VERIFIKASI_LABEL, ',
'#P4_KEKUATAN_BUKTI_LABEL, #P4_HASIL_DISKUSI_LABEL,',
'#P4_TANGGAL_DISKUSI_LABEL, #P4_BERITA_ACARA_LABEL,',
'#P4_STATUS_INVESTIGASI_LABEL, #P4_TANGGAL_INVESTIGASI_LABEL,',
'#P4_RESULT_SUMMARY_LABEL, #P4_NO_BERITA_ACARA_LABEL,',
'#P4_TIM_INVESTIGASI_LABEL, #P4_KATEGORI_PELANGGARAN_LABEL {',
'    position: relative;',
'    display: flex;',
'    /* padding-top: 20px; */',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-family: ''Arial Rounded MT Bold'', ''Verdana'', sans-serif;',
'    font-size: 14px;',
'    font-weight: bold;',
'    border-style: inherit;',
'}',
'',
'#P4_NAMA_PELAPOR, #P4_TELP_PELAPOR, ',
'#P4_EMAIL_PELAPOR, #P4_JABATAN_PELAPOR,',
'#P4_NAMA_TERLAPOR, #P4_JABATAN_TERLAPOR,',
'#P4_WAKTU_KEJADIAN, #P4_LOKASI_KEJADIAN,',
'#P4_KRONOLOGIS_KEJADIAN, #P4_JENIS_BUKTI, ',
'#P4_JENIS_BUKTI_VERIFIED, #P4_HASIL_VERIFIKASI_VERIFIED,',
'#P4_NO_BERITA_ACARA_VERIFIED, #P4_TIM_INVESTIGASI_VERIFIED, ',
'#P4_RESULT_SUMMARY_VERIFIED, #P4_HASIL_VERIFIKASI,',
'#P4_KEKUATAN_BUKTI, #P4_HASIL_DISKUSI,',
'#P4_TANGGAL_DISKUSI, #P4_BERITA_ACARA,',
'#P4_STATUS_INVESTIGASI, #P4_TANGGAL_INVESTIGASI,',
'#P4_RESULT_SUMMARY, #P4_NO_BERITA_ACARA,',
'#P4_TIM_INVESTIGASI, #P4_KATEGORI_PELANGGARAN,',
'#P4_KATEGORI_PELANGGARAN_VERIFIED {',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P4_NAMA_PELAPOR_VALUE, #P4_TELP_PELAPOR_VALUE, ',
'#P4_EMAIL_PELAPOR_VALUE, #P4_JABATAN_PELAPOR_VALUE,',
'#P4_NAMA_TERLAPOR_VALUE, #P4_JABATAN_TERLAPOR_VALUE,',
'#P4_WAKTU_KEJADIAN_VALUE, #P4_LOKASI_KEJADIAN_VALUE,',
'#P4_KRONOLOGIS_KEJADIAN_VALUE, #P4_JENIS_BUKTI_VERIFIED_VALUE,',
'#P4_HASIL_VERIFIKASI_VERIFIED_VALUE, #P4_NO_BERITA_ACARA_VERIFIED_VALUE,',
'#P4_TIM_INVESTIGASI_VERIFIED_VALUE, #P4_RESULT_SUMMARY_VERIFIED_VALUE,',
'#P4_KATEGORI_PELANGGARAN_VERIFIED_VALUE, #P4_NO_BERITA_ACARA_VALUE {',
'    font-weight: bold;',
'    border-style: double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    min-width: 0;',
'    display: block;',
'    width: 100%;',
'}',
'',
'#P4_JENIS_BUKTI_VALUE,  #P4_HASIL_VERIFIKASI_VALUE,',
'#P4_TIM_INVESTIGASI_VALUE, #P4_RESULT_SUMMARY_VALUE, ',
'#P4_KATEGORI_PELANGGARAN_VALUE {',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'}',
'',
'#P4_NAMA_PELAPOR_VALUE:hover, #P4_TELP_PELAPOR_VALUE:hover, ',
'#P4_EMAIL_PELAPOR_VALUE:hover, #P4_JABATAN_PELAPOR_VALUE:hover,',
'#P4_NAMA_TERLAPOR_VALUE:hover, #P4_JABATAN_TERLAPOR_VALUE:hover,',
'#P4_WAKTU_KEJADIAN_VALUE:hover, #P4_LOKASI_KEJADIAN_VALUE:hover,',
'#P4_KRONOLOGIS_KEJADIAN_VALUE:hover, #P4_JENIS_BUKTI_VERIFIED_VALUE:hover,',
'#P4_HASIL_VERIFIKASI_VERIFIED_VALUE:hover, #P4_NO_BERITA_ACARA_VERIFIED_VALUE:hover,',
'#P4_TIM_INVESTIGASI_VERIFIED_VALUE:hover, #P4_TIM_INVESTIGASI_VERIFIED_VALUE:hover,',
'#P4_RESULT_SUMMARY_VERIFIED_VALUE:hover, #P4_KATEGORI_PELANGGARAN_VERIFIED_VALUE:hover {',
'    overflow: visible;',
'    white-space: normal;',
'    z-index: 1000;',
'    background-color: #dbd5d5;',
'}',
'',
'#P4_NAMA_PELAPOR_VALUE.show-full-text, #P4_TELP_PELAPOR_VALUE.show-full-text, ',
'#P4_EMAIL_PELAPOR_VALUE.show-full-text, #P4_JABATAN_PELAPOR_VALUE.show-full-text,',
'#P4_NAMA_TERLAPOR_VALUE.show-full-text, #P4_JABATAN_TERLAPOR_VALUE.show-full-text,',
'#P4_WAKTU_KEJADIAN_VALUE.show-full-text, #P4_LOKASI_KEJADIAN_VALUE.show-full-text,',
'#P4_KRONOLOGIS_KEJADIAN_VALUE.show-full-text, #P4_JENIS_BUKTI_VERIFIED_VALUE.show-full-text,',
'#P4_HASIL_VERIFIKASI_VERIFIED_VALUE.show-full-text, #P4_NO_BERITA_ACARA_VERIFIED_VALUE.show-full-text,',
'#P4_TIM_INVESTIGASI_VERIFIED_VALUE.show-full-text, #P4_RESULT_SUMMARY_VERIFIED_VALUE.show-full-text,',
'#P4_KATEGORI_PELANGGARAN_VERIFIED_VALUE.show-full-text {',
'    overflow: visible;',
'    white-space: normal;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'/* ----------------- Global Body (aurora, match app background) ----------------- */',
'body {',
'  background: radial-gradient(1100px 700px at 8% -12%, rgba(45,212,191,0.30), transparent 60%), radial-gradient(1000px 650px at 108% 8%, rgba(34,211,238,0.24), transparent 55%), radial-gradient(900px 900px at 50% 118%, rgba(13,148,136,0.22), transpar'
||'ent 62%), linear-gradient(160deg, #071a1e 0%, #0b2b30 45%, #0d3a3d 100%) !important;',
'  background-attachment: fixed !important;',
'  font-family: system-ui, -apple-system, ''Segoe UI'', Roboto, ''Helvetica Neue'', sans-serif;',
'}',
'',
'.container {',
'  max-width: 1280px;',
'  margin: 0 auto;',
'  padding: 0 20px;',
'}',
'',
'/* --------------------- Page Title bar - transparent over aurora --------------------- */',
'.t-Body-title {',
'  background: transparent !important;',
'  box-shadow: none !important;',
'  border-bottom: none !important;',
'  padding: 10px 14px 0 14px !important;',
'}',
'',
'.t-BreadcrumbRegion {',
'  background: transparent !important;',
'  border: none !important;',
'  box-shadow: none !important;',
'}',
'',
'.t-Breadcrumb-item a.t-Breadcrumb-label {',
'  color: rgba(203,236,231,0.75) !important;',
'}',
'',
'.t-Breadcrumb-item a.t-Breadcrumb-label:hover {',
'  color: #7df3e1 !important;',
'}',
'',
'.t-Breadcrumb-item.is-active .t-Breadcrumb-label {',
'  color: #2dd4bf !important;',
'  font-weight: 700;',
'  text-shadow: 0 0 12px rgba(45,212,191,0.35);',
'}',
'',
'/* ============ REGIONS: dark liquid-glass cards ============ */',
'.t-Region {',
'  background: transparent !important;',
'  box-shadow: none !important;',
'  border: none !important;',
'  -webkit-backdrop-filter: none !important;',
'  backdrop-filter: none !important;',
'  overflow: visible !important;',
'}',
'',
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
'',
'.t-Region-bodyWrap:hover {',
'  border-color: rgba(45,212,191,0.35) !important;',
'  box-shadow: 0 34px 70px -18px rgba(0,0,0,0.60), inset 0 1px 0 rgba(255,255,255,0.20), 0 0 26px rgba(45,212,191,0.18) !important;',
'}',
'',
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
'',
'.t-Region-body { position: relative; }',
'',
'/* Region header: transparent over the aurora, light glowing title */',
'.t-Region-header {',
'  background: transparent !important;',
'  border-bottom: 1px solid rgba(255,255,255,0.08) !important;',
'  align-items: center;',
'  padding: 12px 4px !important;',
'}',
'',
'.t-Region-header .t-Region-title,',
'.t-Region .t-Region-title {',
'  color: #eafffb !important;',
'  text-shadow: 0 0 14px rgba(45,212,191,0.4);',
'}',
'',
'/* ============ FORM LABELS on dark glass ============ */',
'.t-Form-fieldContainer {',
'  margin-bottom: 20px;',
'}',
'',
'.t-Region-bodyWrap .t-Form-label {',
'  font-weight: 600;',
'  color: #a7dcd4 !important;',
'  font-size: 13px;',
'}',
'',
'/* ============ DISPLAY ONLY VALUES (dark glass) ============ */',
'.apex-item-display-only {',
'  background: rgba(7,26,30,0.50) !important;',
'  -webkit-backdrop-filter: blur(12px);',
'  backdrop-filter: blur(12px);',
'  border: 1px solid rgba(255,255,255,0.16) !important;',
'  border-radius: 14px !important;',
'  padding: 10px 14px;',
'  font-size: 14px;',
'  color: #e2fdf9 !important;',
'  transition: all 0.3s ease !important;',
'  font-weight: 500;',
'}',
'',
'.apex-item-display-only:hover {',
'  border-color: rgba(45,212,191,0.45) !important;',
'  background: rgba(10,34,38,0.62) !important;',
'}',
'',
'/* ============ SECTION HEADERS ============ */',
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
'',
'.form-section-header2 {',
'  padding: 7px 20px 7px 2px;',
'  background: transparent;',
'  font-size: 15px;',
'  font-weight: 600;',
'  color: #eafffb !important;',
'  text-shadow: 0 0 14px rgba(45,212,191,0.4);',
'  display: flex;',
'  align-items: center;',
'  gap: 11px;',
'}',
'',
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
'',
'/* ----------------- Info Banner (dark liquid glass) ----------------- */',
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
'',
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
'',
'.info-banner-icon {',
'  font-size: 40px;',
'  flex-shrink: 0;',
'  margin-top: 4px;',
'  animation: float 4s ease-in-out infinite;',
'}',
'',
'.info-banner h2 {',
'  font-size: 20px;',
'  font-weight: 700;',
'  margin-bottom: 8px;',
'  color: #eafffb;',
'  text-shadow: 0 0 14px rgba(45,212,191,0.35);',
'}',
'',
'.info-banner p {',
'  font-size: 13px;',
'  line-height: 1.7;',
'  opacity: .9;',
'  color: rgba(203,236,231,0.9) !important;',
'}',
'',
'.info-banner strong {',
'  color: #7df3e1 !important;',
'}',
'',
'@keyframes fadeIn {',
'  from { opacity: 0; }',
'  to { opacity: 1; }',
'}',
'',
'@keyframes float {',
'  0% { transform: translateY(0px); }',
'  50% { transform: translateY(-5px); }',
'  100% { transform: translateY(0px); }',
'}',
'',
'/* Status Badge - dark glass version */',
'.status-container {',
'  display: flex;',
'  align-items: center;',
'  margin-left: 20px;',
'  flex-shrink: 0;',
'}',
'',
'.status-badge {',
'  display: inline-flex;',
'  align-items: center;',
'  gap: 8px;',
'  padding: 8px 18px;',
'  border-radius: 40px;',
'  font-size: 14px;',
'  font-weight: 600;',
'  white-space: nowrap;',
'  transition: all 0.3s ease;',
'  background: rgba(255,255,255,0.10) !important;',
'  border: 1px solid rgba(255,255,255,0.20) !important;',
'  color: #eafffb !important;',
'  backdrop-filter: blur(8px);',
'}',
'',
'.status-indicator {',
'  width: 10px;',
'  height: 10px;',
'  border-radius: 50%;',
'  display: inline-block;',
'  animation: pulse 2s infinite;',
'}',
'',
'@keyframes pulse {',
'  0% { box-shadow: 0 0 0 0 rgba(45,212,191,0.4); }',
'  70% { box-shadow: 0 0 0 6px rgba(45,212,191,0); }',
'  100% { box-shadow: 0 0 0 0 rgba(45,212,191,0); }',
'}',
'',
'/* Status colors */',
'.status-received .status-indicator { background-color: #14b8a6; }',
'.status-on_review .status-indicator { background-color: #ff9800; }',
'.status-on_investigation .status-indicator { background-color: #e91e63; }',
'.status-closed .status-indicator { background-color: #4caf50; }',
'.status-cancelled .status-indicator { background-color: #f44336; }',
'',
'.status-badge:hover {',
'  transform: translateY(-2px);',
'  border-color: rgba(45,212,191,0.4) !important;',
'  box-shadow: 0 8px 25px rgba(45,212,191,0.15);',
'}',
'',
'/* ============ BUTTONS ============ */',
'/* Back button - ghost glass */',
'#back_button {',
'  background: rgba(255,255,255,0.06) !important;',
'  -webkit-backdrop-filter: blur(8px);',
'  backdrop-filter: blur(8px);',
'  border: 1px solid rgba(255,255,255,0.22) !important;',
'  color: #b9d9d4 !important;',
'  transition: all 0.3s ease;',
'  display: flex;',
'  align-items: center;',
'  justify-content: center;',
'  box-shadow: 0 4px 12px rgba(2,24,26,0.3);',
'}',
'',
'#back_button .t-Icon {',
'  opacity: 0;',
'  transform: scale(0);',
'  transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#back_button:hover {',
'  background: rgba(45,212,191,0.12) !important;',
'  border-color: #2dd4bf !important;',
'  color: #2dd4bf !important;',
'  transform: translateY(-2px);',
'  box-shadow: 0 8px 20px rgba(2,24,26,0.4);',
'}',
'',
'#back_button:hover .t-Icon {',
'  opacity: 1;',
'  transform: scale(1);',
'}',
'',
'#back_button .t-Button-label {',
'  margin-left: -25px;',
'  transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#back_button:hover .t-Button-label {',
'  margin-left: 0px;',
'}',
'',
'/* Update button - teal gradient */',
'#update_button {',
'  display: flex;',
'  align-items: center;',
'  justify-content: center;',
'  background: linear-gradient(135deg, #2dd4bf, #0f766e) !important;',
'  border: 1px solid rgba(255,255,255,0.25) !important;',
'  color: #ffffff;',
'  transition: all 0.3s ease;',
'  box-shadow: 0 4px 15px rgba(45,212,191,0.3);',
'}',
'',
'#update_button .t-Icon {',
'  opacity: 0;',
'  transform: scale(0);',
'  transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#update_button:hover {',
'  background: linear-gradient(135deg, #5eead4, #0d9488) !important;',
'  transform: translateY(-2px);',
'  box-shadow: 0 8px 25px rgba(45,212,191,0.5), 0 0 24px rgba(34,211,238,0.25);',
'}',
'',
'#update_button:hover .t-Icon {',
'  opacity: 1;',
'  transform: scale(1);',
'}',
'',
'#update_button .t-Button-label {',
'  margin-left: -25px;',
'  transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#update_button:hover .t-Button-label {',
'  margin-left: 0px;',
'}',
'',
'/* Export button - emerald gradient with dark glass */',
'#export_button {',
'  display: flex;',
'  align-items: center;',
'  justify-content: center;',
'  background: linear-gradient(135deg, #10b981, #059669) !important;',
'  border: 1px solid rgba(255,255,255,0.25) !important;',
'  color: #ffffff;',
'  transition: all 0.3s ease;',
'  box-shadow: 0 4px 15px rgba(16,185,129,0.3);',
'  border-radius: 10px;',
'  padding: 8px 20px;',
'  font-weight: 600;',
'  font-size: 13px;',
'  position: relative;',
'  overflow: hidden;',
'}',
'',
'#export_button::before {',
'  content: '''';',
'  position: absolute;',
'  top: 0;',
'  left: -100%;',
'  width: 100%;',
'  height: 100%;',
'  background: linear-gradient(90deg, transparent, rgba(255,255,255,0.25), transparent);',
'  transition: left 0.5s ease;',
'}',
'',
'#export_button:hover::before {',
'  left: 100%;',
'}',
'',
'#export_button:hover {',
'  background: linear-gradient(135deg, #059669, #047857) !important;',
'  transform: translateY(-2px);',
'  box-shadow: 0 8px 25px rgba(16,185,129,0.4);',
'}',
'',
'#export_button .t-Button-label {',
'  font-weight: 600;',
'}',
'',
'/* Claim button - amber gradient with dark glass */',
'#claim_button {',
'  display: flex;',
'  align-items: center;',
'  justify-content: center;',
'  background: linear-gradient(135deg, #f59e0b, #d97706) !important;',
'  border: 1px solid rgba(255,255,255,0.25) !important;',
'  color: #ffffff;',
'  transition: all 0.3s ease;',
'  box-shadow: 0 4px 15px rgba(245,158,11,0.3);',
'  border-radius: 10px;',
'  padding: 8px 20px;',
'  font-weight: 600;',
'  font-size: 13px;',
'  position: relative;',
'  overflow: hidden;',
'}',
'',
'#claim_button::before {',
'  content: '''';',
'  position: absolute;',
'  top: 0;',
'  left: -100%;',
'  width: 100%;',
'  height: 100%;',
'  background: linear-gradient(90deg, transparent, rgba(255,255,255,0.3), transparent);',
'  transition: left 0.5s ease;',
'}',
'',
'#claim_button:hover::before {',
'  left: 100%;',
'}',
'',
'#claim_button:hover {',
'  background: linear-gradient(135deg, #d97706, #b45309) !important;',
'  transform: translateY(-2px);',
'  box-shadow: 0 8px 25px rgba(245,158,11,0.4);',
'}',
'',
'#claim_button:disabled {',
'  background: linear-gradient(135deg, #9ca3af, #6b7280) !important;',
'  cursor: not-allowed;',
'  opacity: 0.7;',
'  transform: none;',
'  box-shadow: none;',
'}',
'',
'/* Verify button */',
'#verify_button {',
'  display: flex;',
'  align-items: center;',
'  justify-content: center;',
'  background: linear-gradient(135deg, #00561b, #059669) !important;',
'  border: 1px solid rgba(255,255,255,0.25) !important;',
'  color: #ffffff;',
'  transition: all 0.3s ease;',
'  box-shadow: 0 4px 15px rgba(5,150,105,0.3);',
'}',
'',
'#verify_button:hover {',
'  background: linear-gradient(135deg, #059669, #10b981) !important;',
'  transform: translateY(-2px);',
'  box-shadow: 0 8px 25px rgba(5,150,105,0.4);',
'}',
'',
'#verify_button .t-Icon {',
'  transition: all 0.3s ease;',
'}',
'',
'#verify_button:hover .t-Icon {',
'  animation: checkPulse 0.8s ease-in-out infinite;',
'}',
'',
'@keyframes checkPulse {',
'  0%, 100% { transform: scale(1); }',
'  50% { transform: scale(1.25); }',
'}',
'',
'/* Rollback button - red gradient */',
'#rollback_status_button {',
'  display: flex;',
'  align-items: center;',
'  justify-content: center;',
'  background: linear-gradient(135deg, #dc2626, #b91c1c) !important;',
'  border: 1px solid rgba(255,255,255,0.25) !important;',
'  color: #ffffff;',
'  transition: all 0.3s ease;',
'  box-shadow: 0 4px 15px rgba(220,38,38,0.3);',
'}',
'',
'#rollback_status_button:hover {',
'  background: linear-gradient(135deg, #ef4444, #dc2626) !important;',
'  transform: translateY(-2px);',
'  box-shadow: 0 8px 25px rgba(220,38,38,0.4);',
'}',
'',
'/* ============ INTERACTIVE REPORT - dark glass ============ */',
'.a-IRR-table {',
'  background: transparent !important;',
'}',
'',
'.a-IRR-table th {',
'  background: rgba(45,212,191,0.12) !important;',
'  color: #eafffb !important;',
'  border-bottom: 1px solid rgba(255,255,255,0.10) !important;',
'  padding: 10px 12px !important;',
'  font-weight: 600;',
'}',
'',
'.a-IRR-table td {',
'  background: rgba(7,26,30,0.30) !important;',
'  color: #d6efeb !important;',
'  border-bottom: 1px solid rgba(255,255,255,0.06) !important;',
'  padding: 10px 12px !important;',
'}',
'',
'.a-IRR-table tr:hover td {',
'  background: rgba(45,212,191,0.08) !important;',
'}',
'',
'/* ============ FILE DOWNLOAD LINKS ============ */',
'.a-IRR-table a[download] {',
'  background: rgba(45,212,191,0.12) !important;',
'  border: 1px solid rgba(255,255,255,0.16) !important;',
'  color: #7df3e1 !important;',
'  padding: 4px 12px;',
'  border-radius: 8px;',
'  text-decoration: none;',
'  font-size: 12px;',
'  font-weight: 500;',
'  transition: all 0.3s ease;',
'  display: inline-block;',
'}',
'',
'.a-IRR-table a[download]:hover {',
'  background: rgba(45,212,191,0.25) !important;',
'  border-color: #2dd4bf !important;',
'  transform: translateY(-1px);',
'  box-shadow: 0 4px 12px rgba(45,212,191,0.2);',
'}',
'',
'/* ============ CUSTOM SCROLLBAR ============ */',
'::-webkit-scrollbar {',
'  width: 8px;',
'  height: 8px;',
'}',
'',
'::-webkit-scrollbar-track {',
'  background: rgba(7,26,30,0.45);',
'  border-radius: 10px;',
'}',
'',
'::-webkit-scrollbar-thumb {',
'  background: linear-gradient(135deg, #14b8a6, #22d3ee);',
'  border-radius: 10px;',
'}',
'',
'::-webkit-scrollbar-thumb:hover {',
'  background: linear-gradient(135deg, #2dd4bf, #22d3ee);',
'}',
'',
'/* ============ RESPONSIVE ============ */',
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
'  .status-container {',
'    margin-left: 0;',
'    margin-top: 15px;',
'    width: 100%;',
'    justify-content: center;',
'  }',
'',
'  .status-badge {',
'    width: 100%;',
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
'  .t-Form-labelContainer {',
'    flex-wrap: wrap;',
'  }',
'',
'  .t-ButtonRegion-wrap {',
'    flex-wrap: wrap;',
'    gap: 10px;',
'  }',
'',
'  .t-ButtonRegion-col--left,',
'  .t-ButtonRegion-col--right {',
'    flex: 1;',
'  }',
'',
'  .t-ButtonRegion-buttons {',
'    display: flex;',
'    flex-wrap: wrap;',
'    gap: 8px;',
'    justify-content: center;',
'  }',
'',
'  #export_button .t-Button-label {',
'    display: inline-block;',
'  }',
'}',
'',
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
'',
'  #export_button .t-Button-label,',
'  #claim_button .t-Button-label {',
'    display: none;',
'  }',
'',
'  #export_button,',
'  #claim_button {',
'    padding: 8px 12px;',
'  }',
'',
'  #export_button .t-Icon,',
'  #claim_button .t-Icon {',
'    margin: 0;',
'    font-size: 16px;',
'  }',
'}',
'',
'@media (max-width: 1023px) {',
'  .row > [class*="col-"] {',
'    width: 50%;',
'  }',
'',
'  .row > .col-9,',
'  .row > .col-12 {',
'    width: 100%;',
'  }',
'}',
'',
'@media (max-width: 767px) {',
'  .row > [class*="col-"] {',
'    width: 100% !important;',
'  }',
'}',
'',
'/* Print styles */',
'@media print {',
'  body {',
'    background: white !important;',
'  }',
'',
'  .t-Header,',
'  .t-ButtonRegion,',
'  .t-BreadcrumbRegion,',
'  .t-Footer,',
'  .status-container,',
'  #export_button,',
'  #back_button,',
'  #verify_button,',
'  #rollback_status_button,',
'  #claim_button,',
'  #update_button {',
'    display: none !important;',
'  }',
'',
'  .t-Region-bodyWrap {',
'    box-shadow: none !important;',
'    border: 1px solid #ddd !important;',
'    background: white !important;',
'    backdrop-filter: none !important;',
'  }',
'',
'  .t-Region-bodyWrap .t-Form-label {',
'    color: #333 !important;',
'  }',
'',
'  .apex-item-display-only {',
'    background: #f5f5f5 !important;',
'    border-color: #ddd !important;',
'    color: #333 !important;',
'  }',
'',
'  .info-banner {',
'    border: 1px solid #ccc !important;',
'    background: #f9f9f9 !important;',
'    backdrop-filter: none !important;',
'  }',
'',
'  .info-banner h2 {',
'    color: #333 !important;',
'  }',
'',
'  .info-banner p {',
'    color: #333 !important;',
'  }',
'',
'  .a-IRR-table th {',
'    background: #e0e0e0 !important;',
'    color: #333 !important;',
'  }',
'',
'  .a-IRR-table td {',
'    background: white !important;',
'    color: #333 !important;',
'  }',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'/* ============ INTERACTIVE REPORT - Dark Liquid Glass ============ */',
'/* IR region shell - dark glass card */',
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
'',
'/* Grid shell transparent so the region glass shows through */',
'.a-IRR, .a-IRR-body, .a-IRR-header, .a-IRR-contentContainer, .a-IRR-gridView,',
'.a-GV, .a-GV-w-hdr, .a-GV-w-frozen, .a-GV-w-scroll, .a-GV-bdy,',
'.a-IRR-tableContainer, .a-IRR-tableWrap {',
'    background: transparent !important;',
'}',
'',
'/* No data / alt message on dark glass */',
'.a-GV-altMessage, .a-GV-noDataMsg {',
'    background: transparent !important;',
'}',
'',
'.a-GV-altMessage-text {',
'    color: rgba(203,236,231,0.8) !important;',
'}',
'',
'.a-GV-altMessage-icon {',
'    color: rgba(167,220,212,0.55) !important;',
'}',
'',
'/* Toolbar search input - dark glass */',
'.a-Toolbar-input, .a-Toolbar-inputText, input.a-Toolbar-input[type="search"] {',
'    background: rgba(7,26,30,0.50) !important;',
'    -webkit-backdrop-filter: blur(10px);',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(255,255,255,0.16) !important;',
'    border-radius: 10px !important;',
'    color: #e2fdf9 !important;',
'}',
'',
'.a-Toolbar-input::placeholder {',
'    color: rgba(148,183,178,0.75) !important;',
'}',
'',
'.a-Toolbar-input:focus {',
'    border-color: #2dd4bf !important;',
'    box-shadow: 0 0 0 3px rgba(45,212,191,0.18) !important;',
'    outline: none !important;',
'}',
'',
'/* Column headers */',
'.a-GV-header, .a-IRR-header th {',
'    background: rgba(19,78,74,0.85) !important;',
'    border-bottom: 2px solid #2dd4bf !important;',
'    font-weight: 700;',
'    color: #eafffb !important;',
'}',
'',
'/* Column header text */',
'.a-GV-headerLabel, .a-IRR-header th {',
'    font-size: 12px;',
'    font-weight: 700;',
'    text-transform: uppercase;',
'    color: #eafffb !important;',
'}',
'',
'/* Data rows - dark glass */',
'.a-GV-row, .a-IRR-table tbody tr {',
'    background: rgba(255,255,255,0.04) !important;',
'    border-bottom: 1px solid rgba(255,255,255,0.08) !important;',
'}',
'',
'.a-GV-cell, .a-IRR-table tbody td {',
'    /* color: #d6efeb !important; */',
'    color: #080808 !important;',
'    background: transparent !important;',
'    border-right: 1px solid rgba(255,255,255,0.06) !important;',
'    padding: 8px 12px !important;',
'}',
'',
'/* Table row hover */',
'.a-GV-row:hover, .a-GV-row:hover .a-GV-cell,',
'.a-IRR-table tbody tr:hover, .a-IRR-table tbody tr:hover td {',
'    background: rgba(45,212,191,0.10) !important;',
'}',
'',
'/* Alternate row striping - subtle */',
'.a-GV-row.a-GV-row-even, .a-IRR-table tbody tr:nth-child(even) {',
'    background: rgba(255,255,255,0.02) !important;',
'}',
'',
'/* Details button inside the grid */',
'.a-GV-cell a, .a-IRR-table tbody td a {',
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
'',
'.a-GV-cell a:hover, .a-IRR-table tbody td a:hover {',
'    background: linear-gradient(135deg, #2dd4bf, #22d3ee);',
'    box-shadow: 0 6px 16px rgba(34,211,238,0.45);',
'    transform: translateY(-1px);',
'}',
'',
'/* Pagination */',
'.a-GV-pageRange {',
'    background: rgba(45,212,191,0.15) !important;',
'    color: #7df3e1 !important;',
'    padding: 3px 12px;',
'    border-radius: 20px;',
'    font-size: 12px;',
'}',
'',
'/* Grid footer */',
'.a-GV-footer {',
'    background: rgba(13,42,45,0.55) !important;',
'    border-top: 1px solid rgba(255,255,255,0.12) !important;',
'}',
'',
'.a-GV-status {',
'    color: rgba(203,236,231,0.75) !important;',
'}',
'',
'/* Toolbar above the grid - frosted dark */',
'.a-Toolbar, .a-IRR-toolbar {',
'    background: rgba(13,42,45,0.45) !important;',
'    -webkit-backdrop-filter: blur(12px);',
'    backdrop-filter: blur(12px);',
'    border-radius: 12px;',
'    border: 1px solid rgba(255,255,255,0.10);',
'    padding: 8px 12px !important;',
'    margin-bottom: 12px !important;',
'}',
'',
'/* Toolbar buttons - teal glass */',
'.a-Toolbar .a-Button,',
'.a-IRR-toolbar .a-Button {',
'    background: rgba(45,212,191,0.14);',
'    border: 1px solid rgba(45,212,191,0.28);',
'    border-radius: 8px;',
'    color: #7df3e1;',
'    padding: 6px 14px;',
'    font-weight: 600;',
'    font-size: 12px;',
'    transition: all 0.2s ease;',
'}',
'',
'.a-Toolbar .a-Button:hover,',
'.a-IRR-toolbar .a-Button:hover {',
'    background: rgba(45,212,191,0.32);',
'    color: white;',
'    border-color: rgba(45,212,191,0.5);',
'}',
'',
'/* Actions button (with icon) */',
'.a-Button--withIcon {',
'    background: rgba(255,255,255,0.06);',
'    color: #b9d9d4;',
'    border: 1px solid rgba(255,255,255,0.22);',
'}',
'',
'.a-Button--withIcon:hover {',
'    background: rgba(45,212,191,0.25);',
'    color: white;',
'    border-color: rgba(45,212,191,0.45);',
'}',
'',
'/* ========== STATUS STYLING IN THE INTERACTIVE REPORT WITH ROUND INDICATOR ========== */',
'/* Round indicator for grid status */',
'.status-indicator-grid {',
'    display: inline-block;',
'    width: 10px;',
'    height: 10px;',
'    border-radius: 50%;',
'    animation: pulse-grid 2s infinite;',
'}',
'',
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
'',
'/* Hover effect for the grid status cell */',
'.a-GV-cell span[style*="border-radius: 40px"],',
'.a-IRR-table tbody td span[style*="border-radius: 40px"] {',
'    transition: all 0.2s ease;',
'}',
'',
'.a-GV-cell span[style*="border-radius: 40px"]:hover,',
'.a-IRR-table tbody td span[style*="border-radius: 40px"]:hover {',
'    transform: translateY(-2px);',
'    box-shadow: 0 4px 12px rgba(45,212,191,0.25);',
'}',
'',
'/* Status badges in IR - dark glass version */',
'.a-GV-cell .status-badge,',
'.a-IRR-table tbody td .status-badge {',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 6px;',
'    padding: 4px 12px;',
'    border-radius: 40px;',
'    font-size: 12px;',
'    font-weight: 600;',
'    background: rgba(255,255,255,0.08) !important;',
'    border: 1px solid rgba(255,255,255,0.12) !important;',
'    color: #eafffb !important;',
'}',
'',
'/* Status indicator colors for IR */',
'.a-GV-cell .status-indicator-grid,',
'.a-IRR-table tbody td .status-indicator-grid {',
'    width: 8px;',
'    height: 8px;',
'    border-radius: 50%;',
'    display: inline-block;',
'    flex-shrink: 0;',
'}',
'',
'/* Status colors - match the ones from page 4 */',
'.status-received .status-indicator-grid { background-color: #14b8a6; }',
'.status-on_review .status-indicator-grid { background-color: #ff9800; }',
'.status-on_investigation .status-indicator-grid { background-color: #e91e63; }',
'.status-closed .status-indicator-grid { background-color: #4caf50; }',
'.status-cancelled .status-indicator-grid { background-color: #f44336; }',
'',
'/* ========== SELECTION / CHECKBOX IN IR ========== */',
'.a-GV-cell input[type="checkbox"],',
'.a-IRR-table tbody td input[type="checkbox"] {',
'    accent-color: #2dd4bf;',
'    width: 16px;',
'    height: 16px;',
'    cursor: pointer;',
'    filter: drop-shadow(0 0 4px rgba(45,212,191,0.2));',
'}',
'',
'/* ========== SORT INDICATOR ========== */',
'.a-GV-header .a-GV-sortIcon {',
'    color: #2dd4bf !important;',
'}',
'',
'/* ========== ACTIONS MENU (dropdown) IN IR ========== */',
'.a-IG-actionsMenu .a-Button {',
'    background: rgba(45,212,191,0.10) !important;',
'    border: 1px solid rgba(255,255,255,0.12) !important;',
'    color: #b9d9d4 !important;',
'}',
'',
'.a-IG-actionsMenu .a-Button:hover {',
'    background: rgba(45,212,191,0.25) !important;',
'    color: white !important;',
'}',
'',
'/* ========== RESPONSIVE FOR IR ========== */',
'@media (max-width: 768px) {',
'    .t-IRR-region {',
'        padding: 6px !important;',
'    }',
'    ',
'    .a-IRR-tableContainer {',
'        overflow-x: auto;',
'        -webkit-overflow-scrolling: touch;',
'    }',
'    ',
'    .a-IRR-table {',
'        min-width: 600px;',
'    }',
'    ',
'    .a-Toolbar, .a-IRR-toolbar {',
'        flex-wrap: wrap;',
'        gap: 8px;',
'    }',
'    ',
'    .a-GV-cell, .a-IRR-table tbody td {',
'        padding: 6px 8px !important;',
'        font-size: 13px;',
'    }',
'    ',
'    .a-GV-headerLabel, .a-IRR-header th {',
'        font-size: 11px;',
'    }',
'}',
'',
'@media (max-width: 480px) {',
'    .t-IRR-region {',
'        padding: 4px !important;',
'    }',
'    ',
'    .a-GV-cell, .a-IRR-table tbody td {',
'        padding: 4px 6px !important;',
'        font-size: 12px;',
'    }',
'    ',
'    .a-GV-cell a, .a-IRR-table tbody td a {',
'        padding: 3px 8px;',
'        font-size: 10px;',
'    }',
'    ',
'    .a-GV-headerLabel, .a-IRR-header th {',
'        font-size: 10px;',
'        padding: 6px 4px !important;',
'    }',
'    ',
'    .a-Toolbar .a-Button,',
'    .a-IRR-toolbar .a-Button {',
'        padding: 4px 10px;',
'        font-size: 11px;',
'    }',
'}'))
,p_step_template=>wwv_flow_imp.id(14344826106539088988)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345386931951735270)
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
 p_id=>wwv_flow_imp.id(14346973554002915754)
,p_plug_name=>'Buttons Container'
,p_static_id=>'buttons-container'
,p_parent_plug_id=>wwv_flow_imp.id(14345302990530060936)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(14344340113263909407)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P4_HEADER_ID IS NOT NULL AND :P4_STATUS IN (''ON REVIEW'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345423026242289938)
,p_plug_name=>'Buttons Container'
,p_static_id=>'buttons-container-2'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(14344340113263909407)
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14346761365396094931)
,p_plug_name=>'Buttons Container'
,p_static_id=>'buttons-container-3'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(14344340113263909407)
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345301884217060925)
,p_plug_name=>'<div class="form-section-header"><span class="step-num"> 1 </span> Reporter Details </div>'
,p_static_id=>'div-class-form-section-header-span-class-step-num-1-span-reporter-details-div'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>100
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345302807390060934)
,p_plug_name=>'<div class="form-section-header"><span class="step-num"> 2 </span> Reported Party Details </div>'
,p_static_id=>'div-class-form-section-header-span-class-step-num-2-span-reported-party-details-div'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>110
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345302962971060935)
,p_plug_name=>'<div class="form-section-header"><span class="step-num"> 3 </span> Incident Chronology </div>'
,p_static_id=>'div-class-form-section-header-span-class-step-num-3-span-incident-chronology-div'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>120
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345302990530060936)
,p_plug_name=>'<div class="form-section-header"><span class="step-num"> 4 </span> File Attachments / Evidence </div>'
,p_static_id=>'div-class-form-section-header-span-class-step-num-4-span-file-attachments-evidence-div'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>130
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345691488470332545)
,p_plug_name=>'<div class="form-section-header"><span class="step-num"> 5 </span> Verification Details (by WBS Officer) </div>'
,p_static_id=>'div-class-form-section-header-span-class-step-num-5-span-verification-details-by-wbs-officer-div'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>140
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P4_HEADER_ID IS NOT NULL AND :P4_STATUS IN (''RECEIVED'', ''ON REVIEW'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14346478626988127665)
,p_plug_name=>'<div class="form-section-header"><span class="step-num"> 5 </span> Verification Details (by WBS Officer) </div>'
,p_static_id=>'div-class-form-section-header-span-class-step-num-5-span-verification-details-by-wbs-officer-div-2'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>150
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P4_HEADER_ID IS NOT NULL AND :P4_STATUS IN (''ON INVESTIGATION'', ''CANCELLED'', ''CLOSED'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345691625169332546)
,p_plug_name=>'<div class="form-section-header"><span class="step-num"> 6 </span> Report Handling </div>'
,p_static_id=>'div-class-form-section-header-span-class-step-num-6-span-report-handling-div'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>160
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P4_HEADER_ID IS NOT NULL AND :P4_STATUS = ''ON INVESTIGATION'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14346760217563094920)
,p_plug_name=>'<div class="form-section-header"><span class="step-num"> 6 </span> Report Handling </div>'
,p_static_id=>'div-class-form-section-header-span-class-step-num-6-span-report-handling-div-2'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14344403920753909451)
,p_plug_display_sequence=>170
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P4_HEADER_ID IS NOT NULL AND :P4_STATUS = ''CLOSED'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345304658577060952)
,p_plug_name=>'File Attachment'
,p_static_id=>'file-attachment'
,p_parent_plug_id=>wwv_flow_imp.id(14345302990530060936)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344394156784909442)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       FILE_NAME,',
'       case ',
'           when FILE_MIME_TYPE like ''image/%'' then ''IMAGE''',
'           when FILE_MIME_TYPE = ''application/pdf'' then ''PDF''',
'           when FILE_MIME_TYPE like ''text/%'' then ''TEXT''',
'           when FILE_MIME_TYPE in (''application/msword'', ''application/vnd.openxmlformats-officedocument.wordprocessingml.document'') then ''WORD''',
'           when FILE_MIME_TYPE in (''application/vnd.ms-excel'', ''application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'') then ''EXCEL''',
'           else ''OTHER''',
'       end as file_category,',
'       ',
'    --    dbms_lob.getlength(FILE_BLOB) as preview,',
'       -- PREVIEW_LINK column - HTML anchor tag',
'       ''<a href="#" class="preview-file" '' ||',
'       ''data-id="'' || ID || ''" '' ||',
'       ''data-filename="'' || REPLACE(FILE_NAME, ''"'', ''&quot;'') || ''" '' ||',
'    --    ''data-mimetype="'' || FILE_MIME_TYPE || ''">'' ||',
'       ''data-mimetype="'' || NVL(FILE_MIME_TYPE, ''application/octet-stream'') || ''">'' ||',
'       ''<i class="fa fa-eye"></i> Preview'' ||',
'       ''</a>'' as preview_link,',
'',
'    --    TO_CHAR(ROUND(dbms_lob.getlength(FILE_BLOB) / (1024 * 1024), 2), ''0.00'') || '' MB'' as file_size,',
'       dbms_lob.getlength(FILE_BLOB) as file_size_bytes,',
'       case ',
'           when dbms_lob.getlength(FILE_BLOB) < 1024 then dbms_lob.getlength(FILE_BLOB) || '' B''',
'           when dbms_lob.getlength(FILE_BLOB) < 1048576 then round(dbms_lob.getlength(FILE_BLOB)/1024, 2) || '' KB''',
'           else round(dbms_lob.getlength(FILE_BLOB)/1048576, 2) || '' MB''',
'       end as file_size_display,',
'       dbms_lob.getlength(FILE_BLOB) as download,',
'       FILE_MIME_TYPE AS MIME_TYPE',
'  from XTD_WBS_BLOB',
'  where WBS_ID = :P4_HEADER_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14345305332480060959)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_internal_uid=>65763452923619243
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14345425517493289963)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>70
,p_column_identifier=>'P'
,p_column_label=>'Download'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DOWNLOAD:XTD_WBS_BLOB:FILE_BLOB:ID::FILE_MIME_TYPE:FILE_NAME:CREATED_DATE::attachment::'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14345421646400289924)
,p_db_column_name=>'FILE_CATEGORY'
,p_display_order=>30
,p_column_identifier=>'I'
,p_column_label=>'File Category'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14345305499577060961)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14345421451862289922)
,p_db_column_name=>'FILE_SIZE_BYTES'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'File Size Bytes'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14345421516101289923)
,p_db_column_name=>'FILE_SIZE_DISPLAY'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'File Size'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14345305421172060960)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14345305936712060965)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14345422403218289932)
,p_db_column_name=>'PREVIEW_LINK'
,p_display_order=>40
,p_column_identifier=>'N'
,p_column_label=>'Preview'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14345417936503270486)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'658761'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FILE_NAME:FILE_CATEGORY:PREVIEW_LINK:FILE_SIZE_DISPLAY:DOWNLOAD:MIME_TYPE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14345421180613289920)
,p_plug_name=>'Report Detail Banner'
,p_static_id=>'report-detail-banner'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14344337289386909406)
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_nomor_laporan VARCHAR2(100);',
'    v_status VARCHAR2(50);',
'BEGIN',
'    -- Fetch report number and status based on P4_HEADER_ID',
'    SELECT NOMOR_LAPORAN, STATUS',
'    INTO v_nomor_laporan, v_status',
'    FROM XTD_WBS',
'    WHERE ID = :P4_HEADER_ID;',
'',
'    -- Render HTML with the status on the right',
'    HTP.P(''<div class="info-banner">'');',
unistr('    HTP.P(''  <div class="info-banner-icon">\D83D\DCCB</div>'');'),
'    HTP.P(''  <div style="flex:1;">'');',
'    HTP.P(''    <h2>Report Detail</h2>'');',
'    HTP.P(''    <div style="margin-top: 15px;">'');',
'    HTP.P(''      <strong style="font-size: 14px; color: #555;">Report Number:</strong>'');',
'    HTP.P(''      <div style="font-size: 20px; font-weight: bold; color: #ff9800; margin-top: 5px;">'' || apex_escape.html(v_nomor_laporan) || ''</div>'');',
'    HTP.P(''    </div>'');',
'    HTP.P(''  </div>'');',
'    ',
'    -- Right-hand side for the status display',
'    HTP.P(''  <div class="status-container">'');',
'    HTP.P(''    <div class="status-badge status-'' || lower(replace(apex_escape.html(v_status), '' '', ''_'')) || ''">'');',
'    HTP.P(''      <span class="status-indicator"></span>'');',
'    HTP.P(''      <span class="status-text">'' || apex_escape.html(v_status) || ''</span>'');',
'    HTP.P(''    </div>'');',
'    HTP.P(''  </div>'');',
'    HTP.P(''</div>'');',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        HTP.P(''<div class="info-banner">'');',
unistr('        HTP.P(''  <div class="info-banner-icon">\26A0\FE0F</div>'');'),
'        HTP.P(''  <div style="flex:1;">'');',
'        HTP.P(''    <h2>Report Detail</h2>'');',
'        HTP.P(''    <p style="color: #999; margin-top: 10px;">Report number not found</p>'');',
'        HTP.P(''  </div>'');',
'        HTP.P(''</div>'');',
'    WHEN OTHERS THEN',
'        HTP.P(''<div class="info-banner">'');',
unistr('        HTP.P(''  <div class="info-banner-icon">\274C</div>'');'),
'        HTP.P(''  <div style="flex:1;">'');',
'        HTP.P(''    <h2>Report Detail</h2>'');',
'        HTP.P(''    <p style="color: #d32f2f;">Error: '' || apex_escape.html(SQLERRM) || ''</p>'');',
'        HTP.P(''  </div>'');',
'        HTP.P(''</div>'');',
'END;',
'',
'-- DECLARE',
'--     v_nomor_laporan VARCHAR2(100);',
'--     v_status VARCHAR2(50);',
'-- BEGIN',
'--     SELECT NOMOR_LAPORAN, STATUS',
'--     INTO v_nomor_laporan, v_status',
'--     FROM XTD_WBS',
'--     WHERE ID = :P4_HEADER_ID;',
'',
'--     -- Render HTML with the status on the right',
'--     HTP.P(''<div class="info-banner">'');',
unistr('--     HTP.P(''  <div class="info-banner-icon">\D83D\DCCB</div>'');'),
'--     HTP.P(''  <div style="flex:1;">'');',
'--     HTP.P(''    <h2>Report Detail</h2>'');',
'--     HTP.P(''    <div style="margin-top: 15px;">'');',
'--     HTP.P(''      <strong style="font-size: 14px; color: #555;">Report Number:</strong>'');',
'--     HTP.P(''      <div style="font-size: 20px; font-weight: bold; color: #ff9800; margin-top: 5px;">'' || apex_escape.html(v_nomor_laporan) || ''</div>'');',
'--     HTP.P(''    </div>'');',
'--     HTP.P(''  </div>'');',
'    ',
'--     -- Right-hand side for the status display',
'--     HTP.P(''  <div class="status-container">'');',
'--     HTP.P(''    <div class="status-badge status-'' || lower(apex_escape.html(v_status)) || ''">'');',
'--     HTP.P(''      <span class="status-indicator"></span>'');',
'--     HTP.P(''      <span class="status-text">'' || apex_escape.html(v_status) || ''</span>'');',
'--     HTP.P(''    </div>'');',
'--     HTP.P(''  </div>'');',
'--     HTP.P(''</div>'');',
'',
'-- EXCEPTION',
'--     WHEN NO_DATA_FOUND THEN',
'--         HTP.P(''<div class="info-banner">'');',
unistr('--         HTP.P(''  <div class="info-banner-icon">\26A0\FE0F</div>'');'),
'--         HTP.P(''  <div style="flex:1;">'');',
'--         HTP.P(''    <h2>Report Detail</h2>'');',
'--         HTP.P(''    <p style="color: #999; margin-top: 10px;">Report number not found</p>'');',
'--         HTP.P(''  </div>'');',
'--         HTP.P(''</div>'');',
'--     WHEN OTHERS THEN',
'--         HTP.P(''<div class="info-banner">'');',
unistr('--         HTP.P(''  <div class="info-banner-icon">\274C</div>'');'),
'--         HTP.P(''  <div style="flex:1;">'');',
'--         HTP.P(''    <h2>Report Detail</h2>'');',
'--         HTP.P(''    <p style="color: #d32f2f;">Error: '' || apex_escape.html(SQLERRM) || ''</p>'');',
'--         HTP.P(''  </div>'');',
'--         HTP.P(''</div>'');',
'-- END;',
'',
'-- DECLARE',
'--     v_nomor_laporan VARCHAR2(100);',
'-- BEGIN',
'--     SELECT NOMOR_LAPORAN',
'--     INTO v_nomor_laporan',
'--     FROM XTD_WBS',
'--     WHERE ID = :P4_HEADER_ID;',
'',
'--     -- HTML styling',
'--     HTP.P(''<div class="info-banner">'');',
unistr('--     HTP.P(''  <div class="info-banner-icon">\D83D\DCCB</div>'');'),
'--     HTP.P(''  <div style="flex:1;">'');',
'--     HTP.P(''    <h2>Report Detail</h2>'');',
'--     HTP.P(''    <div style="margin-top: 15px;">'');',
'--     HTP.P(''      <strong style="font-size: 14px; color: #555;">Report Number:</strong>'');',
'--     HTP.P(''      <div style="font-size: 20px; font-weight: bold; color: #ff9800; margin-top: 5px;">'' || apex_escape.html(v_nomor_laporan) || ''</div>'');',
'--     HTP.P(''    </div>'');',
'--     HTP.P(''  </div>'');',
'--     HTP.P(''</div>'');',
'',
'-- EXCEPTION',
'--     WHEN NO_DATA_FOUND THEN',
'--         HTP.P(''<div class="info-banner">'');',
unistr('--         HTP.P(''  <div class="info-banner-icon">\26A0\FE0F</div>'');'),
'--         HTP.P(''  <div style="flex:1;">'');',
'--         HTP.P(''    <h2>Report Detail</h2>'');',
'--         HTP.P(''    <p style="color: #999; margin-top: 10px;">Report number not found</p>'');',
'--         HTP.P(''  </div>'');',
'--         HTP.P(''</div>'');',
'--     WHEN OTHERS THEN',
'--         HTP.P(''<div class="info-banner">'');',
unistr('--         HTP.P(''  <div class="info-banner-icon">\274C</div>'');'),
'--         HTP.P(''  <div style="flex:1;">'');',
'--         HTP.P(''    <h2>Report Detail</h2>'');',
'--         HTP.P(''    <p style="color: #d32f2f;">Error: '' || apex_escape.html(SQLERRM) || ''</p>'');',
'--         HTP.P(''  </div>'');',
'--         HTP.P(''</div>'');',
'-- END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14346973679427915755)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14346973554002915754)
,p_button_name=>'ADD'
,p_static_id=>'add'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_image_alt=>'Add Evidence'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::P11_HEADER_ID:&P4_HEADER_ID.'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14345423115555289939)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14345423026242289938)
,p_button_name=>'BACK'
,p_static_id=>'back'
,p_button_static_id=>'back_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,4::'
,p_icon_css_classes=>'fa-arrow-circle-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14345691686439332547)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14345423026242289938)
,p_button_name=>'CLAIM'
,p_static_id=>'claim'
,p_button_static_id=>'claim_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Claim'
,p_button_position=>'NEXT'
,p_confirm_message=>'Are you sure you want to <b>CLAIM</b> this report and change its status to <b>ON REVIEW</b>?'
,p_button_condition=>':P4_STATUS = ''RECEIVED'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14346761903448094937)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(14345423026242289938)
,p_button_name=>'CLOSE'
,p_static_id=>'close'
,p_button_static_id=>'close_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close Report'
,p_button_position=>'NEXT'
,p_confirm_message=>'Are you sure you want to <b>close</b> this report and change its status to <b>CLOSED</b>?'
,p_button_condition=>':P4_STATUS = ''ON INVESTIGATION'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14346761588403094934)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14346761365396094931)
,p_button_name=>'EXPORT'
,p_static_id=>'export'
,p_button_static_id=>'export_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Export as .XLSX'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.:IR[download_laporan]_XLSX_N:&DEBUG.::P8_HEADER_ID:&P4_HEADER_ID.'
,p_icon_css_classes=>'fa-file-excel-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14346761807524094936)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(14345423026242289938)
,p_button_name=>'REJECT'
,p_static_id=>'reject'
,p_button_static_id=>'reject_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reject'
,p_button_position=>'NEXT'
,p_button_condition=>':P4_STATUS = ''ON REVIEW'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-times'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14346760906916094927)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(14345423026242289938)
,p_button_name=>'ROLLBACK'
,p_static_id=>'rollback'
,p_button_static_id=>'rollback_status_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rollback Status'
,p_button_position=>'PREVIOUS'
,p_confirm_message=>'Are you sure you want to <b>ROLL BACK</b> the status of this report from <b>&P4_STATUS.</b> to <b>&P4_STATUS_IF_ROLLBACK.</b>?'
,p_button_condition=>':P4_STATUS IN (''ON REVIEW'', ''ON INVESTIGATION'', ''CANCELLED'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14345422905703289937)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(14345423026242289938)
,p_button_name=>'UPDATE'
,p_static_id=>'update'
,p_button_static_id=>'update_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Report'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,:P5_HEADER_ID,P5_NOMOR_LAPORAN:&P4_HEADER_ID.,&P4_NOMOR_LAPORAN.'
,p_button_condition=>':P4_HEADER_ID IS NOT NULL AND :P4_STATUS = ''ON REVIEW'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-pencil-square-o'
,p_required_patch=>wwv_flow_imp.id(14344300039949909298)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14345693288164332563)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(14345423026242289938)
,p_button_name=>'VERIFY'
,p_static_id=>'verify'
,p_button_static_id=>'verify_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(14344477241234909495)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Verify'
,p_button_position=>'NEXT'
,p_button_condition=>':P4_STATUS = ''ON REVIEW'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14346907630981600063)
,p_branch_name=>'Go to Page 10 (Verify Report)'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_ID,P10_NOMOR_LAPORAN:&P4_HEADER_ID.,&P4_NOMOR_LAPORAN.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14345693288164332563)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14346970011141915719)
,p_branch_name=>'Go to Page 9 (Reject Report)'
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_ID,P9_NOMOR_LAPORAN:&P4_HEADER_ID.,&P4_NOMOR_LAPORAN.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14346761807524094936)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345302200334060928)
,p_name=>'P4_EMAIL_PELAPOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14345301884217060925)
,p_prompt=>'Reporter Email'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345302623194060932)
,p_name=>'P4_EMAIL_PELAPOR_VALUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14345301884217060925)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMAIL_PELAPOR FROM XTD_WBS',
'WHERE ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345692808510332558)
,p_name=>'P4_HASIL_VERIFIKASI'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14345691488470332545)
,p_prompt=>'Verification Result'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345692918984332559)
,p_name=>'P4_HASIL_VERIFIKASI_VALUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14345691488470332545)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    HASIL_VERIFIKASI',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344475966976909492)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346760001508094918)
,p_name=>'P4_HASIL_VERIFIKASI_VERIFIED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14346478626988127665)
,p_prompt=>'Verification Result'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346760109109094919)
,p_name=>'P4_HASIL_VERIFIKASI_VERIFIED_VALUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14346478626988127665)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    HASIL_VERIFIKASI',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345301681267060923)
,p_name=>'P4_HEADER_ID'
,p_item_sequence=>10
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345302324113060929)
,p_name=>'P4_JABATAN_PELAPOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14345301884217060925)
,p_prompt=>'Relationship with the Company'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345302716221060933)
,p_name=>'P4_JABATAN_PELAPOR_VALUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14345301884217060925)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT JABATAN_PELAPOR FROM XTD_WBS',
'WHERE ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345303317397060939)
,p_name=>'P4_JABATAN_TERLAPOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14345302807390060934)
,p_prompt=>'Accused Position'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345303399310060940)
,p_name=>'P4_JABATAN_TERLAPOR_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14345302807390060934)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT JABATAN_TERLAPOR FROM XTD_WBS',
'WHERE ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345692406091332554)
,p_name=>'P4_JENIS_BUKTI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14345691488470332545)
,p_prompt=>'Evidence Type'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345692208028332552)
,p_name=>'P4_JENIS_BUKTI_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14345691488470332545)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    JENIS_BUKTI_PENDUKUNG',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344475966976909492)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346478708935127666)
,p_name=>'P4_JENIS_BUKTI_VERIFIED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14346478626988127665)
,p_prompt=>'Evidence Type'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346759944515094917)
,p_name=>'P4_JENIS_BUKTI_VERIFIED_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14346478626988127665)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    JENIS_BUKTI_PENDUKUNG',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346903698356600024)
,p_name=>'P4_KATEGORI_PELANGGARAN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14345691488470332545)
,p_prompt=>'Violation Category'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346903872197600025)
,p_name=>'P4_KATEGORI_PELANGGARAN_VALUE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14345691488470332545)
,p_placeholder=>'-- Select a violation category --'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    KATEGORI_PELANGGARAN',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT display_value, return_value',
'FROM (',
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
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344475966976909492)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
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
 p_id=>wwv_flow_imp.id(14346907680025600064)
,p_name=>'P4_KATEGORI_PELANGGARAN_VERIFIED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14346478626988127665)
,p_prompt=>'Violation Category'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346907842126600065)
,p_name=>'P4_KATEGORI_PELANGGARAN_VERIFIED_VALUE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(14346478626988127665)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    KATEGORI_PELANGGARAN',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345304081531060947)
,p_name=>'P4_KRONOLOGIS_KEJADIAN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14345302962971060935)
,p_prompt=>'Detailed Incident Chronology'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345304179688060948)
,p_name=>'P4_KRONOLOGIS_KEJADIAN_VALUE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14345302962971060935)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT KRONOLOGIS_KEJADIAN FROM XTD_WBS',
'WHERE ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345303728411060943)
,p_name=>'P4_LOKASI_KEJADIAN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14345302962971060935)
,p_prompt=>'Incident Location'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345303787436060944)
,p_name=>'P4_LOKASI_KEJADIAN_VALUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14345302962971060935)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LOKASI_KEJADIAN FROM XTD_WBS',
'WHERE ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345301994266060926)
,p_name=>'P4_NAMA_PELAPOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14345301884217060925)
,p_prompt=>'Reporter Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345302395822060930)
,p_name=>'P4_NAMA_PELAPOR_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14345301884217060925)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAMA_PELAPOR FROM XTD_WBS',
'WHERE ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345303103198060937)
,p_name=>'P4_NAMA_TERLAPOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14345302807390060934)
,p_prompt=>'Accused Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345303243275060938)
,p_name=>'P4_NAMA_TERLAPOR_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14345302807390060934)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAMA_TERLAPOR FROM XTD_WBS',
'WHERE ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345421370185289921)
,p_name=>'P4_NOMOR_LAPORAN'
,p_item_sequence=>20
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345693492239332565)
,p_name=>'P4_NO_BERITA_ACARA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14345691625169332546)
,p_prompt=>'Follow-up Memo No.'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345693626145332566)
,p_name=>'P4_NO_BERITA_ACARA_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14345691625169332546)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    NO_BERITA_ACARA_TINDAK_LANJUT',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346760280862094921)
,p_name=>'P4_NO_BERITA_ACARA_VERIFIED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14346760217563094920)
,p_prompt=>'Follow-up Memo No.'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346760418617094922)
,p_name=>'P4_NO_BERITA_ACARA_VERIFIED_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14346760217563094920)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    NO_BERITA_ACARA_TINDAK_LANJUT',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346474712660127626)
,p_name=>'P4_RESULT_SUMMARY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14345691625169332546)
,p_prompt=>'Result Summary'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346474816021127627)
,p_name=>'P4_RESULT_SUMMARY_VALUE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(14345691625169332546)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    RESULT_SUMMARY',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(14344475966976909492)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346760683037094925)
,p_name=>'P4_RESULT_SUMMARY_VERIFIED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(14346760217563094920)
,p_prompt=>'Result Summary'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346760821352094926)
,p_name=>'P4_RESULT_SUMMARY_VERIFIED_VALUE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(14346760217563094920)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    RESULT_SUMMARY',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345691857881332548)
,p_name=>'P4_STATUS'
,p_item_sequence=>30
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346761178181094929)
,p_name=>'P4_STATUS_IF_ROLLBACK'
,p_item_sequence=>40
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345302175871060927)
,p_name=>'P4_TELP_PELAPOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14345301884217060925)
,p_prompt=>'Reporter Phone'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345302511216060931)
,p_name=>'P4_TELP_PELAPOR_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14345301884217060925)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TELP_PELAPOR FROM XTD_WBS',
'WHERE ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346474017020127619)
,p_name=>'P4_TIM_INVESTIGASI'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14345691625169332546)
,p_prompt=>'Investigation Team'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346474130993127620)
,p_name=>'P4_TIM_INVESTIGASI_VALUE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14345691625169332546)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    TIM_INVESTIGASI',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344475966976909492)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--indicatorAsterisk'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346760481317094923)
,p_name=>'P4_TIM_INVESTIGASI_VERIFIED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14346760217563094920)
,p_prompt=>'Investigation Team'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14346760585864094924)
,p_name=>'P4_TIM_INVESTIGASI_VERIFIED_VALUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14346760217563094920)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    TIM_INVESTIGASI',
'FROM ',
'    XTD_WBS',
'WHERE',
'    ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345303556893060941)
,p_name=>'P4_WAKTU_KEJADIAN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14345302962971060935)
,p_prompt=>'Incident Date'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14345303586135060942)
,p_name=>'P4_WAKTU_KEJADIAN_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14345302962971060935)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WAKTU_KEJADIAN FROM XTD_WBS',
'WHERE ID = :P4_HEADER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14344474663659909490)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14346973361801915752)
,p_validation_name=>'P4_HASIL_VERIFIKASI_VALUE must have value'
,p_static_id=>'p4-hasil-verifikasi-value-must-have-value'
,p_validation_sequence=>40
,p_validation=>'P4_RESULT_SUMMARY_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'P4_HASIL_VERIFIKASI_VALUE must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(14345691686439332547)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(14344300039949909298)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14346973238153915751)
,p_validation_name=>'P4_JENIS_BUKTI_VALUE must have value'
,p_static_id=>'p4-jenis-bukti-value-must-have-value'
,p_validation_sequence=>30
,p_validation=>'P4_RESULT_SUMMARY_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'P4_JENIS_BUKTI_VALUE must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(14345691686439332547)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(14344300039949909298)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14346973446970915753)
,p_validation_name=>'P4_KATEGORI_PELANGGARAN_VALUE must have value'
,p_static_id=>'p4-kategori-pelanggaran-value-must-have-value'
,p_validation_sequence=>50
,p_validation=>'P4_RESULT_SUMMARY_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'P4_KATEGORI_PELANGGARAN_VALUE must have a value.'
,p_validation_condition=>'CLAIM, VERIFY'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(14344300039949909298)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14346969906994915718)
,p_validation_name=>'P4_RESULT_SUMMARY_VALUE must have value'
,p_static_id=>'p4-result-summary-value-must-have-value'
,p_validation_sequence=>20
,p_validation=>'P4_RESULT_SUMMARY_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'P4_RESULT_SUMMARY_VALUE must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(14346761903448094937)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14346969785402915717)
,p_validation_name=>'P4_TIM_INVESTIGASI_VALUE must have value'
,p_static_id=>'p4-tim-investigasi-value-must-have-value'
,p_validation_sequence=>10
,p_validation=>'P4_TIM_INVESTIGASI_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'P4_TIM_INVESTIGASI_VALUE must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(14346761903448094937)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14345306069080060966)
,p_name=>'PDFViewer'
,p_static_id=>'pdfviewer'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'PDFViewer'
,p_required_patch=>wwv_flow_imp.id(14344300039949909298)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14345420942379289917)
,p_event_id=>wwv_flow_imp.id(14345306069080060966)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'let id = this.data.id;async function getData(){',
    '    let afetch = await fetch(''https://apex.oracle.com/pls/apex/taskmaster/wbspdfviewer/showpdf/'' + id);',
    '    let blob = await afetch.blob();',
    '    let blobUrl = URL.createObjectURL(blob);',
    '    let pdfContainer = document.getElementById(''pdfViewer'');',
    '',
    '    pdfContainer.getElementsByTagName(''iframe'')[0].src = blobUrl;',
    '}',
    '',
    'getData();')))).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14345692044882332550)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Claim Report'
,p_static_id=>'claim-report'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_header_id NUMBER := :P4_HEADER_ID;',
'BEGIN',
'    -- Validate P4_JENIS_BUKTI_VALUE',
'    IF :P4_JENIS_BUKTI_VALUE IS NULL THEN',
'        apex_error.add_error(',
'            p_message          => ''Evidence Type is required!'',',
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'    END IF;',
'    ',
'    -- Validate P4_HASIL_VERIFIKASI_VALUE',
'    IF :P4_HASIL_VERIFIKASI_VALUE IS NULL THEN',
'        apex_error.add_error(',
'            p_message          => ''Verification Result is required!'',',
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'    END IF;',
'    ',
'    -- Validate P4_KATEGORI_PELANGGARAN_VALUE',
'    IF :P4_KATEGORI_PELANGGARAN_VALUE IS NULL THEN',
'        apex_error.add_error(',
'            p_message          => ''Violation Category is required!'',',
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'    END IF;',
'    ',
'    -- If there is an error, raise an exception to stop the process',
'    IF :P4_JENIS_BUKTI_VALUE IS NULL ',
'       OR :P4_HASIL_VERIFIKASI_VALUE IS NULL ',
'       OR :P4_KATEGORI_PELANGGARAN_VALUE IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Validation failed, please check your input'');',
'    END IF;',
'    ',
'    -- Update the status and save the three values into the table',
'    UPDATE XTD_WBS',
'    SET ',
'        STATUS = ''ON REVIEW'',',
'        JENIS_BUKTI_PENDUKUNG = :P4_JENIS_BUKTI_VALUE,',
'        HASIL_VERIFIKASI = :P4_HASIL_VERIFIKASI_VALUE,',
'        KATEGORI_PELANGGARAN = :P4_KATEGORI_PELANGGARAN_VALUE,',
'        UPDATED_DATE = SYSDATE,',
'        UPDATED_BY = APEX_APPLICATION.G_USER',
'    WHERE ID = v_header_id;',
'    ',
'    -- Check whether the update succeeded (affected rows > 0)',
'    IF SQL%ROWCOUNT = 0 THEN',
'        apex_error.add_error(',
'            p_message          => ''Record with ID '' || v_header_id || '' was not found!'',',
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'        RAISE_APPLICATION_ERROR(-20002, ''Record not found'');',
'    END IF;',
'    ',
'    -- Set success message',
'    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Record updated to ON REVIEW status with complete verification details'';',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14345691686439332547)
,p_internal_uid=>66150165325890834
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346907949340600066)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Close Report'
,p_static_id=>'close-report'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_old_status    VARCHAR2(255);',
'    v_new_status    VARCHAR2(255);',
'BEGIN',
'    SELECT STATUS',
'    INTO v_old_status',
'    FROM XTD_WBS',
'    WHERE ID = :P4_HEADER_ID;',
'    ',
'    UPDATE XTD_WBS',
'    SET ',
'        STATUS = ''CLOSED'',',
'        TIM_INVESTIGASI = :P4_TIM_INVESTIGASI_VALUE,',
'        RESULT_SUMMARY = :P4_RESULT_SUMMARY_VALUE',
'    WHERE ID = :P4_HEADER_ID',
'    AND STATUS = ''ON INVESTIGATION'';',
'    ',
'    IF SQL%ROWCOUNT > 0 THEN',
'        SELECT STATUS',
'        INTO v_new_status',
'        FROM XTD_WBS',
'        WHERE ID = :P4_HEADER_ID;',
'        ',
'        -- Success message',
'        APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Report closed and its status changed from '' || v_old_status || '' to '' || v_new_status || ''.'';',
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
'            p_message          => ''Record with ID '' || :P4_HEADER_ID || '' was not found.'',',
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
,p_process_when_button_id=>wwv_flow_imp.id(14346761903448094937)
,p_internal_uid=>67366069784158350
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14345422295367289931)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_FILE_PREVIEW'
,p_static_id=>'get-file-preview'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_blob blob;',
'    v_file_mime_type varchar2(255);',
'    v_file_name varchar2(500);',
'    v_file_id number;',
'    v_base64 clob;',
'    v_chunk varchar2(32767);',
'    v_offset number := 1;',
'    v_amount number := 3000;',
'    v_blob_length number;',
'    v_temp_raw raw(32767);',
'begin',
'    v_file_id := to_number(apex_application.g_x01);',
'    ',
'    select file_blob, file_mime_type, file_name',
'    into v_blob, v_file_mime_type, v_file_name',
'    from XTD_WBS_BLOB',
'    where ID = v_file_id',
'    and WBS_ID = :P4_HEADER_ID;',
'    ',
'    -- Debug: log the MIME type (check in the browser console)',
'    -- apex_debug.info(''MIME Type: '' || v_file_mime_type);',
'    ',
'    if v_blob is null then',
'        apex_json.open_object;',
'        apex_json.write(''success'', false);',
'        apex_json.write(''message'', ''File not found'');',
'        apex_json.close_object;',
'        return;',
'    end if;',
'    ',
'    -- (max 5MB for preview)',
'    v_blob_length := dbms_lob.getlength(v_blob);',
'    if v_blob_length > 5242880 then -- 5MB',
'        apex_json.open_object;',
'        apex_json.write(''success'', false);',
'        apex_json.write(''message'', ''File too large for preview (max 5MB)'');',
'        apex_json.close_object;',
'        return;',
'    end if;',
'    ',
'    -- Initialize temporary CLOB',
'    dbms_lob.createtemporary(v_base64, true);',
'    ',
'    -- Convert BLOB to Base64 in small chunks',
'    while v_offset <= v_blob_length loop',
'        if v_offset + v_amount - 1 > v_blob_length then',
'            v_amount := v_blob_length - v_offset + 1;',
'        end if;',
'        ',
'        dbms_lob.read(v_blob, v_amount, v_offset, v_temp_raw);',
'        ',
'        begin',
'            v_chunk := utl_raw.cast_to_varchar2(utl_encode.base64_encode(v_temp_raw));',
'            dbms_lob.writeappend(v_base64, length(v_chunk), v_chunk);',
'        exception',
'            when others then',
'                v_amount := 2000;',
'                continue;',
'        end;',
'        ',
'        v_offset := v_offset + v_amount;',
'    end loop;',
'    ',
'    -- Return a JSON response with the MIME type',
'    apex_json.open_object;',
'    apex_json.write(''success'', true);',
'    apex_json.write(''file_mime_type'', v_file_mime_type);',
'    apex_json.write(''file_name'', v_file_name);',
'    apex_json.write(''file_data'', ''data:'' || v_file_mime_type || '';base64,'' || v_base64);',
'    apex_json.close_object;',
'    ',
'    -- Free temporary LOB',
'    dbms_lob.freetemporary(v_base64);',
'    ',
'exception',
'    when no_data_found then',
'        apex_json.open_object;',
'        apex_json.write(''success'', false);',
'        apex_json.write(''message'', ''File not found'');',
'        apex_json.close_object;',
'    when others then',
'        apex_json.open_object;',
'        apex_json.write(''success'', false);',
'        apex_json.write(''message'', sqlerrm);',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65880415810848215
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346760986019094928)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Rollback Report Status'
,p_static_id=>'rollback-report-status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_old_status    VARCHAR2(255);',
'    v_new_status    VARCHAR2(255);',
'BEGIN',
'    SELECT STATUS',
'    INTO v_old_status',
'    FROM XTD_WBS',
'    WHERE ID = :P4_HEADER_ID;',
'    ',
'    UPDATE XTD_WBS',
'    SET STATUS = ',
'        CASE STATUS',
'            WHEN ''ON REVIEW'' THEN ''RECEIVED''',
'            WHEN ''ON INVESTIGATION'' THEN ''ON REVIEW''',
'            WHEN ''CANCELLED'' THEN ''ON REVIEW''',
'            ELSE STATUS',
'        END,',
'    NOTES = ''''',
'    WHERE ID = :P4_HEADER_ID',
'    AND STATUS IN (''ON REVIEW'', ''ON INVESTIGATION'', ''CANCELLED'');',
'    ',
'    -- Check whether anything changed',
'    IF SQL%ROWCOUNT > 0 THEN',
'        -- Fetch the new status after the update',
'        SELECT STATUS',
'        INTO v_new_status',
'        FROM XTD_WBS',
'        WHERE ID = :P4_HEADER_ID;',
'        ',
'        -- Set success message',
'        APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Status successfully rolled back from '' || v_old_status || '' to '' || v_new_status || ''.'';',
'    ELSE',
'        -- Error message when nothing changed',
'        apex_error.add_error( ',
'            p_message          => ''No changes made: invalid ID or the status does not meet the criteria.'',',
'            p_display_location => apex_error.c_inline_in_notification',
'        ); ',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        apex_error.add_error( ',
'            p_message          => ''Record with ID '' || :P4_HEADER_ID || '' was not found.'',',
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
,p_process_when_button_id=>wwv_flow_imp.id(14346760906916094927)
,p_internal_uid=>67219106462653212
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346904418174600031)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save (5) - Report Verification'
,p_static_id=>'save-5-report-verification'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE XTD_WBS',
'    SET',
'        JENIS_BUKTI_PENDUKUNG = :P4_JENIS_BUKTI_VALUE,',
'        HASIL_VERIFIKASI = :P4_HASIL_VERIFIKASI_VALUE,',
'        KATEGORI_PELANGGARAN = :P4_KATEGORI_PELANGGARAN_VALUE',
'    WHERE ID = :P4_HEADER_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(14344300039949909298)
,p_internal_uid=>67362538618158315
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14345421005364289918)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P4_HEADER_ID'
,p_static_id=>'set-p4-header-id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT ID',
'INTO :P4_HEADER_ID',
'FROM XTD_WBS',
'WHERE ID = :P4_HEADER_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65879125807848202
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14345421126769289919)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P4_NOMOR_LAPORAN'
,p_static_id=>'set-p4-nomor-laporan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT NOMOR_LAPORAN',
'INTO :P4_NOMOR_LAPORAN',
'FROM XTD_WBS',
'WHERE ID = :P4_HEADER_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65879247212848203
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14345691879926332549)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P4_STATUS'
,p_static_id=>'set-p4-status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT STATUS',
'INTO :P4_STATUS',
'FROM XTD_WBS',
'WHERE ID = :P4_HEADER_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>66150000369890833
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14346761219236094930)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P4_STATUS_IF_ROLLBACK'
,p_static_id=>'set-p4-status-if-rollback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT CASE STATUS',
'        WHEN ''ON REVIEW'' THEN ''RECEIVED''',
'        WHEN ''ON INVESTIGATION'' THEN ''ON REVIEW''',
'        WHEN ''CANCELLED'' THEN ''ON REVIEW''',
'        ELSE STATUS',
'    END',
'    INTO :P4_STATUS_IF_ROLLBACK',
'    FROM XTD_WBS',
'    WHERE ID = :P4_HEADER_ID;',
'',
'EXCEPTION ',
'    WHEN NO_DATA_FOUND THEN ',
'        NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67219339679653214
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14345693454203332564)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Verify Report'
,p_static_id=>'verify-report'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE XTD_WBS',
'    SET ',
'        STATUS = ''ON INVESTIGATION'',',
'        JENIS_BUKTI_PENDUKUNG = :P4_JENIS_BUKTI_VALUE,',
'        HASIL_VERIFIKASI = :P4_HASIL_VERIFIKASI_VALUE,',
'        NO_BERITA_ACARA_TINDAK_LANJUT = :P4_NO_BERITA_ACARA_VALUE,',
'        TIM_INVESTIGASI = :P4_TIM_INVESTIGASI_VALUE,',
'        RESULT_SUMMARY = :P4_RESULT_SUMMARY_VALUE,',
'        KATEGORI_PELANGGARAN = :P4_KATEGORI_PELANGGARAN_VALUE',
'    WHERE ID = :P4_HEADER_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14345693288164332563)
,p_required_patch=>wwv_flow_imp.id(14344300039949909298)
,p_internal_uid=>66151574646890848
);
wwv_flow_imp.component_end;
end;
/
