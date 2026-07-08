# WBS — Whistleblowing System

A secure, end-to-end **Whistleblowing System** built on **Oracle APEX**. It lets anyone submit a violation report (anonymously if they choose), track its progress with a report number, and gives officers a full case-management workflow — claim, verify, investigate, and close — behind role-based access control.

The UI is a custom **glassmorphism / liquid-glass** redesign: a dark teal aurora gradient background, frosted translucent panels, and neon teal→cyan accents.

## ⚠️ Disclaimer

This repository is a **portfolio / demo project** created solely to showcase my work. It is **not** the system used in production at the company where I currently work.

To protect confidentiality, this version has been **substantially rebuilt and differs significantly from the original**:

- All company branding, names, logos, internal URLs, and email addresses have been removed or replaced with placeholders.
- The application has been re-themed, re-worded, and restructured for public presentation.
- **All data in this app is entirely fictional** — the reports, names, and details are made-up sample data generated purely for demonstration. No real reports, real people, or any confidential company information are included.

Nothing in this project reveals, reflects, or relies on any proprietary or confidential material belonging to my employer.

## 🔗 Live Demo

**https://oracleapex.com/ords/r/manuelportofolio/wbs/landing-page**

The landing page, report submission form, and public report tracker are all open — no login required.

### Admin login

To explore the case-management side (report list, case detail, investigation workflow), use the admin credentials:

| Field | Value |
|---|---|
| **Username** | `ADMIN.WBS` |
| **Password** | `4dminWBS!@` |

> ⚠️ These are shared demo credentials for portfolio/evaluation purposes only. Please don't change the password or delete other people's demo data.

## ✨ Features

- **Public report submission** — a guided form with a confidentiality notice; reporters can stay anonymous.
- **Report tracker** — anyone can look up the status of a report by its report number.
- **Case-management workflow** — `RECEIVED → ON REVIEW → ON INVESTIGATION → CLOSED` (with `REJECTED` / `CANCELLED` paths).
- **Officer actions** — claim a report, verify or reject it, record investigation findings and supporting evidence, then close it.
- **Interactive report grid** — filter, search, and export reports to XLSX.
- **Email notifications** — status changes trigger `APEX_MAIL` notifications.
- **Role-based access control** — APEX ACL roles (Administrator / Contributor / Reader).
- **PWA-ready** — installable with custom app icons.
- **Responsive glassmorphism UI** — modern frosted-glass design with graceful fallback on older browsers.

## 🛠 Tech Stack

- **Oracle APEX 23.2+** (Application Express)
- **Oracle Database** (tables, triggers, sequences)
- **PL/SQL** for business logic and workflow
- Custom **CSS** (glassmorphism theme on APEX's *Vita* theme style)

## 📦 Repository Contents

| File | Description |
|---|---|
| `WBS-Portfolio-install.sql` | Full APEX application export — import this to install the app. |
| `wbs-sample-data.sql` | Sample/demo report data covering every workflow status. |
| `glass-theme.css` | App-wide glassmorphism stylesheet (also bundled inside the export). |
| `*-inline.css` | Page-level styles for the landing, login, and individual pages. |
| `app-icon-512.png` | 512px app/PWA icon preview. |

## 🚀 Installation

1. Log in to any **Oracle APEX 23.2+** workspace (e.g. a free workspace at [apex.oracle.com](https://apex.oracle.com)).
2. **App Builder → Import** → choose `WBS-Portfolio-install.sql` (File type: *Database Application*).
3. Keep or override the App ID and parsing schema during install.
4. Install the **Supporting Objects** when prompted — this creates the `XTD_WBS` / `XTD_WBS_BLOB` tables, triggers, and sequences automatically.
5. (Optional) Run `wbs-sample-data.sql` in **SQL Workshop → SQL Scripts** to load demo reports.
6. Create at least one workspace user and assign a role via **Administration → Manage User Access**, then open the app.

### After import

- **Email:** update the Page 0 items `P0_EMAIL_FROM`, `P0_EMAIL_TO`, `P0_EMAIL_ADMIN`, and `P0_LOGIN_LINK` to match your environment. On apex.oracle.com, mail only sends to your own verified address.
- **Access control:** assign users an ACL role (Administrator / Contributor / Reader).
- **Browser support:** `backdrop-filter` needs a modern browser (Chrome / Edge / Safari, Firefox 103+). Older browsers fall back to translucent colors without blur.

## 🗺 Main Pages

| Page | Purpose |
|---|---|
| 99 | Public landing page |
| 3 | Public report submission form |
| 6 | Public report tracker (search by report number) |
| 9999 | Admin login |
| 1 | Admin home |
| 2 | Report list (filters + interactive grid) |
| 4 | Report detail (claim → verify/reject → investigate → close) |
| 5, 8–11 | Update, download (XLSX), reject, verify, upload additional evidence |

## 📄 License

This project is provided for portfolio and demonstration purposes.

---

Built by **Manuel** · [Live Demo](https://oracleapex.com/ords/r/manuelportofolio/wbs/landing-page)
