---
layout: page
title: Privacy Policy
include_in_header: false
---

**Last updated:** 13 September 2026

This policy describes what personal data is processed when you use this website (**Part A**) and
the **PlayTales** app (**Part B**), for what purposes, on what legal basis, who receives it, and
what rights you have.

The provider is based in Germany, so the EU General Data Protection Regulation (GDPR) applies to
every visitor and every user, wherever you live. Sections 14 and 15 add the points specific to the
United States.

## 1. Controller and contact

The controller within the meaning of the GDPR is:

```
Peter Kurzok Photography
c/o MDC#990
Welserstraße 3
87463 Dietmannsried
Germany
```

E-mail: <!--email_off-->[playtales@peterkurzok.de](mailto:playtales@peterkurzok.de)<!--/email_off-->

No data protection officer has been appointed, as the statutory conditions for doing so are not
met. Please send all privacy matters to the address above.

## 2. Overview

PlayTales is an iOS app that lets children listen to audio plays and audiobooks from Apple Music.
It is expressly aimed at children and is normally set up by a parent.

There is **no server of the provider's own** on which your data is stored. That does **not** mean
no data is transmitted: the app uses third-party services that receive data. Section 6 lists all of
them.

The bulk of your data — favourites, recently played albums, playback positions and all settings —
stays on the device and, if you use iCloud, is synced only into your own private iCloud.

This version fully replaces the policy of 3 January 2024. It describes every service that actually
receives data; earlier versions were no longer accurate on that point.

---

# Part A – Using the website

## 3. Hosting, delivery and server logs

This website is served as a static site via **GitHub Pages** (GitHub, Inc., 88 Colin P Kelly Jr
Street, San Francisco, CA 94107, USA) and delivered through the content delivery network of
**Cloudflare** (Cloudflare, Inc., 101 Townsend St, San Francisco, CA 94107, USA).

Opening a page necessarily transmits data, which is processed in server logs, in particular:

* the IP address of the requesting device,
* the date and time of access,
* the address requested,
* the browser type transmitted (user agent) and the referrer URL.

*Purpose:* technically correct delivery, security, and defence against attacks.
*Legal basis:* Art. 6(1)(f) GDPR — legitimate interest in a secure and available service.

**No cookies are set, no tracking pixels are embedded, no audience measurement is performed and no
forms are offered.** This website does not analyse your browsing behaviour.

## 4. Content loaded from third parties

The pages embed some components from external servers. Loading those components necessarily
transmits your IP address to the provider concerned — even if you otherwise have nothing to do with
that provider.

| Embedded content | Provider | Data transmitted |
| --- | --- | --- |
| jQuery (JavaScript library) from `ajax.googleapis.com` | Google Ireland Ltd. / Google LLC, USA | IP address, user agent, referrer |
| Font Awesome (icon font) from `use.fontawesome.com` | Fonticons, Inc., USA (delivered via Fastly) | IP address, user agent, referrer |
| App Store details retrieved via `itunes.apple.com/lookup` | Apple Inc., One Apple Park Way, Cupertino, CA 95014, USA | IP address, user agent |

*Purpose:* rendering the page and displaying current App Store details (name, price, icon).
*Legal basis:* Art. 6(1)(f) GDPR — legitimate interest in a functional and consistently presented
site.

The page also contains a *Smart App Banner* (`<meta name="apple-itunes-app">`). This is evaluated
by iOS itself; the request to Apple originates from your device, not from this website.

These embeds could technically be avoided by serving the files ourselves. For as long as they
remain, they are disclosed here.

---

# Part B – Using the app

## 5. Processing in the app in detail

### 5.1 Data that never leaves the device

The following is stored only locally on your device and is **not** transmitted to the provider:

* favourites (saved artists) and recently played albums including playback position,
* all settings (search, filters, speech output, demo mode, the switches for statistics and crash
  reports),
* the parental controls: the configured daily and weekly limit, how much has already been listened
  to today and this week, any release that has been granted (until midnight at the latest), and — if
  one is set — the parent's PIN. The PIN is **not stored in the clear**: only a salted cryptographic digest (SHA-256) is kept.
  The digits themselves never leave the device and are not retained locally either,
* the cache for album artwork and for generated speech audio files,
* the local search index (Spotlight) and in-app tips.

Deleting the app removes this data from the device.

### 5.2 Apple Music / MusicKit

The app accesses your Apple Music account to search for content, play it and display artwork. This
requires your permission for "Media & Apple Music", which iOS requests separately. Search terms,
playback activity, your subscription status and artwork requests are transmitted to **Apple** in
the process.

