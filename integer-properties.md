---
title: "Integer Properties Workshop — GRE Quant"
canvasWidth: 1920
aspectRatio: 16/9
routerMode: hash
colorSchema: light
transition: fade
download: false
drawings:
  enabled: false
layout: none
---

<div class="sec dark"><div class="spacer"></div><div class="bar"></div><p class="kicker">GRE Quant Workshop</p><h1>Integer Properties</h1><p class="lead">Primes, factors and divisibility, and how to test “must be” and “could be” questions.</p><div class="spacer"></div><p class="byline">Brian · [Date]</p></div>

<!--
Welcome everyone in. Wait about a minute for late joiners.
-->

---
layout: none
---

<div class="sec "><p class="kicker">Your instructor</p><h2>Hi, I’m Brian</h2><ul class="points"><li>New York City–based math instructor</li><li>About 10 years teaching GRE and SAT quant, live and on video</li><li>170 on GRE Quant, so I’ve sat the test and know how it thinks</li></ul></div>

<!--
Keep this to about 60 seconds.
-->

---
layout: none
---

<div class="sec "><p class="kicker">Who this class is for</p><h2>Building your number-properties foundation</h2><ul class="points"><li>Students new to primes, factors and divisibility, or rusty on them</li><li>Anyone who factors large numbers by trial and error</li><li>Anyone unsure how to handle “must be” vs. “could be” questions</li></ul></div>

---
layout: none
---

<div class="sec "><p class="kicker">How today works</p><h2>This is a workshop, not a lecture</h2><ul class="points"><li>Expect polls and chat prompts on almost every problem</li><li>We pause for questions after each section</li><li>The recording and practice resources arrive by email afterward [confirm]</li><li>Still stuck after class? Reach us at <b>[support email]</b></li></ul></div>

<!--
Set expectations for participation early. Ask everyone to type where they’re joining from to warm up the chat.
-->

---
layout: none
---

<div class="sec "><p class="kicker">Today’s goals</p><h2>By the end of this session you’ll be able to:</h2><ul class="points"><li>Test whether a number is prime, quickly and systematically</li><li>Break large numbers into prime factors, and use them</li><li>Test “must” and “could” questions with well-chosen numbers</li></ul></div>

---
layout: none
---

<div class="sec dark center"><div class="bar"></div><p class="kicker">Part 1</p><h1>Prime numbers</h1><p class="lead">The building blocks of every integer.</p></div>

---
layout: none
---

<div class="sec "><p class="kicker">Definitions</p><h2>A prime has exactly two positive factors: 1 and itself</h2><ul class="points"><li>The primes under 30: 2, 3, 5, 7, 11, 13, 17, 19, 23, 29</li><li>Every integer greater than 1 that isn’t prime is <b>composite</b>, a product of primes</li><li>2 is the only even prime. 1 is not prime: it has only one factor</li></ul></div>

<!--
The 1-is-not-prime fact shows up in GRE traps more than you’d expect.
-->

---
layout: none
---

<div class="sec prob"><div class="split"><div class="problem"><p class="tag">Quick check</p><p class="stem">How many prime numbers are between 1 and 20, inclusive?</p><div class="chs"><div class="ch "><p class="ltr">A</p><M t="7" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="8" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="9" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="10" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="11" s="40" c="#1B2433"/></div></div></div><div class="poll"><p class="plabel">Poll</p><p class="pq">Which answer?</p><ul class="opts"><li>A</li><li>B</li><li>C</li><li>D</li><li>E</li></ul></div></div></div>

<!--
Give 30 seconds.
-->

---
layout: none
---

