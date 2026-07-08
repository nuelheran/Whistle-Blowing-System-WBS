-- ============================================================================
-- WBS (Whistleblowing System) - Sample / Demo Data
-- Run in: SQL Workshop > SQL Scripts (as the app parsing schema)
-- Safe to re-run: deletes previous demo rows (CREATED_BY = 'DEMO') first.
--
-- Report numbers use sequence values BELOW the XTD_WBS_NO start value (69),
-- so newly submitted reports from the app will never collide with demo data.
-- Statuses cover the full workflow so every action can be demonstrated:
--   OPEN -> Claim | ON REVIEW -> Verify / Reject | ON INVESTIGATION -> Close
-- ============================================================================

DELETE FROM XTD_WBS WHERE CREATED_BY = 'DEMO';

-- 1) OPEN - fresh report, ready to demo the "Claim" action
INSERT INTO XTD_WBS (NAMA_PELAPOR, TELP_PELAPOR, EMAIL_PELAPOR, JABATAN_PELAPOR,
  NAMA_TERLAPOR, JABATAN_TERLAPOR, WAKTU_KEJADIAN, LOKASI_KEJADIAN, KRONOLOGIS_KEJADIAN,
  STATUS, NOMOR_LAPORAN, KATEGORI_PELANGGARAN, SOURCE, CREATED_DATE, CREATED_BY)
VALUES ('Daniel Pratama', '+62 81234567801', 'daniel.pratama@mail.com', 'Employee',
  'Rudi Hartono', 'Procurement Supervisor', 'June 2026', 'Head Office - Procurement Dept.',
  'During the vendor selection for office supplies, the supervisor repeatedly directed purchase orders to a single vendor at prices 20-30 percent above market rate. Quotation documents from other vendors were never evaluated.',
  'OPEN', '61/IVC/VI/2026', 'Fraud', 'WEBSITE', SYSDATE - 2, 'DEMO');

-- 2) OPEN - anonymous report (no reporter name), also ready for "Claim"
INSERT INTO XTD_WBS (NAMA_PELAPOR, TELP_PELAPOR, EMAIL_PELAPOR, JABATAN_PELAPOR,
  NAMA_TERLAPOR, JABATAN_TERLAPOR, WAKTU_KEJADIAN, LOKASI_KEJADIAN, KRONOLOGIS_KEJADIAN,
  STATUS, NOMOR_LAPORAN, KATEGORI_PELANGGARAN, SOURCE, CREATED_DATE, CREATED_BY)
VALUES (NULL, '+62 81234567802', 'anon.whistle@mail.com', 'Vendor',
  'Agus Salim', 'Warehouse Staff', '15 June 2026', 'Distribution Center - Cikarang',
  'Finished goods were loaded onto an unregistered truck after working hours without a delivery order. Security records show the same truck entering the site three times in two weeks.',
  'OPEN', '62/IVC/VI/2026', 'Fraud', 'WHATSAPP', SYSDATE - 1, 'DEMO');

-- 3) ON REVIEW - claimed by officer, ready to demo "Verify" or "Reject"
INSERT INTO XTD_WBS (NAMA_PELAPOR, TELP_PELAPOR, EMAIL_PELAPOR, JABATAN_PELAPOR,
  NAMA_TERLAPOR, JABATAN_TERLAPOR, WAKTU_KEJADIAN, LOKASI_KEJADIAN, KRONOLOGIS_KEJADIAN,
  STATUS, NOMOR_LAPORAN, KATEGORI_PELANGGARAN, SOURCE, PIC,
  JENIS_BUKTI_PENDUKUNG, HASIL_VERIFIKASI, CREATED_DATE, CREATED_BY, LAST_UPDATE_DATE)
VALUES ('Siti Rahmawati', '+62 81234567803', 'siti.rahma@mail.com', 'Employee',
  'Budi Santoso', 'Finance Manager', 'May 2026', 'Head Office - Finance Dept.',
  'Reimbursement claims were approved for team building activities that never took place. Supporting receipts appear to be issued by a restaurant that has been closed since 2024.',
  'ON REVIEW', '63/IVC/V/2026', 'Fraud', 'EMAIL', 'INTERNAL AUDIT',
  'Copies of reimbursement forms, restaurant receipts, bank statements',
  'Supporting documents provided', SYSDATE - 10, 'DEMO', SYSDATE - 5);

