#!/bin/bash
# Regenerates index.html listing every v*.html that exists in this folder.
# Run after each new variant lands:  bash gen-index.sh
set -euo pipefail
cd "$(dirname "$0")"

entry() { # num file title desc swatch_from swatch_to
  local num="$1" file="$2" title="$3" desc="$4" c1="$5" c2="$6"
  [ -f "$file" ] || return 0
  printf '    <a class="card" href="%s">\n' "$file"
  printf '      <span class="swatch" style="background:linear-gradient(135deg,%s,%s)">%s</span>\n' "$c1" "$c2" "$num"
  printf '      <span><span class="t">%s</span><span class="d">%s</span></span>\n' "$title" "$desc"
  printf '      <span class="open">Avaa &rarr;</span>\n'
  printf '    </a>\n'
}

{
cat <<'HEAD'
<!DOCTYPE html>
<html lang="fi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Parempi tasapaino® – Landing-variantit</title>
<meta name="robots" content="noindex, nofollow">
<style>
  :root{
    --ink:#0D0E1A; --muted:rgba(13,14,26,.62); --line:#E4E7EC;
    --bg:#F2F3F5; --card:#fff; --blue:#1D48B9;
  }
  *{box-sizing:border-box;margin:0;padding:0}
  body{font-family:Inter,ui-sans-serif,system-ui,-apple-system,"Segoe UI",Roboto,Arial,sans-serif;background:var(--bg);color:var(--ink);-webkit-font-smoothing:antialiased;min-height:100vh;display:flex;flex-direction:column}
  .wrap{max-width:1020px;margin:0 auto;padding:56px 24px 48px;width:100%}
  h1{font-size:clamp(28px,5vw,44px);letter-spacing:-.02em;line-height:1.1}
  .sub{margin-top:12px;color:var(--muted);font-size:17px;line-height:1.65;max-width:64ch}
  h2.grp{margin:44px 0 6px;font-size:14px;font-weight:700;text-transform:uppercase;letter-spacing:.12em;color:var(--blue)}
  .grid{margin-top:16px;display:grid;gap:14px}
  a.card{display:flex;align-items:center;gap:20px;background:var(--card);border:1px solid var(--line);border-radius:20px;padding:20px 22px;text-decoration:none;color:inherit;transition:transform .25s ease,box-shadow .25s ease,border-color .25s ease}
  a.card:hover{transform:translateY(-3px);box-shadow:0 20px 40px -20px rgba(13,14,26,.18);border-color:rgba(29,72,185,.35)}
  .swatch{width:52px;height:52px;border-radius:15px;flex-shrink:0;display:flex;align-items:center;justify-content:center;color:#fff;font-weight:800;font-size:16px;text-shadow:0 1px 2px rgba(0,0,0,.35)}
  .t{font-weight:700;font-size:16.5px}
  .d{color:var(--muted);font-size:13.5px;margin-top:3px;line-height:1.5}
  .open{margin-left:auto;flex-shrink:0;font-weight:600;font-size:13.5px;color:var(--blue)}
  footer{margin-top:auto;padding:22px;text-align:center;color:var(--muted);font-size:13px}
  code{background:#fff;border:1px solid var(--line);border-radius:6px;padding:1px 6px;font-size:.9em}
  @media(max-width:560px){a.card{flex-wrap:wrap}.open{margin-left:0}}
</style>
</head>
<body>
<div class="wrap">
  <h1>Parempi tasapaino&reg; &ndash; landing-variantit</h1>
  <p class="sub">Itsen&auml;isi&auml; HTML-prototyyppej&auml; verkkokurssin myyntisivusta: sama suomenkielinen sis&auml;lt&ouml;, eri visuaaliset suunnat. Kuvat latautuvat, kun sivut avataan palvelimen kautta (<code>http://127.0.0.1:8899/landing-variants/</code>) tai suoraan kansiosta &ndash; asettelu pysyy joka tapauksessa ehj&auml;n&auml;.</p>
  <h2 class="grp">Ensimmäiset vaihtoehdot</h2>
  <div class="grid">
HEAD

entry 01 v1-serene-clinical.html "Serene Clinical" "L&auml;mmin neutraali + syv&auml; teal, Fraunces-serif. Maven / Two Chairs -henki." "#175B56" "#0E4A45"
entry 02 v2-medtech-precision.html "Med-Tech Precision" "Valkoinen + s&auml;hk&ouml;nblue, monolabelit, datal&auml;ht&ouml;inen sankariosio." "#2447F0" "#0A1633"
entry 03 v3-warm-editorial.html "Warm Editorial" "Terrakotta + oliivi, suurellinen serif, aikakauslehtiasettelu." "#C05B3C" "#6B7250"
entry 04 v4-nordic-trust.html "Nordic Trust" "Selke&auml; suomalainen terveyssivu, saavutettavin vaihtoehto." "#14537F" "#2E9E6B"
entry 05 v5-friendly-energy.html "Friendly Energy" "Koralli + amber, pehme&auml;t muodot, kurssimyyynnin hintaikkuna." "#FF6B4A" "#FFB238"

cat <<'MID'
  </div>
  <h2 class="grp">Uudet variantit (Dribbble/Behance-suunnat)</h2>
  <div class="grid">
MID

entry 06 v06-glassmorphism.html "Glassmorphism Mesh" "Huurteiset lasipaneelit pehme&auml;n gradientusvan p&auml;&auml;ll&auml;, Sora + Inter." "#7CB8FF" "#B49CFF"
entry 07 v07-soft-ui.html "Soft UI" "Neumorfiset pehme&auml;t pinnat ja painallustuntuma, Manrope." "#8B9BB8" "#4A7DFF"
entry 08 v08-dark-luxury.html "Dark Premium" "Tumma luksus: samppankinkulta, kaarikehys, elokuvallinen galleria." "#D8B36A" "#0B0E17"
entry 09 v09-bento-grid.html "Bento Grid" "Bento-ruudukko moduuleina, Inter, omenamainen j&auml;rjestys." "#5B5BD6" "#EEEEFB"
entry 10 v10-swiss-grid.html "Swiss Grid" "Sveitsil&auml;inen typografia: punainen aksentti, hairline-ruudukko." "#E6323B" "#111111"
entry 11 v11-bold-outline.html "Bold Outline" "Paksut &auml;&auml;riviivat, kovat varjot, Archivo Black ja sinappi." "#F2B824" "#16150F"
entry 12 v12-pastel-air.html "Pastel Air" "Pastelliharso, leijuvat kortit ja polaroid-sankari." "#B49CFF" "#FFB08A"
entry 13 v13-quiet-luxury.html "Quiet Luxury" "Norsunluu, kultahairlinet ja Cormorant-serif &ndash; hiljaista luksusta." "#A8894F" "#FBF9F4"
entry 14 v14-neo-brutalist.html "Neo-Brutalism" "3 px reunat, kovat varjot ja rohkeat v&auml;riblokit." "#FFD43B" "#FF6B57"
entry 15 v15-line-art.html "Line-Art" "K&auml;sinpiirrettyyn viivaan perustuva tarina, koralli + taivassininen." "#FF6B4A" "#4A90D9"
entry 16 v16-mono-accent.html "Mono + Emerald" "Grayscale-j&auml;rjestelm&auml; ja yksi smaragdi &ndash; dokumenttien tarkkuus." "#0E9F6E" "#0E1116"
entry 17 v17-dusk-gradient.html "Dusk Gradient" "Iltah&auml;m&auml;r&auml;indigo, magenta&ndash;syaani-hehkut ja lasikortit." "#D946EF" "#22D3EE"
entry 18 v18-type-editorial.html "Type Editorial" "Typografia p&auml;&auml;osassa: Playfair 900, muste ja blush." "#E2492F" "#F3D9D2"
entry 19 v19-data-studio.html "Data Studio" "Dashboard-estetiikka: KPI-ruudut, mittarit, JetBrains Mono." "#4F46E5" "#06B6D4"
entry 20 v20-organic-wellness.html "Organic Wellness" "Orgaaniset blob-muodot, salvia ja terrakotta, DM Serif." "#9CAF88" "#C97B5A"
entry 21 v21-kinetic-pop.html "Kinetic Pop" "Liikkeellinen pop: marquee-nauha, 3D-kallistukset, koralli." "#FF5A3C" "#1B2559"
entry 22 v22-artdeco-modern.html "Art Deco" "Smaragdi + kulta, aurinkoviuhkat ja symmetria." "#C9A24B" "#0E3B2E"
entry 23 v23-scandi-pastel.html "Scandi Pastel" "Usvan sinit ja savikintaat, &auml;&auml;rimm&auml;isen rauhallinen." "#7A99B8" "#C89B83"
entry 24 v24-carbon-precise.html "Carbon Precise" "Enterprise-tarkkuus: IBM-henki, Plex-fontit, 8 px ruudukko." "#0F62FE" "#161616"
entry 25 v25-y2k-gloss.html "Y2K Gloss" "Irisoivat kiillot, kukkulanappulat ja Outfit." "#A7B6FF" "#FFC7E8"
entry 26 v26-claymorphism.html "Claymorphism" "Puffiset savikortit, karkkipastellit ja Baloo 2." "#5D5FEF" "#FFEDE3"
entry 27 v27-terminal-clean.html "Terminal Clean" "Terminaaliestetiikka: mono-tarrat, vihre&auml; aksentti, ikkunavaiheet." "#1F9D55" "#101410"
entry 28 v28-print-paper.html "Print &amp; Paper" "Painetun lehden paperi: seepia, leima, Fraunces." "#C2402A" "#F7F2E9"
entry 29 v29-duotone-pop.html "Duotone Pop" "Duotone-kuvat: violetti/oranssi, v&auml;ri paljastuu hoverissa." "#6C4DF6" "#FF7A3D"
entry 30 v30-aurora-glass.html "Aurora Glass" "Valoisa auroranauha, gradienttiteksti, Inter + Sora." "#3E7BFF" "#8B5CF6"
entry 31 v31-zine-collage.html "Zine Collage" "Zine-kollaasi: polaroidit, teippiraidat, markkerikorostus." "#FFE14D" "#16161A"
entry 32 v32-blueprint.html "Blueprint" "Sinikopiotekniikka: ruutupaperi, mitat, mono-kuvatekstit." "#2E6FDB" "#16324F"
entry 33 v33-luxe-spa.html "Luxe Spa" "Kivi, mets&auml;nvihre&auml; ja messinki &ndash; hiljainen spa." "#2E4038" "#B49B6C"
entry 34 v34-athletic-drive.html "Athletic Drive" "Urheilullinen vauhti: kursivoitu kondenssi, grafiitti + oranssi." "#FF5A1F" "#17191D"
entry 35 v35-layered-frost.html "Layered Frost" "Kerrostettu huurre: syvyys, pehme&auml; gradientti, parallax." "#DCE7FF" "#EDE4FF"

cat <<'FOOT'
  </div>
</div>
<footer>Prototyypit &middot; quiz-demot toimivat &middot; &copy; 2026 Parempi tasapaino&reg;</footer>
</body>
</html>
FOOT
} > index.html

count=$(ls v*.html 2>/dev/null | grep -v '^index' | wc -l | tr -d ' ')
echo "index.html regenerated with ${count} variant files listed."