<div class="sec work"><div class="split"><div class="mini"><p class="tag">Quick check</p><p class="stem">How many prime numbers are between 1 and 20, inclusive?</p><div class="chs"><div class="ch "><p class="ltr">A</p><M t="7" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="8" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="9" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="10" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="11" s="30" c="#1B2433"/></div></div></div><div class="steps"><h2>List them</h2><div class="calc" v-click><M t="2, 3, 5, 7, 11, 13, 17, 19" s="40" c="#1B2433"/></div><div class="calc" v-click><M t="\text{That&#x27;s }\mathbf{8}\text{ primes}" s="40" c="#1B2433"/></div><p class="note" v-click>Trap: 9 includes 1, which isn’t prime.</p><p class="verdict" v-click>Answer: B</p></div></div></div>

---
layout: none
---

<div class="sec "><p class="kicker">Divisibility rules</p><h2>Check small primes before dividing</h2><div class="rows"><div class="row hdr" style="grid-template-columns:1.1fr 1.3fr 1.3fr"><div class="cell"><p>Divisor</p></div><div class="cell"><p>Rule</p></div><div class="cell"><p>Example</p></div></div><div class="row" style="grid-template-columns:1.1fr 1.3fr 1.3fr"><div class="cell"><p style="font-family:Inter,sans-serif">2</p></div><div class="cell"><p style="font-family:Inter,sans-serif">Last digit is even</p></div><div class="cell"><p style="font-family:Inter,sans-serif">738 ✓</p></div></div><div class="row" style="grid-template-columns:1.1fr 1.3fr 1.3fr"><div class="cell"><p style="font-family:Inter,sans-serif">3</p></div><div class="cell"><p style="font-family:Inter,sans-serif">Digits sum to a multiple of 3</p></div><div class="cell"><M t="471: 4 + 7 + 1 = 12 ✓" s="32" c="#1B2433"/></div></div><div class="row" style="grid-template-columns:1.1fr 1.3fr 1.3fr"><div class="cell"><p style="font-family:Inter,sans-serif">5</p></div><div class="cell"><p style="font-family:Inter,sans-serif">Ends in 0 or 5</p></div><div class="cell"><p style="font-family:Inter,sans-serif">2,415 ✓</p></div></div><div class="row" style="grid-template-columns:1.1fr 1.3fr 1.3fr"><div class="cell"><p style="font-family:Inter,sans-serif">9</p></div><div class="cell"><p style="font-family:Inter,sans-serif">Digits sum to a multiple of 9</p></div><div class="cell"><M t="5{,}382: 5 + 3 + 8 + 2 = 18 ✓" s="32" c="#1B2433"/></div></div><div class="row" style="grid-template-columns:1.1fr 1.3fr 1.3fr"><div class="cell"><p style="font-family:Inter,sans-serif">7, 11, 13…</p></div><div class="cell"><p style="font-family:Inter,sans-serif">No quick rule worth memorizing: just divide</p></div><div class="cell"><M t="287 \div  7 = 41 ✓" s="32" c="#1B2433"/></div></div></div></div>

---
layout: none
---

<div class="sec "><p class="kicker">How far to test</p><h2>To check whether <i>n</i> is prime, test primes only up to its square root</h2><div class="formula-m"><M t="\text{If no prime }≤ \sqrt n\text{ divides }n,\text{ then }n\text{ is prime}" s="72" c="#1B2433"/></div><p class="explain">Factors come in pairs. If one factor is bigger than the square root, its partner is smaller, and you would already have found it.</p><div class="calc"><p class="ct">Is 97 prime? Its square root is just under 10, so test 2, 3, 5 and 7. None of them divides 97, so it’s prime.</p></div></div>

---
layout: none
---

<div class="sec accent center"><div class="bar"></div><p class="kicker">Pause</p><h1>Questions?</h1><p class="lead">Questions on primes or divisibility?</p></div>

<!--
Open the floor, and read out any questions from the chat.
-->

---
layout: none
---