*Purpose:* the core function of the app.
*Legal basis:* Art. 6(1)(b) GDPR — performance of the contract; without this processing the app has
no function.

Apple's own privacy policy additionally applies to Apple's processing.

### 5.3 Syncing via iCloud / CloudKit

If you are signed in to iCloud on your device, favourites, recently played albums and playback
positions are synced via **Apple iCloud (CloudKit)** into your **private** iCloud database so they
are available on your other devices. The provider has **no access** to that database.

*Purpose:* use across devices.
*Legal basis:* Art. 6(1)(b) GDPR.

You can stop syncing at any time by disabling iCloud for PlayTales in the iOS system settings.

### 5.4 Purchases via the App Store (StoreKit)

**Apple StoreKit** is used for in-app purchases (pro features, voluntary support). The purchase
itself runs entirely at Apple; the provider receives no payment data. The app only reads whether a
purchase exists and which app version the app was originally bought with (`originalAppVersion`) —
the latter so that existing customers keep the pro features permanently.

*Purpose:* handling purchases, grandfathering existing customers.
*Legal basis:* Art. 6(1)(b) GDPR.

### 5.5 Speech output

The app can read artist and album titles aloud so that children who cannot yet read can find their
way around. Two methods are available:

* **Apple speech output (local):** works entirely on the device. Nothing is transmitted.
* **Google Cloud Text-to-Speech (default):** the **title to be read out** — the name of the artist
  or the album — is transmitted, together with the language and the desired voice gender, to
  **Google** (Google LLC, 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA), which generates
  an audio file from it. That file is cached on the device, so the same title is not transmitted
  again.

*Purpose:* the read-aloud feature.
*Legal basis:* Art. 6(1)(b) GDPR.

**You can avoid this transmission entirely** by selecting Apple speech output under *Settings ›
Speech output*.

### 5.6 Usage statistics (Mixpanel)

*Purpose:* to see which features of the app are actually used, so development and improvement can
be directed accordingly.

*Data processed:* the names of triggered events (e.g. "Settings tapped", "Added Favorite") together
with related technical attributes (such as which speech method was used, whether a filter is
active, the number of favourites), the app version originally purchased, and a **device-bound
identifier** (the *vendor ID* assigned by Apple) that groups the events of one device.

For the parental controls, the only things transmitted are **whether** a daily or weekly limit was
switched on or off, **which** of the two it was, whether a PIN is set, and that a release was
used — without saying whether it was for the rest of the day or for a few minutes. The configured duration, the time actually listened to and the PIN itself are **not
transmitted** — how long a child may listen is a parenting decision, not a technical fact about the
app.

**This identifier is pseudonymous, not anonymous.** It is not linked to a name, an e-mail address
or an account — the app knows none of these — but it remains personal data under the GDPR. It is
reset once you remove all of this provider's apps from your device.

**No content is transmitted:** neither search terms nor the names of the artists or albums you
listen to. A spoken title that used to be sent along has been removed.

*Recipient:* Mixpanel, Inc., 1 Front Street, San Francisco, CA 94111, USA. The data is sent to and
stored in the **European data centre** (`api-eu.mixpanel.com`).

*Legal basis:* Art. 6(1)(f) GDPR — legitimate interest. The balancing test: the provider has a
legitimate interest in knowing which features are used, because an app cannot be developed
sensibly without that knowledge. No overriding interests conflict with it, because only technical
usage events and a resettable device identifier are processed — no content, no contact details and
no combination with third-party data — because the processing takes place in the EU, and because it
can be **objected to at any time and without any disadvantage**.

**Objection / switching off:** *Settings › Legal › Data Analytics & Crash Reports › Allow Data
Analytics*. From the moment it is switched off, no further events are transmitted.

### 5.7 Crash reports (Sentry)

*Purpose:* to detect and fix errors and crashes.

*Data processed:* the time of the crash, the device model, the operating system and app version,
the technical call stack, and the last technical steps in the app leading up to it (*breadcrumbs*).

Transmission of the IP address and of additional personal attributes is explicitly switched off in
the code (`sendDefaultPii = false`). Listening history and favourites are not part of a crash
report.

*Recipient:* Functional Software, Inc. (Sentry), 45 Fremont Street, San Francisco, CA 94105, USA.
The data is sent to the **European region** (`ingest.de.sentry.io`, data centre in Germany).

*Legal basis:* Art. 6(1)(f) GDPR — legitimate interest in a stable, error-free app. Since only
technical diagnostic data without any content or contact reference is processed, the IP address is
not transmitted, and an objection is possible at any time, no conflicting interests override it.

