---
layout: page
title: Curriculum Vitae
permalink: /cv/
description: "Experience, education, funding, talks, and academic service."
---

<p class="lede prose">{{ site.author.role }} at {{ site.author.affiliation }}.
Contact: <a href="mailto:{{ site.author.email }}">{{ site.author.email }}</a>.</p>

## Experience

<ul class="entries">
{% for e in site.data.cv.experience %}
  <li class="entry">
    <span class="when">{{ e.when }}</span>
    <div class="what">
      <span class="title">{{ e.role }}</span>
      <span class="meta">{{ e.org }} &middot; {{ e.where }}</span>
      <ul>{% for pt in e.points %}<li>{{ pt }}</li>{% endfor %}</ul>
    </div>
  </li>
{% endfor %}
</ul>

## Education

<ul class="entries">
{% for e in site.data.cv.education %}
  <li class="entry">
    <span class="when">{{ e.when }}</span>
    <div class="what">
      <span class="title">{{ e.degree }}</span>
      <span class="meta">{{ e.org }} &middot; {{ e.where }}</span>
      <ul>{% for pt in e.points %}<li>{{ pt }}</li>{% endfor %}</ul>
    </div>
  </li>
{% endfor %}
</ul>

## Teaching

<ul class="entries">
{% for c in site.data.teaching %}
  <li class="entry">
    <span class="when">{{ c.when }}</span>
    <div class="what">
      <span class="title">{% if c.url %}<a href="{{ c.url }}">{{ c.title }}</a>{% else %}{{ c.title }}{% endif %}</span>
      <span class="meta">{{ c.code }} &middot; {{ c.level }} &middot; {{ c.format }}</span>
    </div>
  </li>
{% endfor %}
</ul>

## Funding

<ul class="entries">
{% for f in site.data.cv.funding %}
  <li class="entry">
    <span class="when">{{ f.when }}</span>
    <div class="what">
      <span class="title">{{ f.title }}</span>
      <span class="meta">{{ f.detail }}</span>
      {% if f.role != "" %}<div class="chips"><span class="chip chip--role">{{ f.role }}</span></div>{% endif %}
    </div>
  </li>
{% endfor %}
</ul>

## Invited talks and presentations

<ul class="entries">
{% for t in site.data.cv.talks %}
  <li class="entry">
    <span class="when">{{ t.when }}</span>
    <div class="what">
      <span class="title">{{ t.title }}</span>
      <span class="meta">{{ t.venue }}</span>
    </div>
  </li>
{% endfor %}
</ul>

## Technical expertise

<dl class="rows">
{% for x in site.data.cv.expertise %}
  <dt>{{ x.label }}</dt><dd>{{ x.items }}</dd>
{% endfor %}
</dl>

## Academic service

<dl class="rows">
{% for s in site.data.cv.services %}
  <dt>{{ s.label }}</dt><dd>{{ s.items }}</dd>
{% endfor %}
</dl>

## Elsewhere

<dl class="rows">
  <dt>Scholar</dt><dd><a href="{{ site.author.scholar }}">Google Scholar profile</a></dd>
  <dt>GitHub</dt><dd><a href="https://github.com/{{ site.author.github }}">github.com/{{ site.author.github }}</a></dd>
  <dt>Genealogy</dt><dd><a href="{{ site.author.genealogy }}">Mathematics Genealogy Project</a></dd>
</dl>