<div class="sec prob"><div class="split"><div class="problem"><p class="tag">Problem 1 · Factors</p><p class="stem">Which of the following is a factor of 287?</p><div class="chs"><div class="ch "><p class="ltr">A</p><M t="3" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="7" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="9" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="11" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="13" s="40" c="#1B2433"/></div></div></div><div class="poll"><p class="plabel">Poll</p><p class="pq">Is 287 prime?</p><ul class="opts"><li>A&nbsp;&nbsp;Yes</li><li>B&nbsp;&nbsp;No</li><li>C&nbsp;&nbsp;Not sure yet</li></ul></div></div></div>

<!--
Most will guess yes, since it isn’t even, doesn’t end in 5, and its digits sum to 17. Don’t reveal yet.
-->

---
layout: none
---

<div class="sec prob"><div class="split"><div class="problem"><p class="tag">Problem 1 · Factors</p><p class="stem">Which of the following is a factor of 287?</p><div class="chs"><div class="ch "><p class="ltr">A</p><M t="3" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="7" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="9" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="11" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="13" s="40" c="#1B2433"/></div></div></div><div class="poll"><p class="plabel">Poll</p><p class="pq">Which choices can the divisibility rules rule out right away?</p><ul class="opts"><li>A&nbsp;&nbsp;3 and 9</li><li>B&nbsp;&nbsp;7 and 11</li><li>C&nbsp;&nbsp;Only 13</li><li>D&nbsp;&nbsp;None</li></ul></div></div></div>

<!--
A. The digits sum to 17, which isn’t a multiple of 3, so neither 3 nor 9 divides 287.
-->

---
layout: none
---

<div class="sec work"><div class="split"><div class="mini"><p class="tag">Problem 1 · Factors</p><p class="stem">Which of the following is a factor of 287?</p><div class="chs"><div class="ch "><p class="ltr">A</p><M t="3" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="7" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="9" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="11" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="13" s="30" c="#1B2433"/></div></div></div><div class="steps"><h2>Divide by the next primes</h2><div class="rows"><div class="row hdr" style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><p>Choice</p></div><div class="cell"><p>287 ÷ choice</p></div><div class="cell"><p>Factor?</p></div></div><div class="row out" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="3" s="32" c="#7A7F89"/></div><div class="cell"><M t="\text{digit sum }17" s="32" c="#7A7F89"/></div><div class="cell"><p>✗</p></div></div><div class="row win" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="7" s="32" c="#1B2433"/></div><div class="cell"><M t="41" s="32" c="#1B2433"/></div><div class="cell"><p>✓</p></div></div><div class="row out" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="9" s="32" c="#7A7F89"/></div><div class="cell"><M t="\text{digit sum }17" s="32" c="#7A7F89"/></div><div class="cell"><p>✗</p></div></div><div class="row out" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="11" s="32" c="#7A7F89"/></div><div class="cell"><M t="26.09\ldots " s="32" c="#7A7F89"/></div><div class="cell"><p>✗</p></div></div><div class="row out" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="13" s="32" c="#7A7F89"/></div><div class="cell"><M t="22.07\ldots " s="32" c="#7A7F89"/></div><div class="cell"><p>✗</p></div></div></div><p class="note" v-click>287 = 7 × 41, so it isn’t prime. “Looks prime” isn’t a test.</p><p class="verdict" v-click>Answer: B</p></div></div></div>

---
layout: none
---

<div class="sec accent center"><div class="bar"></div><p class="kicker">Pause</p><h1>Questions?</h1><p class="lead">Next: breaking big numbers into primes.</p></div>

<!--
Open the floor, and read out any questions from the chat.
-->

---
layout: none
---

<div class="sec dark center"><div class="bar"></div><p class="kicker">Part 2</p><h1>Prime factorization</h1><p class="lead">When you see a big number, factor it.</p></div>

---
layout: none
---

