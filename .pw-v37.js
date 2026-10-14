const U37='file:///Users/mdhemalakhand/Local%20Sites/balance-testing/app/public/landing-variants/v37-gsap-motion-pro.html';
const U36='file:///Users/mdhemalakhand/Local%20Sites/balance-testing/app/public/landing-variants/v36-gsap-motion.html';
const { chromium } = require('playwright');
(async () => {
  let b;
  try { b = await chromium.launch(); }
  catch (e) { b = await chromium.launch({ channel: 'chrome' }); }

  // ---- v37 full motion ----
  const p = await b.newPage({ viewport: { width: 1440, height: 900 }, reducedMotion: 'no-preference' });
  const errs = [];
  p.on('pageerror', e => errs.push(e.message));
  p.on('console', m => { if (m.type() === 'error') errs.push(m.text()); });
  await p.goto(U37, { waitUntil: 'load' });
  await p.waitForTimeout(6000);
  console.log('V37 motion:', JSON.stringify(await p.evaluate(() => ({
    htmlClass: document.documentElement.className,
    preloaderGone: !document.getElementById('preloader'),
    plugins: { st: typeof ScrollTrigger !== 'undefined', sp: typeof SplitText !== 'undefined', dr: typeof Draggable !== 'undefined', in: typeof InertiaPlugin !== 'undefined', ds: typeof DrawSVGPlugin !== 'undefined' },
    heroCharsSplit: document.querySelectorAll('.hero-title .li > div, .hero-title .li div[style]').length > 3,
    stmtWords: document.querySelectorAll('#stmt-text div').length,
    footerCharsSplit: (function(){ var li=document.querySelector('.footer-giant .li'); return li ? li.children.length > 3 : false; })(),
  }))));
  await p.screenshot({ path: '/tmp/v37-hero.png' });

  // FAQ interaction
  await p.evaluate(() => document.querySelector('#usein-kysyttya').scrollIntoView({behavior:'instant',block:'start'}));
  await p.waitForTimeout(1400);
  await p.click('.faq-q');
  await p.waitForTimeout(900);
  console.log('V37 faq:', JSON.stringify(await p.evaluate(() => {
    var q=document.querySelector('.faq-q'), a=document.querySelector('.faq-a');
    return { expanded: q.getAttribute('aria-expanded'), h: Math.round(a.getBoundingClientRect().height) };
  })));
  await p.screenshot({ path: '/tmp/v37-faq.png' });

  // tests strip
  await p.evaluate(() => document.querySelector('#tasapainotestit').scrollIntoView({behavior:'instant',block:'start'}));
  await p.waitForTimeout(1600);
  await p.screenshot({ path: '/tmp/v37-tests.png' });

  // gallery drag
  await p.evaluate(() => document.querySelector('#galleria').scrollIntoView({behavior:'instant',block:'start'}));
  await p.waitForTimeout(1600);
  var before = await p.evaluate(() => document.querySelector('.c-counter').textContent);
  var box = await p.locator('.c-viewport').boundingBox();
  await p.mouse.move(box.x + box.width/2, box.y + box.height/2);
  await p.mouse.down();
  for (let k=1;k<=8;k++){ await p.mouse.move(box.x + box.width/2 - k*32, box.y + box.height/2); await p.waitForTimeout(16); }
  await p.mouse.up();
  await p.waitForTimeout(1400);
  var after = await p.evaluate(() => document.querySelector('.c-counter').textContent);
  console.log('V37 drag:', JSON.stringify({ before, after }));
  await p.screenshot({ path: '/tmp/v37-gallery.png' });

  console.log('V37 errors:', errs.length ? errs.join(' || ') : 'none');
  await p.close();

  // ---- v36 smoke ----
  const q = await b.newPage({ viewport: { width: 1440, height: 900 }, reducedMotion: 'no-preference' });
  const errs2 = [];
  q.on('pageerror', e => errs2.push(e.message));
  await q.goto(U36, { waitUntil: 'load' });
  await q.waitForTimeout(4500);
  console.log('V36 smoke:', JSON.stringify(await q.evaluate(() => ({
    htmlClass: document.documentElement.className,
    preloaderGone: !document.getElementById('preloader'),
    faqPresent: !!document.querySelector('.faq-item'),
  }))));
  console.log('V36 errors:', errs2.length ? errs2.join(' || ') : 'none');
  await q.close();

  await b.close();
  console.log('ALL DONE');
})().catch(e => { console.error('FAILED:', e.message); process.exit(1); });
