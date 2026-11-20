<script setup>
// Live "plug in the class's number" panel.
// cfg JSON: {vars:[{name,label,def}], rule:"js bool expr", ruleText, mode:"match|odd|least|negative|qc",
//            target:"js expr", targetLabel, choices:[{l,tex,f}], qa:{tex,f}, qb:{tex,f}}
import { reactive, computed } from 'vue'
import katex from 'katex'
import 'katex/dist/katex.min.css'
const props = defineProps({ cfg: String })
const C = JSON.parse(props.cfg)
const vals = reactive(Object.fromEntries(C.vars.map(v => [v.name, String(v.def)])))
const tex = t => katex.renderToString(t, { throwOnError: false })
function num(s) {
  s = String(s).trim().replace('−', '-')
  const m = s.match(/^(-?\d+(?:\.\d+)?)\s*\/\s*(-?\d+(?:\.\d+)?)$/)
  if (m) return Number(m[1]) / Number(m[2])
  return s === '' ? NaN : Number(s)
}
const env = computed(() => Object.fromEntries(C.vars.map(v => [v.name, num(vals[v.name])])))
const ok = computed(() => Object.values(env.value).every(x => Number.isFinite(x)))
function ev(expr) {
  try { const f = new Function(...C.vars.map(v => v.name), 'return (' + expr + ')'); return f(...C.vars.map(v => env.value[v.name])) } catch (e) { return NaN }
}
const legal = computed(() => !C.rule || !ok.value || !!ev(C.rule))
const near = (a, b) => Math.abs(a - b) < 1e-9 * Math.max(1, Math.abs(a), Math.abs(b))
function fmtRow(r) {
  const x = r.v
  if (!Number.isFinite(x)) return '—'
  if (r.fmt === 'mmss') { const t = Math.round(x * 60); const m = Math.floor(Math.abs(t) / 60), sec = Math.abs(t) % 60; return (t < 0 ? '−' : '') + m + ':' + String(sec).padStart(2, '0') }
  if (r.fmt === 'sec') return Math.round(x) + ' s'
  if (r.fmt === 'pct') return (Math.round(x * 10) / 10).toString().replace('-', '−') + '%'
  return fmt(x) + (r.suffix || '')
}
function fmt(x) {
  if (!Number.isFinite(x)) return '—'
  if (near(x, Math.round(x))) return Math.round(x).toLocaleString('en-US').replace('-', '−')
  const r4 = Math.round(x * 10000) / 10000
  if (near(x, r4)) return r4.toLocaleString('en-US', { maximumFractionDigits: 4 }).replace('-', '−')
  for (const d of [2, 3, 4, 5, 6, 8, 9, 10, 12, 16, 20, 25, 100]) { const n = x * d; if (near(n, Math.round(n)) && Math.abs(Math.round(n)) < 100000) return (Math.round(n) < 0 ? '−' : '') + Math.abs(Math.round(n)) + '/' + d }
  return (Math.round(x * 10000) / 10000).toString().replace('-', '−')
}
const target = computed(() => C.target ? ev(C.target) : NaN)
const rows = computed(() => (C.choices || []).map(ch => {
  const v = ev(ch.f)
  let hit = false
  if (C.mode === 'match') hit = near(v, target.value)
  if (C.mode === 'odd') hit = near(v, Math.round(v)) && Math.abs(Math.round(v)) % 2 === 1
  if (C.mode === 'negative') hit = v < 0
  return { ...ch, v, hit }
}))
const least = computed(() => Math.min(...rows.value.map(r => r.v)))
const qa = computed(() => C.qa ? ev(C.qa.f) : NaN)
const qb = computed(() => C.qb ? ev(C.qb.f) : NaN)
const rel = computed(() => near(qa.value, qb.value) ? 'Equal' : (qa.value > qb.value ? 'A is greater' : 'B is greater'))
</script>
<template>
  <div class="plug">
    <div class="plug-in">
      <p class="plabel">Class’s numbers</p>
      <div class="vars">
        <label v-for="v in C.vars" :key="v.name" class="var">
          <span class="vn" v-html="tex(v.label || v.name)"></span><span class="eq">=</span>
          <input v-model="vals[v.name]" inputmode="decimal" spellcheck="false" />
        </label>
      </div>
      <p v-if="C.ruleText" class="rule" :class="{ bad: !legal }">{{ legal ? 'Rule: ' + C.ruleText : 'That breaks the rule: ' + C.ruleText }}</p>
      <p v-if="C.target" class="tgt"><span>{{ C.targetLabel || 'Target' }}</span><b>{{ ok && legal ? fmt(target) : '—' }}</b></p>
    </div>
    <div v-if="C.mode !== 'qc'" class="plug-out">
      <div v-for="r in rows" :key="r.l" class="pr" :class="{ hit: C.mode !== 'show' && ok && legal && (r.hit || (C.mode === 'least' && near(r.v, least))), show: C.mode === 'show' }">
        <span class="pl">{{ r.l }}</span><span class="pt" v-html="tex(r.tex)"></span><span class="pv">{{ ok && legal ? fmtRow(r) : '—' }}</span>
        <span class="pm" v-if="C.mode !== 'show'">{{ ok && legal ? ((r.hit || (C.mode === 'least' && near(r.v, least))) ? '✓' : '✗') : '' }}</span>
      </div>
    </div>
    <div v-else class="plug-out">
      <div class="pr"><span class="pl">A</span><span class="pt" v-html="tex(C.qa.tex)"></span><span class="pv">{{ ok && legal ? fmt(qa) : '—' }}</span></div>
      <div class="pr"><span class="pl">B</span><span class="pt" v-html="tex(C.qb.tex)"></span><span class="pv">{{ ok && legal ? fmt(qb) : '—' }}</span></div>
      <div class="pr hit"><span class="pl"></span><span class="pt">Result</span><span class="pv">{{ ok && legal ? rel : '—' }}</span></div>
    </div>
  </div>
