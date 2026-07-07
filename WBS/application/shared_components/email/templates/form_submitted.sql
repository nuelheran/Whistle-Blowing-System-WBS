prompt --application/shared_components/email/templates/form_submitted
begin
--   Manifest
--     EMAIL TEMPLATE: Form Submitted
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>13144316281138660209
,p_default_application_id=>125939
,p_default_id_offset=>14279541879556441716
,p_default_owner=>'WKSP_MANUELPORTOFOLIO'
);
wwv_flow_imp_shared.create_email_template(
 p_id=>wwv_flow_imp.id(14345142820446278430)
,p_name=>'Form Submitted'
,p_static_id=>'FORM_SUBMITTED'
,p_version_number=>2
,p_subject=>'[WBS] Report Submitted Successfully - #REPORT_NUMBER#'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<body style="margin:0;padding:0;background-color:#f4f6f9;font-family:Arial,Helvetica,sans-serif;">',
'',
'  <table width="100%" cellpadding="0" cellspacing="0" style="background-color:#f4f6f9;">',
'    <tr>',
'      <td align="center" style="padding:30px 0;">',
'',
'        <!-- Container -->',
'        <table width="600" cellpadding="0" cellspacing="0" style="background-color:#ffffff;border-radius:6px;overflow:hidden;border:1px solid #dddddd;">',
'',
'          <!-- Solid color header (compatible with all email clients) -->',
'          <tr>',
'            <td style="background-color:#134e4a; color:#ffffff; text-align:center; padding:24px;">',
'              <!-- Solid background color as a fallback -->',
'              <!-- Gradient effect using nested tables for supporting email clients -->',
'              <table width="100%" cellpadding="0" cellspacing="0" style="background-color:#134e4a; border-radius:6px;">',
'                <tr>',
'                  <td style="background-color:#134e4a; padding:4px 0;">',
unistr('                    <h1 style="margin:0;font-size:22px; color:#ffffff;">\D83D\DE4F Thank You for Your Report</h1>'),
'                    <p style="margin:6px 0 0;font-size:14px; color:#ccfbf1;">',
'                      Report Number: <strong style="color:#ffffff;">#REPORT_NUMBER#</strong>',
'                    </p>',
'                  </td>',
'                </tr>',
'              </table>',
'             </td>',
'           </tr>',
'',
'          <!-- Body -->',
'          <tr>',
'            <td style="padding:30px;color:#333333;font-size:14px;line-height:1.6;">',
'',
'              <p style="margin-top:0;">',
'                Dear <strong>#REPORTER_EMAIL#</strong>,',
'              </p>',
'',
'              <p>',
'                Thank you for using WBS as your channel for reporting misconduct ',
'                within the company.',
'              </p>',
'',
'              <!-- Success Confirmation -->',
'              <table width="100%" cellpadding="0" cellspacing="0" style="margin:15px 0; background:#dcfce7; border-radius:8px; border-left:4px solid #22c55e;">',
'                <tr>',
'                  <td style="padding:15px;">',
unistr('                    <strong style="color:#166534;">\2705 We have received your report on #REPORT_DATE# with report number: #REPORT_NUMBER#.</strong>'),
'                  </td>',
'                </tr>',
'              </table>',
'',
'              <!-- Important Information -->',
'              <table width="100%" cellpadding="0" cellspacing="0" style="margin:20px 0; background:#fef3c7; border-radius:8px; border-left:4px solid #f59e0b;">',
'                <tr>',
'                  <td style="padding:15px;">',
unistr('                    <strong style="color:#92400e;">\D83D\DD12 We guarantee that:</strong>'),
'                    <table width="100%" cellpadding="0" cellspacing="0" style="margin:8px 0 0 0;">',
'                      <tr>',
unistr('                        <td style="padding:2px 0 2px 20px;">\2022 Your identity and the information you provide will be kept<strong> confidential </strong></td>'),
'                      </tr>',
'                      <tr>',
unistr('                        <td style="padding:2px 0 2px 20px;">\2022 Reports are handled in an <strong>Independent</strong>, <strong>Objective</strong>, and <strong>Professional</strong> manner</td>'),
'                      </tr>',
'                      <tr>',
unistr('                        <td style="padding:2px 0 2px 20px;">\2022 We will contact you if additional information is needed</td>'),
'                      </tr>',
'                    </table>',
'                   </td>',
'                </tr>',
'              </table>',
'',
'              <p>',
'                Thank you for your participation in building a better, ',
'                cleaner company with integrity.',
'              </p>',
'',
'              <p style="margin-top:30px;">',
'                Sincerely,<br>',
'                <strong>Anti-Fraud Team</strong>',
'              </p>',
'',
'              <hr style="border:none; border-top:1px solid #e2e8f0; margin:20px 0;">',
'',
'              <table width="100%" cellpadding="0" cellspacing="0" style="margin:10px 0 0 0; background:#f0fdfa; border-radius:8px;">',
'                <tr>',
'                  <td style="padding:12px 15px;">',
'                    <p style="margin:0; font-size:12px; color:#64748b; font-style:italic;">',
'                      This email was sent automatically by the system. Please do not reply directly to this email.',
'                      If you have any questions, please contact the WBS team through the official channels available.',
'                    </p>',
'                   </td>',
'                </tr>',
'              </table>',
'',
'              </td>',
'            </tr>',
'',
'          <!-- Footer -->',
'          <tr>',
'            <td style="background-color: #f9f9f9; padding: 20px; text-align: center; font-size: 12px; color: #888888; border-top: 1px solid #eeeeee;">',
'              <p style="margin:0 0 5px 0;">WBS - Independent Whistleblowing System</p>',
unistr('              <p style="margin:0;">\00A9 #CURRENT_YEAR# WBS</p>'),
'              </td>',
'            </tr>',
'',
'        </table>',
'        <!-- End Container -->',
'',
'        </td>',
'      </tr>',
'    </table>',
'',
'</body>'))
,p_html_header=>'<b style="font-size: 24px;" class="text-center">WBS Report Receipt (#REPORT_NUMBER#)</b>'
,p_html_footer=>'If you have other information to deliver, please inform the WBS Team to wbs-team@wbs.example.com. Thank you.  '
,p_version_scn=>'SH256:BktFd7qxvm2CVTfw_nZ5jftjFYMQSUZRwZ22eNkNpKY'
);
wwv_flow_imp.component_end;
end;
/
