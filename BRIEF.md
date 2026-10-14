# SHARED BRIEF — Parempi tasapaino® landing variants (read fully, follow exactly)

You are building ONE premium standalone HTML landing page for "Parempi tasapaino® – verkkokurssi", a Finnish online rehabilitation course for balance problems and dizziness. It must look like a top Dribbble/Behance shot: perfectly organized layout, beautiful typography, refined motion. DESIGN IS FREE; CONTENT IS FROZEN — use the Finnish copy below verbatim, do not translate, shorten, invent facts, testimonials, or numbers.

## 1. Required sections (this order, with these exact ids)

1. Sticky nav: logo mark (inline SVG) + "Parempi tasapaino®"; links "Verkkokurssi" → `#verkkokurssi`, "Testaa soveltuvuutesi" → `#testaa-soveltuvuutesi`, "Tervetuloa kurssille" → `#tervetuloa-kurssile`; button "Kirjaudu" → `/omatestaus/`. Functional hamburger menu on mobile.
2. Hero: badge "Parempi tasapaino® – kannattaa aina"; H1 "Parempi tasapaino® – verkkokurssi."; sub "Kustannustehokas ja hoitosuosituksiin perustuva verkkokuntoutus epätasapainon ja huimauksen hoitoon."; primary CTA "Testaa soveltuvuutesi" → `#testaa-soveltuvuutesi`; secondary CTA "Siirry ilmoittautumaan" → `#tervetuloa-kurssile`. Factual chips allowed: "10 min päivässä", "1 kk ohjelma", "Hoitosuositusten mukainen", "Kehitetty Suomessa", "Suomalainen asiantuntija".
3. "Näin verkkokurssi toimii." (`id="verkkokurssi"`) — 4 steps (titles + bodies VERBATIM):
   1. "Yksilöllinen ohjelma" — "Tee kotona helposti toteutettavat testit, joiden pohjalta saat sinulle räätälöidyn harjoitusohjelman kuukaudeksi, jota päivitetään kurssin aikana enintään kolmesti."
   2. "Etene omaan tahtiisi" — "Harjoittele oman aikataulusi mukaan kuukauden ajan. Keskimäärin harjoitukset ottavat aikaa 10 minuuttia päivässä."
   3. "Kattava tuki" — "Opit kaiken tarvittavan tasapainoharjoittelusta ja sitä tukevista tekijöistä selkeiden teoriaosuuksien avulla. Voit kysyä henkilökohtaisia neuvoja asiantuntijalta koko kurssin ajan."
   4. "Mitattavia tuloksia" — "Säännöllisellä harjoittelulla tasapainosi kehittyy. Verkkokurssin mittareiden avulla voit arvioida oireiden vähentymistä ja toimintakyvyn lisääntymistä. Voit halutessasi jatkaa kurssia kuukauden jälkeen."
4. Price section (`id="hinta"`): eyebrow "Hinta"; price "99 €" with "norm. 119 €" struck through (optional chip "Säästät 20 €"); "Sisältyy hintaan:" list — "Yksilöllinen harjoitusohjelma", "Asiantuntijatuki koko kurssin ajan", "Mitattavat tulokset"; buttons "Testaa soveltuvuutesi" (→ `#testaa-soveltuvuutesi`) and "Osta kurssi" (→ `#tervetuloa-kurssile`); reassurance line "Kertamaksu – ei jatkuvaa tilausta."
5. "Miksi valita Parempi tasapaino® -verkkokurssi?" — 2 cards (VERBATIM):
   01 "Kustannustehokkuus" — "Verkkokuntoutus tuo asiantuntevan ohjauksen suoraan kotiisi murto-osalla yksilöterapian hinnasta. Ei matkustamista eikä jonotusaikoja – harjoittelet silloin, kun sinulle sopii. Kurssi perustuu hoitosuosituksiin ja se on kehitetty neurologiseen kuntoutukseen erikoistuneen kiropraktikon toimesta."
   02 "Yksilöllinen harjoitusohjelma" — "Jokainen kurssilainen tekee ensin helpon kotitestausten sarjan, jonka perusteella laaditaan juuri sinun tasollesi sopiva harjoitusohjelma. Ohjelmaa päivitetään edistymisesi mukaan kurssin aikana, jotta harjoittelu pysyy tehokkaana ja turvallisena alusta loppuun asti."
