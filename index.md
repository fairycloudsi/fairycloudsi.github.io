---
layout: page
title: Home
---

<div class="hero">
<div>

<h1>{{ site.author.name }}</h1>

<p class="role">{{ site.author.role }} &middot; {{ site.author.affiliation }}</p>

<p class="lede">I build trustworthy foundation models through the lens of numerical
analysis, working at the intersection of differential privacy, optimization theory, and
AI for science.</p>

<p>My research combines PhD training in randomized solvers (UC Irvine, Mathematics) with
industrial-scale deployment experience at Ant Group, and applies it to privacy-preserving
large language models and scientific foundation models. The through-line is that the tools
of classical numerical analysis — preconditioning, multigrid, randomized sketching — turn
out to be exactly what modern machine learning needs when it has to be both private and
large.</p>

<p>I have published 10+ first- or corresponding-author papers at top-tier venues including
AAAI, WWW and IJCAI, hold authorized US patents in privacy-preserving model training, and
serve as PI on a Zhejiang Lab talent grant. I am a core contributor to National Key R&amp;D
Programs, including AI-powered galaxy simulation for the Chinese Space Station Telescope.</p>

</div>

<aside class="contact-card">
  <h4>Contact</h4>
  <ul>
    <li><a href="mailto:{{ site.author.email }}">{{ site.author.email }}</a></li>
    <li><a href="{{ site.author.scholar }}">Google Scholar</a></li>
    <li><a href="https://github.com/{{ site.author.github }}">GitHub</a></li>
    <li><a href="{{ site.author.genealogy }}">Math Genealogy</a></li>
  </ul>
  <h4 style="margin-top:1rem">Based in</h4>
  <ul><li>{{ site.author.location }}</li></ul>
</aside>
</div>

## Research interests

<ul class="interests">
  <li><strong>Differential privacy</strong>RDP and GDP accounting, perturbation mechanism
  design, and privacy–utility trade-offs that survive contact with real models.</li>
  <li><strong>Federated optimization</strong>Gradient compression, subspace descent, and
  personalization for training across parties that cannot share data.</li>
  <li><strong>Numerical analysis for ML</strong>Preconditioning, multigrid, and randomized
  solvers brought to bear on foundation-model training.</li>
  <li><strong>AI for science</strong>Seismic imaging and galaxy simulation, where the
  physics constrains what a learned model is allowed to do.</li>
</ul>

## Selected work

{% for p in site.data.projects limit: 3 %}
<div class="project">
  <h3>{{ p.title }}</h3>
  <div class="chips"><span class="chip chip--venue">{{ p.venue }}</span></div>
  <div class="result">{{ p.result }}</div>
</div>
{% endfor %}

<p><a href="{{ '/research/' | relative_url }}">Read more about these projects &rarr;</a></p>

## Teaching

{% for c in site.data.teaching %}
<div class="project">
  <h3>{% if c.url %}<a href="{{ c.url }}">{{ c.title }}</a>{% else %}{{ c.title }}{% endif %}</h3>
  <div class="chips">
    <span class="chip chip--venue">{{ c.code }}</span>
    <span class="chip">{{ c.level }}</span>
    <span class="chip">{{ c.format }}</span>
    <span class="chip chip--role">{{ c.when }}</span>
  </div>
  <div class="result">{{ c.summary }}
  {% if c.url %}<a href="{{ c.url }}">Course website &rarr;</a>{% endif %}</div>
</div>
{% endfor %}

<p><a href="{{ '/teaching/' | relative_url }}">All teaching &rarr;</a></p>

## Background

<div class="rows">
  <dt>Now</dt><dd>{{ site.author.role }}, {{ site.author.affiliation }} (2026&ndash;)</dd>
  <dt>Before</dt><dd>Senior Researcher, Zhejiang Laboratory (2022&ndash;26) &middot;
      Senior Algorithm Engineer, Ant Group (2020&ndash;22)</dd>
  <dt>PhD</dt><dd>Mathematics, University of California, Irvine (2019) &mdash;
      randomized fast solvers, advised by Prof. Long Chen</dd>
  <dt>Undergraduate</dt><dd>Mathematics, Sichuan University (2013), with Honors</dd>
</div>

<p><a href="{{ '/cv/' | relative_url }}">Full CV &rarr;</a></p>