-- 4) ON REVIEW - code of conduct case, second candidate for Verify/Reject demo
INSERT INTO XTD_WBS (NAMA_PELAPOR, TELP_PELAPOR, EMAIL_PELAPOR, JABATAN_PELAPOR,
  NAMA_TERLAPOR, JABATAN_TERLAPOR, WAKTU_KEJADIAN, LOKASI_KEJADIAN, KRONOLOGIS_KEJADIAN,
  STATUS, NOMOR_LAPORAN, KATEGORI_PELANGGARAN, SOURCE, PIC,
  JENIS_BUKTI_PENDUKUNG, HASIL_VERIFIKASI, CREATED_DATE, CREATED_BY, LAST_UPDATE_DATE)
VALUES ('Andi Wijaya', '+62 81234567804', 'andi.wijaya@mail.com', 'Employee',
  'Hendra Gunawan', 'Sales Area Manager', 'April - June 2026', 'Branch Office - Surabaya',
  'The area manager repeatedly used abusive language and threatened subordinates with dismissal during weekly meetings. Several team members have resigned citing the hostile work environment.',
  'ON REVIEW', '64/IVC/IV/2026', 'Code of Conduct Violation', 'WEBSITE', 'HUMAN RESOURCES',
  'Voice recording of meeting, chat screenshots, resignation letters',
  'Supporting documents provided', SYSDATE - 15, 'DEMO', SYSDATE - 8);

-- 5) ON INVESTIGATION - verified, ready to demo "Close" and "Upload Additional Evidence"
INSERT INTO XTD_WBS (NAMA_PELAPOR, TELP_PELAPOR, EMAIL_PELAPOR, JABATAN_PELAPOR,
  NAMA_TERLAPOR, JABATAN_TERLAPOR, WAKTU_KEJADIAN, LOKASI_KEJADIAN, KRONOLOGIS_KEJADIAN,
  STATUS, NOMOR_LAPORAN, KATEGORI_PELANGGARAN, SOURCE, PIC,
  JENIS_BUKTI_PENDUKUNG, HASIL_VERIFIKASI, NO_BERITA_ACARA_TINDAK_LANJUT, TIM_INVESTIGASI,
  CREATED_DATE, CREATED_BY, LAST_UPDATE_DATE)
VALUES ('Maya Kusuma', '+62 81234567805', 'maya.kusuma@mail.com', 'Customer',
  'Dedi Firmansyah', 'Quality Control Inspector', 'March 2026', 'Plant 2 - Karawang',
  'Incoming material inspections were signed off without physical checks. QC checksheets for three shipments show identical measurement values copied from previous batches.',
  'ON INVESTIGATION', '65/IVC/III/2026', 'Policy and Procedure Deviation', 'EMAIL', 'INTERNAL AUDIT',
  'Incoming QC checksheets, material certificates, warehouse CCTV footage',
  'Supporting documents provided', 'FUP/2026/0001', 'INTERNAL AUDIT',
  SYSDATE - 30, 'DEMO', SYSDATE - 12);

-- 6) ON INVESTIGATION - second investigation in progress
INSERT INTO XTD_WBS (NAMA_PELAPOR, TELP_PELAPOR, EMAIL_PELAPOR, JABATAN_PELAPOR,
  NAMA_TERLAPOR, JABATAN_TERLAPOR, WAKTU_KEJADIAN, LOKASI_KEJADIAN, KRONOLOGIS_KEJADIAN,
  STATUS, NOMOR_LAPORAN, KATEGORI_PELANGGARAN, SOURCE, PIC,
  JENIS_BUKTI_PENDUKUNG, HASIL_VERIFIKASI, NO_BERITA_ACARA_TINDAK_LANJUT, TIM_INVESTIGASI,
  CREATED_DATE, CREATED_BY, LAST_UPDATE_DATE)
VALUES ('Rina Marlina', '+62 81234567806', 'rina.marlina@mail.com', 'Employee',
  'Tono Prasetyo', 'IT Administrator', 'February 2026', 'Head Office - IT Dept.',
  'Administrator account credentials were shared with an external contractor via personal email, giving unaudited access to the HR payroll database for at least six weeks.',
  'ON INVESTIGATION', '66/IVC/II/2026', 'Policy and Procedure Deviation', 'WHATSAPP', 'INTERNAL AUDIT',
  'Email export, VPN access logs, screenshot of shared credentials',
  'Supporting documents provided', 'FUP/2026/0002', 'INTERNAL AUDIT',
  SYSDATE - 45, 'DEMO', SYSDATE - 20);