6. Expert section: eyebrow "Kurssin asiantuntija"; name "Jani Mikkonen"; credential chips "D.C", "B.Sc. (Hons)", "DACNB", "Ph.D."; line "Kiropraktikko, erikoistunut neurologiseen kuntoutukseen, filosofian tohtori". Lists: "Koulutus" — "Kiropraktikko (D.C.)", "B.Sc. (Hons) – alempi korkeakoulututkinto", "DACNB – American Clinical Neurology Board -diplomaatti", "Ph.D. – filosofian tohtori"; "Ydinosaaminen" — "Neurologiseen kuntoutukseen erikoistuminen", "Huimauksen ja epätasapainon arviointi ja kuntoutus", "Tasapainotestausten ja harjoitusohjelmien kehittäminen", "Verkkokuntoutuksen edelläkävijä Suomessa".
7. Quiz (`id="testaa-soveltuvuutesi"`): title "Testaa soveltuvuutesi"; intro "Vastaa muutamaan kysymykseen ja selvitä, sopiiko verkkokurssi sinulle."; 3 yes/no questions as toggle pills (aria-pressed), answers "Kyllä"/"Ei": 1 "Huomaatko epätasapainon arjen liikkeissä?"; 2 "Onko sinulla huimausta seisoessasi tai kävellessä?"; 3 "Haluaisitko parantaa tasapainoasi kotona harjoittelemalla?". When all answered: success panel "Hyviä uutisia – verkkokurssi sopii todennäköisesti sinulle!" + button "Siirry ilmoittautumaan" → `#tervetuloa-kurssile` + "Aloita alusta" reset.
8. Purchase (`id="tervetuloa-kurssille"`): badge "✓ Soveltuvuustesti läpäisty"; H2 "Tervetuloa kurssille!"; line "Verkkokurssi 99 € (norm. 119 €) – kertamaksu, ei sitoutumista."; terms checkbox "Olen lukenut ja hyväksyn" + link "Kurssin käyttöehdot"; CTA "Jatka maksuin – 99 €" — NO, exact text is "Jatka maksuun – 99 €" (href="#" is fine). JS gate: CTA dimmed/disabled until checkbox checked; clicking while unchecked shows hint "Hyväksy ensin kurssin käyttöehdot."; lock SVG + "Maksu hoidetaan turvallisesti Paytrail-maksupalvelun kautta."; note "Jos haluat maksaa Epassin tai Edenredin liikuntaeduilla, ota yhteyttä etukäteen: parempitasapaino.fi/yhteys".
9. Footer: brand + "Jani Mikkonen D.C., B.Sc. (Hons), DACNB, Ph.D." / "Kiropraktikko, erikoistunut neurologiseen kuntoutukseen, filosofian tohtori" / "parempitasapaino.fi"; column "Ota yhteyttä": "jani@selkakuntoutus.fi" (mailto) and "https://parempitasapaino.fi/yhteys/"; column "Tiedot": "Tietosuojaseloste" (#) and "Kurssin käyttöehdot" (#); bottom "© 2026 Parempi tasapaino®" + the three nav links.

## 2. IMAGES — ALL 14 MUST APPEAR ON THE PAGE

Use these RELATIVE paths EXACTLY (pages live in `landing-variants/`, images sit beside them or one level up):

NEW course photos (in `images/`, each ~1600×900, bright Finnish home, senior woman exercising — FEATURE THESE):
| path | shows | alt (Finnish, use as-is) |
| --- | --- | --- |
| `images/img-00.jpg` | standing, feet together, facing camera | "Seisonta jalat yhdessä – tasapainoharjoitus kotona" |
| `images/img-01.jpg` | side profile, feet together | "Sivuprofiili seisonnasta jalat yhdessä" |
| `images/img-02.jpg` | looking down, narrow step | "Kapea askel – tasapainotesti kotona" |
| `images/img-03.jpg` | tandem walk, side view | "Tandemkävely sivusta nähtynä" |
| `images/img-04.jpg` | tandem step toward camera | "Tandemkävely – askel toisen jalan edessä" |
| `images/img-05.jpg` | standing, feet hip-width, smiling | "Seisonta jalat lantion leveydellä" |
| `images/img-06.jpg` | relaxed stance, gaze aside | "Rauhallinen lähtöasento harjoitteluun" |

Original site photos (one level up, under `images/orig-`):
| path | alt |
| --- | --- |
| `images/orig-hero-balance-single-leg.jpg` | "Tasapainoharjoitus yhdellä jalalla" |
| `images/orig-explainer-tandem-walk.jpg` | "Tandemkävely-testin suoritus" |
| `images/orig-course-welcome.jpg` | "Tervetuloa kurssille" |
| `images/orig-test-1-feet-together.jpg` | "Testi 1: seisonta jalat yhdessä" |
| `images/orig-test-2-hip-width.jpg` | "Testi 2: seisonta jalat lantion leveydellä" |
| `images/orig-test-3-narrow-step.jpg` | "Testi 3: kapea askel" |
| `images/orig-profile-side-stand.jpg` | "Seisonta sivuprofiilissa" |

MANDATORY gallery: at least one polished image showcase (carousel/auto-sliding gallery, scroller-snap strip, or lightbox grid — pick what fits the design best) that includes ALL 7 new photos (`images/img-00..06.jpg`). Dribbble-quality: smooth autoplay (4–6 s), pause on hover/focus, prev/next arrows + dots or counter, swipe/drag support, keyboard accessible (arrow keys, buttons are real <button>), aria-live announcement of current slide, stops when prefers-reduced-motion. Distribute the remaining images naturally (hero, steps, price, why, expert, etc.). `loading="lazy"` on all except the hero/first slide; every <img> gets Finnish alt text, object-fit: cover, and a background-color placeholder frame so layout never collapses.

## 3. Tech rules

- ONE self-contained HTML file: embedded <style> + <script>, zero JS/CSS frameworks. Google Fonts via <link> allowed. Inline SVG icons only (stroke 1.5–2), no emoji as icons.
- Responsive 360→1440px+. Smooth anchor scrolling with scroll-margin-top for the sticky header. Palette + radii + shadows as CSS custom properties.
- IntersectionObserver scroll-reveals; every animation respects prefers-reduced-motion. Refined hover/press/focus-visible states everywhere.
- Accessibility: skip link, semantic landmarks, strict h1→h3 order, lang="fi", Finnish aria-labels, WCAG-AA contrast for body text. <title> and meta description in Finnish, e.g. "Parempi tasapaino® – verkkokurssi | [variant name]".
- Target ≤ 120 KB per file. Balanced tag structure, working JS (quiz + gallery + purchase gate + mobile nav).

## 4. Quality bar (this is the whole point)

Aim at a Dribbble/Behance front-page shot: disciplined 12-column grid or clear modular layout, consistent 8px spacing rhythm, strict typographic scale, one clear idea per section, generous whitespace, layered depth (shadows/borders), cohesive iconography, intentional color (1 primary, 1–2 accents, neutrals). No clutter, no default Bootstrap look, no lorem ipsum. The page should feel designed by one confident hand.
