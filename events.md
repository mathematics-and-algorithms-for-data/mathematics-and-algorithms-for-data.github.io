---
layout: default_future
title: Events
permalink: /events/
---
 {% assign sorted = site.events | sort: 'start_date' | reverse    %}

## Future events
<ul>
{% for event in sorted %}
 <div future-date="{{ event.end_date | date: '%Y-%m-%d' }}">
<li>  <p> <a href="{{event.url}}">{{ event.title }} </a>{% if event.end_date != nil %} : {{ event.start_date | date: "%-d %b"  }}  to  {{ event.end_date | date: "%-d %b %Y"  }} {% else %} : {{ event.start_date | date: "%-d %b %Y"  }} 
{% endif %}
</p></li></div>
{% endfor %}
</ul>

## All events


{% for event in sorted %}
  - [{{ event.title  }}]({{event.url}}){% if event.end_date != nil %} : {{ event.start_date | date: "%-d %b"  }}  to  {{ event.end_date | date: "%-d %b %Y"  }} {% else %} : {{ event.start_date | date: "%-d %b %Y"  }} 
{% endif %}
{% endfor %} 