-- 7) CLOSED - full lifecycle completed, shows result summary on detail page
INSERT INTO XTD_WBS (NAMA_PELAPOR, TELP_PELAPOR, EMAIL_PELAPOR, JABATAN_PELAPOR,
  NAMA_TERLAPOR, JABATAN_TERLAPOR, WAKTU_KEJADIAN, LOKASI_KEJADIAN, KRONOLOGIS_KEJADIAN,
  STATUS, NOMOR_LAPORAN, KATEGORI_PELANGGARAN, SOURCE, PIC,
  JENIS_BUKTI_PENDUKUNG, HASIL_VERIFIKASI, NO_BERITA_ACARA_TINDAK_LANJUT, TIM_INVESTIGASI,
  RESULT_SUMMARY, NOTES, CREATED_DATE, CREATED_BY, LAST_UPDATE_DATE)
VALUES ('Fajar Nugroho', '+62 81234567807', 'fajar.nugroho@mail.com', 'Employee',
  'Lina Kartika', 'HR Recruiter', 'January 2026', 'Head Office - HR Dept.',
  'Candidates were asked to transfer an administration fee to a personal bank account as a condition to proceed to the interview stage. Two candidates provided transfer receipts.',
  'CLOSED', '67/IVC/I/2026', 'Fraud', 'WEBSITE', 'HUMAN RESOURCES',
  'Bank transfer receipts, chat history with candidates',
  'Supporting documents provided', 'FUP/2026/0003', 'HUMAN RESOURCES',
  'Investigation confirmed the violation. Employment terminated effective 1 March 2026 and the case was reported to authorities. Recruitment SOP updated to require official payment channels only.',
  'Case closed with disciplinary action and SOP improvement.',
  SYSDATE - 90, 'DEMO', SYSDATE - 40);

-- 8) CANCELLED - rejected at review stage, shows reject notes/feedback
INSERT INTO XTD_WBS (NAMA_PELAPOR, TELP_PELAPOR, EMAIL_PELAPOR, JABATAN_PELAPOR,
  NAMA_TERLAPOR, JABATAN_TERLAPOR, WAKTU_KEJADIAN, LOKASI_KEJADIAN, KRONOLOGIS_KEJADIAN,
  STATUS, NOMOR_LAPORAN, KATEGORI_PELANGGARAN, SOURCE, PIC,
  JENIS_BUKTI_PENDUKUNG, HASIL_VERIFIKASI, FEEDBACK, NOTES,
  CREATED_DATE, CREATED_BY, LAST_UPDATE_DATE)
VALUES ('Bambang Setiawan', '+62 81234567808', 'bambang.s@mail.com', 'Other',
  'Unknown Staff', 'Unknown', 'December 2025', 'Branch Office - Medan',
  'A staff member allegedly took office stationery home. No further details, dates, or names were provided by the reporter.',
  'CANCELLED', '68/IVC/XII/2025', 'Code of Conduct Violation', 'EMAIL', 'HUMAN RESOURCES',
  'None provided', 'No supporting documents',
  'Report rejected: information is insufficient to identify the reported party and no supporting evidence was provided. Reporter was contacted twice with no response.',
  'Insufficient information - reporter unreachable.',
  SYSDATE - 120, 'DEMO', SYSDATE - 100);

COMMIT;

