---
layout: page
title: Teaching
permalink: /teaching/
description: "Courses taught by Huiwen Wu, including Matrix Theory and Applications I."
---

<p class="lede prose">I teach matrix theory and matrix computations to graduate students
in AI. The organising idea is that numerical analysis is not background material for
machine learning &mdash; it is the part that decides whether a method works at scale and in
floating point.</p>

{% for c in site.data.teaching %}
<div class="project">
  <h3>{% if c.url %}<a href="{{ c.url }}">{{ c.title }}</a>{% else %}{{ c.title }}{% endif %}</h3>
  <div class="chips">
    <span class="chip chip--venue">{{ c.code }}</span>
    <span class="chip">{{ c.level }}</span>
    <span class="chip">{{ c.format }}</span>
    <span class="chip chip--role">{{ c.when }}</span>
  </div>
  <p>{{ c.summary }}</p>
  {% if c.points %}
  <ul>
    {% for pt in c.points %}<li>{{ pt }}</li>{% endfor %}
  </ul>
  {% endif %}
  {% if c.url %}
  <div class="result"><a href="{{ c.url }}">Course website &rarr;</a> &mdash;
  full schedule, readings by section, assignments, and slides.</div>
  {% endif %}
</div>
{% endfor %}
