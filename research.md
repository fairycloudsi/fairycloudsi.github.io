---
layout: page
title: Research
permalink: /research/
description: "Privacy-preserving LLMs, federated optimization, and numerical methods for scientific foundation models."
---

<p class="lede prose">Three threads run through my work: making privacy guarantees survive
contact with large models, making federated training cheap enough to be practical, and
importing the structure-exploiting machinery of numerical analysis into places machine
learning had not yet looked.</p>

{% for p in site.data.projects %}
<div class="project">
  <h3>{{ p.title }}</h3>
  <div class="chips"><span class="chip chip--venue">{{ p.venue }}</span></div>
  <ul>
    {% for pt in p.points %}<li>{{ pt }}</li>{% endfor %}
  </ul>
  <div class="result">{{ p.result }}</div>
</div>
{% endfor %}

## Why numerical analysis

Differential privacy and large-scale training are usually treated as separate engineering
problems. They are both, at bottom, questions about how error propagates through an
iterative process — which is the subject numerical analysis has studied for seventy years.

A preconditioner reshapes the spectrum of a problem so that an iterative solver converges
faster; the same idea, applied to differentially private SGD, reshapes how injected noise
interacts with the geometry of the loss. Multigrid exploits the fact that a signal
decomposes across scales, and a seismogram or a galaxy field is exactly such a signal.
Randomized sketching preserves the low-rank structure of a matrix under projection, which
is precisely what a gradient-compression scheme needs to guarantee.

Working this way means the guarantees are provable rather than empirical, and the methods
transfer between domains that otherwise share no vocabulary.