**Objection / switching off:** *Settings › Legal › Data Analytics & Crash Reports › Send Crash
Reports*. Switching it off takes effect immediately, not at the next launch.

### 5.8 Backup and restore

You can export your favourites and history to a file and import them again. This is triggered
solely by you; the file is saved to the location you choose. The provider does not receive it.

*Legal basis:* Art. 6(1)(b) GDPR.

### 5.9 A pointer to another app (Kickstart Exchange)

*Purpose:* In the free version, **a single card** appears at the very bottom of the library screen
pointing to an app by another independent developer. It helps fund the development of this app.

**Who sees it:** only people **without** Pro. Anyone who has bought Pro, or is grandfathered in from
an earlier purchase, sees no card — and their device then makes **no connection to this service at
all**.

*Data processed:* this app's key with the service, the app identifier (bundle ID), platform, app and
build version, the version of the embedded component, and — only in builds delivered through the App
Store — the Apple-signed purchase receipt **of the app itself** (it proves to the service that the
requesting app is genuine; it concerns the app, not your purchases). When a card is fetched, the
**country of your App Store account** is added, for example "United Kingdom", so that only apps
available there are shown. Whether a card was seen and whether it was tapped is reported back as a
count.

**Not transmitted:** no advertising identifier, no user or device identifier, no location, and no
content — neither search terms nor the names of the artists or albums you listen to. The service
matches **apps**, not people; no profile is built and no cross-provider tracking takes place. That
is also why the app never asks for tracking permission: there is nothing to track.

*Recipient:* Hudson Heavy Industries Ltd, 37 Great Pulteney Street, Bath, BA2 4DA, United Kingdom
(company number 11883499), operator of *Kickstart Exchange* (`api.kickstart.tools`). The provider
states that delivery runs over Cloudflare's network.

*Legal basis:* Art. 6(1)(f) GDPR — legitimate interest. The balancing: the provider has a legitimate
interest in funding the free version without collecting data about the people who use it. No
overriding interests stand against this, because only details about the **app** are transmitted and
not a single detail about the person in front of it — no identifier, no location, no content — so no
profile can arise, and because buying Pro removes the card permanently.

**Switching it off:** Pro removes the card entirely; from then on no data is sent to this service.
Independently of that, you may object under Art. 21 GDPR at any time at the address in section 1.

---

## 6. Overview of recipients

| Recipient | Area | Data | Purpose | Legal basis |
| --- | --- | --- | --- | --- |
| Cloudflare, Inc. (USA) | Website | IP address, access data | delivery, security | Art. 6(1)(f) |
| GitHub, Inc. (USA) | Website | IP address, server logs | hosting | Art. 6(1)(f) |
| Google LLC (USA) | Website | IP address, user agent | delivery of jQuery | Art. 6(1)(f) |
| Fonticons, Inc. (USA) | Website | IP address, user agent | delivery of the icon font | Art. 6(1)(f) |
| Apple Inc. (USA) | Website | IP address | retrieval of App Store details | Art. 6(1)(f) |
| Apple Inc. (USA) | App | search terms, playback, subscription status, artwork requests | Apple Music / MusicKit | Art. 6(1)(b) |
| Apple Inc. (USA) | App | favourites, history, playback positions | syncing via your private iCloud | Art. 6(1)(b) |
| Apple Inc. (USA) | App | purchases, original app version | purchases, grandfathering | Art. 6(1)(b) |
| Google LLC (USA) | App | title to be read out, language, voice gender | speech output (can be switched off) | Art. 6(1)(b) |
| Mixpanel, Inc. (EU data centre) | App | event names, technical attributes, vendor ID | usage statistics (can be objected to) | Art. 6(1)(f) |
| Functional Software, Inc. – Sentry (EU region) | App | crash and diagnostic data | stability (can be objected to) | Art. 6(1)(f) |
| Hudson Heavy Industries Ltd – Kickstart Exchange (United Kingdom) | App | app identifier, versions, the app's own purchase receipt, App Store account country, impression and click counts | pointer to another app (removed by Pro) | Art. 6(1)(f) |

**No data about you is disclosed for advertising purposes.** Since version 1.5.1 the free version
does show a pointer to another app (section 5.9) — but only details about **this app** are
transmitted for it, and not a single one about the person using it. **We do not sell personal
information.** There is no cross-provider tracking; the device identifier from section 5.6 is not
combined with third-party data and never reaches the advertising service.