<div class="sec "><p class="kicker">The method</p><h2>Split into any two factors, then keep splitting</h2><div class="formula-m"><M t="360 = 36 \times  10 = (2^{2} \times  3^{2}) \times  (2 \times  5) = 2^{3} \times  3^{2} \times  5" s="64.7" c="#1B2433"/></div><p class="explain">Start with easy splits: tens, squares, anything obvious. The primes come out the same whichever path you take.</p><p class="explain">Huge powers like 360³? Factor the base once, then multiply every exponent.</p></div>

---
layout: none
---

<div class="sec prob"><div class="split"><div class="problem"><p class="tag">Problem 2 · Prime factorization</p><p class="stem">Which of the following is equal to the expression below?</p><div class="mathc"><M t="\dfrac{360^{3} }{12}" s="50" c="#1B2433"/></div><div class="chs"><div class="ch "><p class="ltr">A</p><M t="30^{3}" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="2^{7} \times  3^{5} \times  5^{3}" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="2^{9} \times  3^{5} \times  5^{3}" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="2^{7} \times  3^{6} \times  5^{2}" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="360^{2}" s="40" c="#1B2433"/></div></div></div><div class="poll"><p class="plabel">Your turn</p><p class="pq">Type the prime factorization of 360 in the chat.</p><p class="ptip">Hint: 360 = 36 × 10.</p></div></div></div>

<!--
2^3 × 3^2 × 5.
-->

---
layout: none
---

<div class="sec prob"><div class="split"><div class="problem"><p class="tag">Problem 2 · Prime factorization</p><p class="stem">Which of the following is equal to the expression below?</p><div class="mathc"><M t="\dfrac{360^{3} }{12}" s="50" c="#1B2433"/></div><div class="chs"><div class="ch "><p class="ltr">A</p><M t="30^{3}" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="2^{7} \times  3^{5} \times  5^{3}" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="2^{9} \times  3^{5} \times  5^{3}" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="2^{7} \times  3^{6} \times  5^{2}" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="360^{2}" s="40" c="#1B2433"/></div></div></div><div class="poll"><p class="plabel">Your turn</p><p class="pq">Now type the prime factorization of 12.</p><p class="ptip">Then: what happens to 360’s factorization when it’s cubed?</p></div></div></div>

<!--
2^2 × 3.
-->

---
layout: none
---

<div class="sec work"><div class="split"><div class="mini"><p class="tag">Problem 2 · Prime factorization</p><p class="stem">Which of the following is equal to the expression below?</p><div class="mathc"><M t="\dfrac{360^{3} }{12}" s="34" c="#1B2433"/></div><div class="chs"><div class="ch "><p class="ltr">A</p><M t="30^{3}" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="2^{7} \times  3^{5} \times  5^{3}" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="2^{9} \times  3^{5} \times  5^{3}" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="2^{7} \times  3^{6} \times  5^{2}" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="360^{2}" s="30" c="#1B2433"/></div></div></div><div class="steps"><h2>Factor, cube, then divide</h2><div class="calc" v-click><M t="360^{3} = (2^{3} \times  3^{2} \times  5)^{3} = 2^{9} \times  3^{6} \times  5^{3}" s="40" c="#1B2433"/></div><div class="calc" v-click><M t="\div  12 = \div  (2^{2} \times  3)" s="40" c="#1B2433"/></div><div class="calc" v-click><M t="= 2^{7} \times  3^{5} \times  5^{3}" s="40" c="#1B2433"/></div><p class="note" v-click>Trap: choice C divides by the 3 but not by the 2².</p><p class="verdict" v-click>Answer: B</p></div></div></div>

---
layout: none
---

