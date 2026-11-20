<script setup>
import katex from 'katex'
import 'katex/dist/katex.min.css'
import { computed } from 'vue'
const props = defineProps({ t: String, s: { type: [Number, String], default: 40 }, c: { type: String, default: 'inherit' }, d: { type: Boolean, default: true } })
const html = computed(() => katex.renderToString(props.t, { throwOnError: false, displayMode: false, strict: false }))
</script>
<template><span class="m" :style="{ fontSize: s + 'px', color: c }" v-html="html"></span></template>
<style>.m{display:inline-block;line-height:1.2;white-space:nowrap}.m .katex{font-size:1em}</style>