## 7. Transfers to third countries

Some of the recipients named above are based in the **USA**. Art. 44 et seq. GDPR applies to those
transfers:

* **Apple, Google, Cloudflare and GitHub (Microsoft)** are certified under the *EU-US Data Privacy
  Framework* and/or additionally base the transfer on **standard contractual clauses** pursuant to
  Art. 46(2)(c) GDPR.
* **Mixpanel:** this app's data is processed and stored in the **EU** (`api-eu.mixpanel.com`).
  Standard contractual clauses are in place for supporting access from the USA.
* **Sentry:** this app's data is processed in the **EU region** (data centre in Germany). Standard
  contractual clauses are in place for supporting access from the USA.
* **Kickstart Exchange** is based in the **United Kingdom**. The European Commission has adopted an
  **adequacy decision** for the United Kingdom under Art. 45 GDPR, so the transfer requires no
  additional safeguards. The provider states that delivery runs over Cloudflare's network; it does
  not state in which country the data is stored.

As matters stand, the USA does not offer a level of protection fully equivalent to that of the EU;
in particular, access by US authorities cannot be ruled out in every case. You can switch off the
transfers to Mixpanel and Sentry in the app (sections 5.6 and 5.7), and you can avoid the transfer
to Google for speech output by selecting Apple speech output (section 5.5).

## 8. Retention

* **Data stored on the device** is kept until you delete it in the app or remove the app.
* **iCloud data** remains until you delete it or stop syncing.
* **Crash reports** are kept only for as long as they are useful for debugging, then deleted
  automatically by Sentry. The governing period is the retention period set on the Sentry project;
  it is at most **90 days** from receipt of the report.
* **Usage statistics** are kept only for as long as they are needed to compare usage across app
  versions, then deleted automatically by Mixpanel. The governing period is the retention period
  set on the Mixpanel project.
* **Records relating to the pointer to another app** (section 5.9) are kept by the provider for
  approximately **30 days** by its own account. Daily totals per pair of apps (app identifiers, date,
  platform, country, impression and click counts) are kept for analysis without a fixed deletion
  date; they contain no reference to a person.
* **Server logs** at Cloudflare and GitHub are deleted after the short periods applicable there.

We will tell you the periods currently configured on request, at the address in section 1.

After an objection, no further data is collected; data already transmitted is deleted once the
respective period expires. On request we will arrange for earlier deletion — see section 10.

## 9. Children

This app is aimed at children, which calls for particular restraint:

* There is **no user account**, no registration and no sign-in.
* **No contact details** are collected — no name, e-mail address, phone number or postal address.
* The free version shows **a single card** pointing to another app (section 5.9). It sits at the
  very bottom of the library screen, interrupts nothing, does not blink, opens nothing by itself and
  is only visible if you scroll that far. There are **no advertising identifiers**, no profile and no
  cross-provider tracking — not a single detail about the child is sent to the service. Tapping it
  leads to the App Store, where a purchase requires confirmation via the Apple account as always.
  **Pro removes the card entirely.**
* There is no chat, comment or other communication feature.
* The app's settings are protected by an **arithmetic challenge** — or, if you have set a
  **PIN** of your own, by that PIN — so that children cannot change them themselves. Purchases
  additionally require confirmation via the Apple account.
* You can set a **daily and a weekly listening allowance**. The counting this needs happens entirely
  on the device; neither the configured duration nor the time listened to is transmitted to the
  provider or to any third party.

The holder of parental responsibility decides on the use of the app and on the processing described
in sections 5.6, 5.7 and 5.9 (cf. Art. 8 GDPR). Please contact the address in section 1 if you wish to
request deletion of your child's data. Section 14 adds the specifics under US law.

## 10. Your rights

You have the following rights against the controller:

* **Access** to the data processed about you (Art. 15 GDPR),
* **Rectification** of inaccurate data (Art. 16 GDPR),
* **Erasure** (Art. 17 GDPR),
* **Restriction of processing** (Art. 18 GDPR),
* **Data portability** (Art. 20 GDPR),
* **Withdrawal** of any consent given, with effect for the future (Art. 7(3) GDPR).

### Right to object under Art. 21 GDPR

**You have the right to object at any time, on grounds relating to your particular situation, to
processing of your data carried out on the basis of Art. 6(1)(f) GDPR.** This concerns the usage
statistics (5.6), the crash reports (5.7) and the processing involved in operating the website
(Part A).

For the app you can exercise this objection yourself, directly, without contacting us:

> **Settings › Legal › Data Analytics & Crash Reports**
> — switch off *Allow Data Analytics* and/or *Send Crash Reports* there.