<div class="sec prob"><div class="split"><div class="problem"><p class="tag">Problem 3 · Distinct prime factors</p><div class="qc"><div class="qbox"><h3>Quantity A</h3><p class="qval">The number of distinct prime factors of 252,000</p></div><div class="qbox"><h3>Quantity B</h3><p class="qval">The number of distinct prime factors of 330</p></div></div><div class="chs qcl"><div class="ch "><p class="ltr">A</p><p class="ct">Quantity A is greater.</p></div><div class="ch "><p class="ltr">B</p><p class="ct">Quantity B is greater.</p></div><div class="ch "><p class="ltr">C</p><p class="ct">The two quantities are equal.</p></div><div class="ch "><p class="ltr">D</p><p class="ct">The relationship cannot be determined from the information given.</p></div></div></div><div class="poll"><p class="plabel">Your turn</p><p class="pq">Type the prime factorization of 252,000 in the chat.</p><p class="ptip">Hint: 252,000 = 252 × 1,000.</p></div></div></div>

<!--
252 = 2^2 × 3^2 × 7 and 1,000 = 2^3 × 5^3, so 252,000 = 2^5 × 3^2 × 5^3 × 7.
-->

---
layout: none
---

<div class="sec prob"><div class="split"><div class="problem"><p class="tag">Problem 3 · Distinct prime factors</p><div class="qc"><div class="qbox"><h3>Quantity A</h3><p class="qval">The number of distinct prime factors of 252,000</p></div><div class="qbox"><h3>Quantity B</h3><p class="qval">The number of distinct prime factors of 330</p></div></div><div class="chs qcl"><div class="ch "><p class="ltr">A</p><p class="ct">Quantity A is greater.</p></div><div class="ch "><p class="ltr">B</p><p class="ct">Quantity B is greater.</p></div><div class="ch "><p class="ltr">C</p><p class="ct">The two quantities are equal.</p></div><div class="ch "><p class="ltr">D</p><p class="ct">The relationship cannot be determined from the information given.</p></div></div></div><div class="poll"><p class="plabel">Your turn</p><p class="pq">Now type the prime factorization of 330.</p><p class="ptip">“Distinct” means count each prime once, however many times it appears.</p></div></div></div>

<!--
330 = 2 × 3 × 5 × 11.
-->

---
layout: none
---

<div class="sec work"><div class="split"><div class="mini"><p class="tag">Problem 3 · Distinct prime factors</p><div class="qc"><div class="qbox"><h3>Quantity A</h3><p class="qval">The number of distinct prime factors of 252,000</p></div><div class="qbox"><h3>Quantity B</h3><p class="qval">The number of distinct prime factors of 330</p></div></div><div class="chs qcl"><div class="ch "><p class="ltr">A</p><p class="ct">Quantity A is greater.</p></div><div class="ch "><p class="ltr">B</p><p class="ct">Quantity B is greater.</p></div><div class="ch "><p class="ltr">C</p><p class="ct">The two quantities are equal.</p></div><div class="ch "><p class="ltr">D</p><p class="ct">The relationship cannot be determined from the information given.</p></div></div></div><div class="steps"><h2>Count each prime once</h2><div class="calc" v-click><M t="252{,}000 = 2^{5} \times  3^{2} \times  5^{3} \times  7  \;\rightarrow\;  {2, 3, 5, 7}: 4" s="40" c="#1B2433"/></div><div class="calc" v-click><M t="330 = 2 \times  3 \times  5 \times  11  \;\rightarrow\;  {2, 3, 5, 11}: 4" s="40" c="#1B2433"/></div><p class="note" v-click>A huge number doesn’t mean more distinct primes. It usually means bigger exponents.</p><p class="verdict" v-click>Answer: C</p></div></div></div>

---
layout: none
---

<div class="sec "><p class="kicker">Bonus skill</p><h2>Count factors from the prime factorization</h2><div class="formula-m"><M t="\text{If }n = p^{a} \times  q^{b},\text{ then }n\text{ has }(a + 1)(b + 1)\text{ factors}" s="68.3" c="#1B2433"/></div><p class="explain">Each factor uses p between 0 and a times, and q between 0 and b times.</p><div class="calc"><M t="72 = 2^{3} \times  3^{2},\text{ so it has }(3 + 1)(2 + 1) = 12\text{ factors}" s="40" c="#1B2433"/></div></div>

