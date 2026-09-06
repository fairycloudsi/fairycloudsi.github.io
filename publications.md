---
layout: page
title: Publications
permalink: /publications/
description: "Peer-reviewed publications and patents of Huiwen Wu."
---

<p class="lede prose">Grouped by year, newest first. An asterisk marks corresponding
authorship. See also <a href="{{ site.author.scholar }}">Google Scholar</a>.</p>

{% assign pubs = site.data.publications %}
{% assign years = pubs | map: "year" | uniq | sort | reverse %}

{% for y in years %}
<h2>{{ y }}</h2>
<ul class="entries">
  {% for p in pubs %}{% if p.year == y %}
  <li class="entry">
    <span class="when">{{ p.year }}</span>
    <div class="what">
      <span class="title">{% if p.url %}<a href="{{ p.url }}">{{ p.title }}</a>{% else %}{{ p.title }}{% endif %}</span>
      <span class="authors">{{ p.authors }}</span>
      <div class="chips">
        <span class="chip chip--venue">{{ p.venue }}</span>
        {% if p.rank %}<span class="chip">{{ p.rank }}</span>{% endif %}
        {% if p.role %}<span class="chip chip--role">{{ p.role }}</span>{% endif %}
        {% if p.note %}<span class="chip">{{ p.note }}</span>{% endif %}
      </div>
    </div>
  </li>
  {% endif %}{% endfor %}
</ul>
{% endfor %}

## Patents

<ul class="entries">
  {% for p in site.data.patents %}
  <li class="entry">
    <span class="when">US</span>
    <div class="what">
      <span class="title">{{ p.title }}</span>
      <span class="authors">{{ p.authors }}</span>
      <div class="chips">
        <span class="chip chip--venue">{{ p.number }}</span>
        {% if p.role %}<span class="chip chip--role">{{ p.role }}</span>{% endif %}
      </div>
    </div>
  </li>
  {% endfor %}
</ul>