</template>
<style>
.plug{display:grid;grid-template-columns:560px 1fr;gap:56px;align-items:start}
.plug-in{background:#1B2433;color:#F5F1E8;border-radius:28px;padding:48px}
.plug-in .plabel{font-family:'Space Grotesk',sans-serif;font-weight:700;font-size:26px;letter-spacing:.14em;text-transform:uppercase;color:#E8743B;margin:0 0 24px}
.vars{display:flex;flex-direction:column;gap:20px}
.var{display:flex;align-items:center;gap:20px;font-size:44px}
.var .vn .katex{font-size:1.1em}
.var input{width:260px;font:600 44px 'Space Grotesk',sans-serif;background:#F5F1E8;color:#1B2433;border:none;border-radius:14px;padding:10px 20px}
.var input:focus{outline:4px solid #E8743B}
.rule{font-size:26px;color:#C9C3B6;margin:24px 0 0}.rule.bad{color:#E8743B;font-weight:700}
.tgt{display:flex;justify-content:space-between;align-items:baseline;margin:28px 0 0;padding-top:20px;border-top:2px solid #39445A;font-size:30px}
.tgt b{font:700 52px 'Space Grotesk',sans-serif;color:#E8743B}
.plug-out{display:flex;flex-direction:column}
.pr{display:grid;grid-template-columns:60px 1fr 240px 60px;align-items:center;gap:16px;padding:16px 20px;border-bottom:2px solid #D6CDB8;font-size:36px;min-height:84px}
.pr .pl{font:700 32px 'Space Grotesk',sans-serif;color:#B4501E}
.pr .pt .katex{font-size:1.05em}
.pr .pv{font:600 38px 'Space Grotesk',sans-serif;text-align:right}
.pr .pm{font-size:34px;text-align:center}
.pr.hit{background:#DCE7F3}
.pr.show{grid-template-columns:60px 1fr 260px}
.pr.show .pl{color:#4A5263;font-size:24px}
.pr.hit .pv{color:#2F6FB0}
</style>