---
layout: none
---

<div class="sec prob"><div class="split"><div class="problem"><p class="tag">Problem 4 · Counting factors</p><p class="stem">How many positive factors does 200 have?</p><div class="chs"><div class="ch "><p class="ltr">A</p><M t="6" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="8" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="10" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="12" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="20" s="40" c="#1B2433"/></div></div></div><div class="poll"><p class="plabel">Poll</p><p class="pq">Which answer?</p><ul class="opts"><li>A</li><li>B</li><li>C</li><li>D</li><li>E</li></ul></div></div></div>

<!--
Give 60 seconds.
-->

---
layout: none
---

<div class="sec work"><div class="split"><div class="mini"><p class="tag">Problem 4 · Counting factors</p><p class="stem">How many positive factors does 200 have?</p><div class="chs"><div class="ch "><p class="ltr">A</p><M t="6" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="8" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="10" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="12" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="20" s="30" c="#1B2433"/></div></div></div><div class="steps"><h2>Factor, add 1, multiply</h2><div class="calc" v-click><M t="200 = 2^{3} \times  5^{2}" s="40" c="#1B2433"/></div><div class="calc" v-click><M t="(3 + 1)(2 + 1) = \mathbf{12}" s="40" c="#1B2433"/></div><p class="note" v-click>Trap: 8 comes from 2³ alone, or from adding the exponents plus 1 each instead of multiplying.</p><p class="verdict" v-click>Answer: D</p></div></div></div>

<!--
List them to confirm: 1, 2, 4, 5, 8, 10, 20, 25, 40, 50, 100, 200.
-->

---
layout: none
---

<div class="sec accent center"><div class="bar"></div><p class="kicker">Pause</p><h1>Questions?</h1><p class="lead">Questions on factorization before the last skill?</p></div>

<!--
Open the floor, and read out any questions from the chat.
-->

---
layout: none
---

<div class="sec dark center"><div class="bar"></div><p class="kicker">Part 3</p><h1>Testing cases</h1><p class="lead">For “must” and “could” questions, numbers beat theory.</p></div>

---
layout: none
---

<div class="sec "><p class="kicker">Must vs. could</p><h2>The question word decides how many tests you need</h2><div class="cards2"><div class="card" v-click><p class="num">1</p><h3>“Must be”</h3><p class="txt2">True for every number allowed. One counterexample eliminates a choice, so keep testing until only one choice survives.</p></div><div class="card" v-click><p class="num">2</p><h3>“Could be”</h3><p class="txt2">True for at least one number allowed. One example that works proves a choice, so look for the case that makes it happen.</p></div></div><p class="foot" v-click>Every number you test must follow the question’s rules: odd, even, positive, and so on.</p></div>

---
layout: none
---

<div class="sec "><p class="kicker">Reference</p><h2>Even and odd rules</h2><div class="rows"><div class="row hdr" style="grid-template-columns:1.1fr 1.3fr 1.3fr"><div class="cell"><p>Operation</p></div><div class="cell"><p>Result</p></div><div class="cell"><p>Check</p></div></div><div class="row" style="grid-template-columns:1.1fr 1.3fr 1.3fr"><div class="cell"><p style="font-family:Inter,sans-serif">even ± even</p></div><div class="cell"><p style="font-family:Inter,sans-serif">even</p></div><div class="cell"><M t="4 + 6 = 10" s="32" c="#1B2433"/></div></div><div class="row" style="grid-template-columns:1.1fr 1.3fr 1.3fr"><div class="cell"><p style="font-family:Inter,sans-serif">odd ± odd</p></div><div class="cell"><p style="font-family:Inter,sans-serif">even</p></div><div class="cell"><M t="3 + 5 = 8" s="32" c="#1B2433"/></div></div><div class="row" style="grid-template-columns:1.1fr 1.3fr 1.3fr"><div class="cell"><p style="font-family:Inter,sans-serif">even ± odd</p></div><div class="cell"><p style="font-family:Inter,sans-serif">odd</p></div><div class="cell"><M t="4 + 3 = 7" s="32" c="#1B2433"/></div></div><div class="row" style="grid-template-columns:1.1fr 1.3fr 1.3fr"><div class="cell"><p style="font-family:Inter,sans-serif">even × any integer</p></div><div class="cell"><p style="font-family:Inter,sans-serif">even</p></div><div class="cell"><M t="4 \times  3 = 12" s="32" c="#1B2433"/></div></div><div class="row" style="grid-template-columns:1.1fr 1.3fr 1.3fr"><div class="cell"><p style="font-family:Inter,sans-serif">odd × odd</p></div><div class="cell"><p style="font-family:Inter,sans-serif">odd</p></div><div class="cell"><M t="3 \times  5 = 15" s="32" c="#1B2433"/></div></div></div></div>