-- ============================================================================
-- SAMPLE ATTACHMENTS (XTD_WBS_BLOB)
-- Real, valid tiny files (PNG image + PDF document) generated for demo use,
-- linked to the demo reports via WBS_ID. The first attachment is also copied
-- to XTD_WBS.FILE_BLOB so the download/preview column on the report pages works.
-- (Demo blob rows are removed automatically on re-run: the DELETE above cascades
--  through the XTD_WBS_BLOB_FK foreign key.)
-- ============================================================================
DECLARE
  l_png BLOB;
  l_pdf BLOB;

  PROCEDURE add_file (
    p_nomor  IN VARCHAR2,
    p_fname  IN VARCHAR2,
    p_mime   IN VARCHAR2,
    p_blob   IN BLOB
  ) IS
  BEGIN
    INSERT INTO XTD_WBS_BLOB
      (FILE_NAME, FILE_MIME_TYPE, FILE_BLOB_DATED, FILE_BLOB, WBS_ID,
       CREATED_DATE, CREATED_BY)
    SELECT p_fname, p_mime, w.CREATED_DATE, p_blob, w.ID,
           w.CREATED_DATE, 'DEMO'
      FROM XTD_WBS w
     WHERE w.NOMOR_LAPORAN = p_nomor
       AND w.CREATED_BY    = 'DEMO';
  END add_file;

  PROCEDURE set_primary_file (
    p_nomor  IN VARCHAR2,
    p_fname  IN VARCHAR2,
    p_mime   IN VARCHAR2,
    p_blob   IN BLOB
  ) IS
  BEGIN
    UPDATE XTD_WBS
       SET FILE_BLOB = p_blob,
           FILE_NAME = p_fname,
           MIME_TYPE = p_mime
     WHERE NOMOR_LAPORAN = p_nomor
       AND CREATED_BY    = 'DEMO';
  END set_primary_file;