Otherwise an informal message to
<!--email_off-->[playtales@peterkurzok.de](mailto:playtales@peterkurzok.de)<!--/email_off--> is sufficient. We need no login details
to handle your request; please tell us which processing your request concerns.

### Right to lodge a complaint under Art. 77 GDPR

Independently of the above, you may lodge a complaint with a data protection supervisory authority,
in particular in the Member State of your habitual residence, place of work, or the place of the
alleged infringement. The authority responsible for the controller is:

```
Bayerisches Landesamt für Datenschutzaufsicht (BayLDA)
Promenade 18
91522 Ansbach
Germany
https://www.lda.bayern.de
```

## 11. Data security

Connections to this website and to all the services named are protected by transport encryption
(TLS/HTTPS). Please note that no transmission over the internet and no electronic storage can be
completely secure.

## 12. Links to other websites

This website and the app contain links to third-party offerings (such as the App Store). The
respective provider is responsible for their content and data processing; this policy does not
apply to them.

## 13. Changes to this policy

This policy is adjusted whenever the processing described here changes — in particular when a
service is added or dropped. The version published here, bearing the date shown above, is the one
that applies.

---

# Part C – Notices for the United States

## 14. Children's privacy (COPPA)

PlayTales is directed to children, including children under 13, and is built so that it needs
nothing from them. In the terms of the Children's Online Privacy Protection Act (COPPA):

* We **do not collect personal information from children** in the sense of contact or identifying
  details: there is no account, no registration and no sign-in, and no name, e-mail address, phone
  number, postal address, photo, voice recording or geolocation is collected.
* There is **no chat, comment, messaging, social feature or user-generated content**, so a child
  cannot disclose personal information to anyone through the app.
* Advertising is limited to **one contextual card** in the free version (section 5.9), and it is
  **not** behavioural: no advertising identifier is read, no persistent identifier is sent to the
  service, and nothing about the child is collected, retained or used to select what is shown. Which
  app appears is chosen from the App Store account's country alone. There is **no behavioural
  profiling**, no retargeting and no cross-service tracking. Pro removes the card entirely.
* The only identifier processed is the device-bound Apple vendor ID described in section 5.6, used
  solely for internal usage statistics — never to contact a user, build a profile, or track anyone
  across services.
* The app's settings are protected by an arithmetic challenge — or by a PIN of the parent's
  choosing, if one is set — so that a child cannot change them unsupervised; purchases require confirmation
  through the parent's Apple account. A parent may also cap daily and weekly listening time; that
  counting stays on the device and is never transmitted.

**Parents:** the card described in section 5.9 is the one thing in the app a child can tap that leads
outside it, and it leads only to the App Store. You may at any time ask us to confirm what data
associated with your child's device exists, to have it deleted, and to refuse any further
collection. Write to
<!--email_off-->[playtales@peterkurzok.de](mailto:playtales@peterkurzok.de)<!--/email_off-->. You can also stop the collection
yourself, immediately and without contacting us, by switching off *Allow Data Analytics* and *Send
Crash Reports* under **Settings › Legal › Data Analytics & Crash Reports**. Deleting the app removes
the locally stored data from the device.

## 15. California (CCPA/CPRA)

**We do not sell personal information, and we do not share it for cross-context behavioural
advertising.** We have not done so in the preceding twelve months. No data broker receives data from
this app or this website.

Since version 1.5.1 the free version does embed one advertising component, Kickstart Exchange
(section 5.9). What it receives is information about **the app**, together with the App Store
account's country — no advertising identifier, no device or user identifier, and nothing derived
from a person's activity. Under the CCPA/CPRA definitions that is neither a *sale* nor *sharing for
cross-context behavioural advertising*, because nothing personal is exchanged and no profile is
built across services. Buying Pro removes the component's activity entirely.

The categories of personal information processed are those listed in sections 3 to 6: identifiers
(a device-bound vendor ID; IP addresses in the server logs of our hosting and delivery providers,
and of the advertising service in section 5.9),
internet or other electronic network activity information (which app features were used, which
pages were requested), and diagnostic information from crash reports. They are processed for the
business purposes stated in each section and are not used for profiling that produces legal or
similarly significant effects.

Subject to verification and to the exceptions in the law, California residents may request to know,
delete or correct personal information, and may opt out. The GDPR rights in section 10 are granted
to all users regardless of residence and are broader in most respects; the opt-out is available
directly in the app as described above. **We will not discriminate against you for exercising any
of these rights.**