<!--
Students can rebuild these from 2 and 3 in seconds. Encourage testing instead of memorizing.
-->

---
layout: none
---

<div class="sec prob"><div class="split"><div class="problem"><p class="tag">Problem 5 · Must be</p><p class="stem">If <i>m</i> is an odd integer and <i>k</i> is an even integer, which of the following must be odd?</p><div class="chs"><div class="ch "><p class="ltr">A</p><M t="m^{2}k" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="3m + k" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="mk + 2" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="m + k + 1" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="k^{3}" s="40" c="#1B2433"/></div></div></div><div class="poll"><p class="plabel">Your turn</p><p class="pq">Drop values for <i>m</i> and <i>k</i> in the chat.</p><p class="ptip">Small and legal: <i>m</i> = 3, <i>k</i> = 2 works.</p><p class="ptip">Avoid <i>k</i> = 0 on the first test. It hides too much.</p></div></div></div>

---
layout: none
---

<div class="sec work"><div class="split"><div class="mini"><p class="tag">Problem 5 · Must be</p><p class="stem">If <i>m</i> is an odd integer and <i>k</i> is an even integer, which of the following must be odd?</p><div class="chs"><div class="ch "><p class="ltr">A</p><M t="m^{2}k" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="3m + k" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="mk + 2" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="m + k + 1" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="k^{3}" s="30" c="#1B2433"/></div></div></div><div class="steps"><h2>Test <i>m</i> = 3, <i>k</i> = 2</h2><div class="rows"><div class="row hdr" style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><p>Choice</p></div><div class="cell"><p>Value</p></div><div class="cell"><p>Odd?</p></div></div><div class="row out" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="m^{2}k" s="32" c="#7A7F89"/></div><div class="cell"><M t="18" s="32" c="#7A7F89"/></div><div class="cell"><p>✗</p></div></div><div class="row win" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="3m + k" s="32" c="#1B2433"/></div><div class="cell"><M t="11" s="32" c="#1B2433"/></div><div class="cell"><p>✓</p></div></div><div class="row out" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="mk + 2" s="32" c="#7A7F89"/></div><div class="cell"><M t="8" s="32" c="#7A7F89"/></div><div class="cell"><p>✗</p></div></div><div class="row out" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="m + k + 1" s="32" c="#7A7F89"/></div><div class="cell"><M t="6" s="32" c="#7A7F89"/></div><div class="cell"><p>✗</p></div></div><div class="row out" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="k^{3}" s="32" c="#7A7F89"/></div><div class="cell"><M t="8" s="32" c="#7A7F89"/></div><div class="cell"><p>✗</p></div></div></div><p class="note" v-click>Only one survivor, so we’re done. Confirm with the rules: odd × odd + even = odd.</p><p class="verdict" v-click>Answer: B</p></div></div></div>

---
layout: none
---