BEGIN
  ---------------------------------------------------------------------------
  -- Demo PNG image (240x140, "WBS DEMO" card) - 1.7 KB, valid image/png
  ---------------------------------------------------------------------------
  l_png := TO_BLOB(HEXTORAW(
      '89504E470D0A1A0A0000000D49484452000000F00000008C0403000000B09B391B00000030504C5445FFFFFFE0EFEDBAE0DB7DF3E17DF2E073E5D42DD4BF9FC6C28CAEAB60B3A960999349827D36726E22615D12534F0D4E4A3F28E4070000062E494441' ||
      '5478DAED9B5D6C1C571580BF3B5E6F969848633748A8E561EC4DDCACE32496C84BD53E2C113F79EB262A482191EA9490125E48B0DA3E38A4AE5C175579F022214C2A1A1654D40853BCFD110402DD4520D14615317E709A38B647554B15D1D883D33693FD' ||
      '99D387BBBBB63765CDA6DE442AF73E5CCFDE73CF7E3EF79E73E6DC598D126E4FB33060036E500B010FDF72EA89DB6C31276E31F461E3D5066CC0066CC0066CC0066CC0066CC0066CC0066CC0066CC08D6DA1DAE2B713D659F8712AF237E42B5E77EAB924' ||
      'B4AD3F18078A2732EACB1B763408DC8678365902083CE200CCCD3DFA6B071949C133FCC669CC5287100F7129804019123C0EEFA61ABAC716B8257303B0CBC3D3F08FC63A972A817129A01C20FCC61F1C0270098FFEF129BB6116DB64111C5CE6511A7347' ||
      '2F054873B0BDEDAB3F6998C536F314D881C76CC5116D403C003A9D46C5719C3966D84016B732D72384B2C93434813804B8743083579E7B25850536E75FF0784229D516CB023CA194524A8D735D29E5022F2AD502F0EFEFB7B61DBD09B0E0AA7602B27400' ||
      'E4B67FCD250A09821F7EE35980F93777A4ABD5D240565F163A87BDF9A12FD40BEEA040B6D9B283C02DE50F20FC23D801CC8DE860963DD56A4990A4BE1CF200DE49D7090E11CC7A287B5918E7D3F0F95EBDDD00F8C92AB5F7A0509A3BA0FFEEAB13AC60DE' ||
      'B388E783C5C4853C03D6A1870088045387E128404444A447AF2FF87AEE244466DE840FDDFAC016CC60E1885BB238FCC6D923E45D68FAEE4FF703A80DC7E1C32AB5EB5E39B5A5E1EFED77A79174DD16CFD181C31456C962EBEBC838C0F6437A249442B255' ||
      '2E99258B03C800911ED809C93A2D76F813713AF8F9E28DCC2AEFAD95D003BB607C99D6000324E9058AD0AC6F8257EA2C04E2CC60135A923F08007EB6C4B7D640AAEA6E3A53F0D6381ADC0634D95AAB0EB00D3828BDEA9A3B0A36A7BFF9EAFC547AD912F8' ||
      '4AA988F638F285CA0AF5EAAF09EA2A04B42B3B58E8FF1C72DB4BA3171F5DEA085ED5B75EBFC07A80F2CFD38964BD35573B58360A685D1C0CF7ACE0928725C5E14F56ECB542082C87C5C405DFD699AB9C53644972297B4692044BF6275D3738A4E7C417F3' ||
      '87EA38B41F0E8D3CD4DEF69DDEB2B7D9A504524A1B5FA2127DDAEFBC1B482272506EBA0D101191FFC070E952B3333EAC95146B250FEB44A4009F5DD43A2822AB52578F41D5A63797DDB609F23A85DEB1FA057DA11715BF21EF1CD1FB32803F0EA7A9F6B5' ||
      '55005F7A04D6560F0E947D3101F7CC5E48A01275C6F14ACD57004F562E87B5650F3E58927781DF017CC669C4D929F2DF63B6B9743FFE55230E6DD6EF6B08FB6D80BB12AB0F6EDDF4E778AD4470F188DDDAFFF60DE39F2C8E6FAEAD5A1C9B2702066CC006' ||
      '6CC0066CC09F66B09FBDE163A16765B5EE3AC1C160CCBDE96A37CBD11AE2A335C1B996BFA66B57B3F1C62CF5D4EEF587FD6837574F6DBA10CD5E3DB5C985CBD161E07274383FC0CB7E36E87B1C198C79574F6D726570B316FBD16E8E7FEBE9E7637EB41B' ||
      '19DC8CF41D6373DFB1C16E2E4787D9DC77ECFAF3B15A60DB85C8A5917186D2BB5FFB1E432FA620752607A4CEE49AC69884FC5D3BC9B5A4530CFD259DCBA7DDD4999CD679E4D9C7F69C8F5C1A19CFE5D3AEBFAF057FEF07DD8F79A93339FC7D2D6BF69CAF' ||
      '55DEE6EE3E2E22FED8C2586E9B6C59182B6EB9F6EA56991009B6CA84F44BF7B5CCC46C6EDB5BF3C56D0B63F96D13B35A2022FED8B58CF48B883F36312BD2252F4997FC521666B6CA8474C94BD25FB3BC6D7EF9DD64B1AFCBC5560904DB1282F7A3094FF7' ||
      '5B8A4DE0390AF78B1B055BE1392571B1AF4B3B65B1AFCBF51C50D8283E0773EF47139E5AF6D8E063C369E3D327FF75DFE4B2A175D3D3B6EEEF7CAFB734363DFDCF65E28A4EB572597DE5386E127757E575022F50A822A0FB9EB33D60BB823D5E71092DAE' ||
      'E8B8BB047B69446AF98AE00BE72E5A7666B4FCF10753BBB1F69E7B1DDD47B23DB0F1B7AFD1F9C2952440E7C9A9B7F69E7B1DECCC287808766694CE93538B68ADBEE4E9D3C783A3CFDDFF8BD881CA6AF5DFDF0BFB1F7805DD5BBFB321FCCE69C2E17BE300' ||
      'E1E684B3FF815720766092E6BEE4CE58ECC024E1E6C49213B156879DB1FFFDD0B6903187B65B045E17FF7FB3D8800DD8800DD8800DD8800DD8800DB8DE1682DBF13AEE6DB45899B7EA0DF85307FE08F8C593A57FD966AD0000000049454E44AE426082'
  ));

  ---------------------------------------------------------------------------
  -- Demo PDF document (1 page, "WBS - Sample Evidence Document") - valid PDF
  ---------------------------------------------------------------------------
  l_pdf := TO_BLOB(HEXTORAW(
      '255044462D312E340A312030206F626A0A3C3C202F54797065202F436174616C6F67202F5061676573203220302052203E3E0A656E646F626A0A322030206F626A0A3C3C202F54797065202F5061676573202F4B696473205B33203020525D202F436F75' ||
      '6E742031203E3E0A656E646F626A0A332030206F626A0A3C3C202F54797065202F50616765202F506172656E74203220302052202F4D65646961426F78205B30203020363132203739325D202F436F6E74656E7473203420302052202F5265736F757263' ||
      '6573203C3C202F466F6E74203C3C202F4631203520302052203E3E203E3E203E3E0A656E646F626A0A342030206F626A0A3C3C202F4C656E67746820333431203E3E0A73747265616D0A4254202F46312031362054662036302037343020546420285742' ||
      '53202D2053616D706C652045766964656E636520446F63756D656E742920546A2045540A4254202F46312031312054662036302037313020546420285468697320697320612064656D6F206174746163686D656E742067656E65726174656420666F7220' ||
      '7468652057425320706F7274666F6C696F206170706C69636174696F6E2E2920546A2045540A4254202F4631203131205466203630203639342054642028497420726570726573656E747320737570706F7274696E672065766964656E63652075706C6F' ||
      '616465642062792061207265706F727465722E2920546A2045540A4254202F463120313120546620363020363738205464202846696C6520636F6E74656E74732061726520706C616365686F6C6465727320616E6420636F6E7461696E206E6F20726561' ||
      '6C20646174612E2920546A2045540A0A656E6473747265616D0A656E646F626A0A352030206F626A0A3C3C202F54797065202F466F6E74202F53756274797065202F5479706531202F42617365466F6E74202F48656C766574696361203E3E0A656E646F' ||
      '626A0A787265660A3020360A303030303030303030302036353533352066200A30303030303030303039203030303030206E200A30303030303030303538203030303030206E200A30303030303030313135203030303030206E200A3030303030303032' ||
      '3431203030303030206E200A30303030303030363333203030303030206E200A747261696C65720A3C3C202F53697A652036202F526F6F74203120302052203E3E0A7374617274787265660A3730330A2525454F460A'
  ));

  -- 61 - OPEN (procurement mark-up)
  add_file('61/IVC/VI/2026',  'vendor-quotation-comparison.pdf', 'application/pdf', l_pdf);
  add_file('61/IVC/VI/2026',  'purchase-order-screenshot.png',   'image/png',       l_png);
  set_primary_file('61/IVC/VI/2026', 'vendor-quotation-comparison.pdf', 'application/pdf', l_pdf);

  -- 62 - OPEN (warehouse, anonymous)
  add_file('62/IVC/VI/2026',  'gate-cctv-photo.png',             'image/png',       l_png);
  set_primary_file('62/IVC/VI/2026', 'gate-cctv-photo.png', 'image/png', l_png);

  -- 63 - ON REVIEW (fictitious reimbursement)
  add_file('63/IVC/V/2026',   'reimbursement-receipts.pdf',      'application/pdf', l_pdf);
  add_file('63/IVC/V/2026',   'bank-statement-extract.png',      'image/png',       l_png);
  set_primary_file('63/IVC/V/2026', 'reimbursement-receipts.pdf', 'application/pdf', l_pdf);

  -- 64 - ON REVIEW (code of conduct)
  add_file('64/IVC/IV/2026',  'meeting-chat-screenshot.png',     'image/png',       l_png);
  add_file('64/IVC/IV/2026',  'resignation-letters.pdf',         'application/pdf', l_pdf);
  set_primary_file('64/IVC/IV/2026', 'meeting-chat-screenshot.png', 'image/png', l_png);

  -- 65 - ON INVESTIGATION (QC checksheets)
  add_file('65/IVC/III/2026', 'qc-incoming-checksheet.pdf',      'application/pdf', l_pdf);
  add_file('65/IVC/III/2026', 'material-inspection-photo.png',   'image/png',       l_png);
  set_primary_file('65/IVC/III/2026', 'qc-incoming-checksheet.pdf', 'application/pdf', l_pdf);

  -- 66 - ON INVESTIGATION (shared credentials)
  add_file('66/IVC/II/2026',  'vpn-access-log.pdf',              'application/pdf', l_pdf);
  add_file('66/IVC/II/2026',  'shared-credentials-screenshot.png','image/png',      l_png);
  set_primary_file('66/IVC/II/2026', 'vpn-access-log.pdf', 'application/pdf', l_pdf);

  -- 67 - CLOSED (recruitment fee fraud)
  add_file('67/IVC/I/2026',   'transfer-receipt.png',            'image/png',       l_png);
  add_file('67/IVC/I/2026',   'candidate-chat-history.pdf',      'application/pdf', l_pdf);
  set_primary_file('67/IVC/I/2026', 'transfer-receipt.png', 'image/png', l_png);

  -- 68 - CANCELLED: intentionally no attachments ("None provided")
END;
/

COMMIT;

-- Verification: attachments per demo report
SELECT w.NOMOR_LAPORAN, w.STATUS, COUNT(b.ID) AS ATTACHMENTS
  FROM XTD_WBS w
  LEFT JOIN XTD_WBS_BLOB b ON b.WBS_ID = w.ID
 WHERE w.CREATED_BY = 'DEMO'
 GROUP BY w.NOMOR_LAPORAN, w.STATUS
 ORDER BY 1;