<div class="sec prob"><div class="split"><div class="problem"><p class="tag">Problem 6 · Could be</p><p class="stem">If <i>x</i> − <i>y</i> = 4 and <i>y</i> is negative, which of the following could be negative?</p><div class="chs"><div class="ch "><p class="ltr">A</p><M t="x - 2y" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="xy" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="x^{2} + y^{2}" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="4 - x" s="40" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="y^{2} - y" s="40" c="#1B2433"/></div></div></div><div class="poll"><p class="plabel">Your turn</p><p class="pq">Drop values for <i>x</i> and <i>y</i> in the chat.</p><p class="ptip"><i>y</i> must be negative, and <i>x</i> = <i>y</i> + 4.</p><p class="ptip">“Could” means one example is enough.</p></div></div></div>

---
layout: none
---

<div class="sec work"><div class="split"><div class="mini"><p class="tag">Problem 6 · Could be</p><p class="stem">If <i>x</i> − <i>y</i> = 4 and <i>y</i> is negative, which of the following could be negative?</p><div class="chs"><div class="ch "><p class="ltr">A</p><M t="x - 2y" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">B</p><M t="xy" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">C</p><M t="x^{2} + y^{2}" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">D</p><M t="4 - x" s="30" c="#1B2433"/></div><div class="ch "><p class="ltr">E</p><M t="y^{2} - y" s="30" c="#1B2433"/></div></div></div><div class="steps"><h2>Test <i>y</i> = −1, so <i>x</i> = 3</h2><div class="rows"><div class="row hdr" style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><p>Choice</p></div><div class="cell"><p>Value</p></div><div class="cell"><p>Negative?</p></div></div><div class="row out" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="x - 2y" s="32" c="#7A7F89"/></div><div class="cell"><M t="5" s="32" c="#7A7F89"/></div><div class="cell"><p></p></div></div><div class="row win" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="xy" s="32" c="#1B2433"/></div><div class="cell"><M t="-3" s="32" c="#1B2433"/></div><div class="cell"><p>✓</p></div></div><div class="row out" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="x^{2} + y^{2}" s="32" c="#7A7F89"/></div><div class="cell"><M t="10" s="32" c="#7A7F89"/></div><div class="cell"><p></p></div></div><div class="row out" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="4 - x" s="32" c="#7A7F89"/></div><div class="cell"><M t="1" s="32" c="#7A7F89"/></div><div class="cell"><p></p></div></div><div class="row out" v-click style="grid-template-columns:1fr 2.2fr 1fr"><div class="cell"><M t="y^{2} - y" s="32" c="#7A7F89"/></div><div class="cell"><M t="2" s="32" c="#7A7F89"/></div><div class="cell"><p></p></div></div></div><p class="note" v-click>One working example proves a “could.” The others are always positive: A = 4 − <i>y</i>, D = −<i>y</i>, and C and E are sums of positives.</p><p class="verdict" v-click>Answer: B</p></div></div></div>

<!--
Point out that y = −5, x = −1 makes xy positive. That’s fine for a “could” question.
-->

---
layout: none
---

<div class="sec accent center"><div class="bar"></div><p class="kicker">Pause</p><h1>Questions?</h1><p class="lead">Any last questions?</p></div>

<!--
Open the floor, and read out any questions from the chat.
-->

---
layout: none
---

<div class="sec dark"><p class="kicker">Takeaways</p><h2>Three things to take into your next practice set</h2><ul class="points"><li>Test for primes with divisibility rules, and only up to the square root</li><li>Big numbers? Factor into primes first. Exponents just multiply</li><li>“Must” needs one counterexample to eliminate; “could” needs one example to confirm</li></ul></div>

---
layout: none
---

<div class="sec dark center"><div class="bar"></div><p class="kicker">Keep going</p><h1>Thanks for working with me</h1><p class="lead">Your homework: prime-factor five numbers over 1,000 this week, then count their factors.</p><p class="lead" style="margin-top:32px;color:#C9C3B6;">Questions: [support email]</p></div>
