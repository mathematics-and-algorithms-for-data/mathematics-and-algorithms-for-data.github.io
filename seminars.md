---
layout: default
title: Seminars
permalink: /seminars/
---

## Seminars

We organise a number of seminars based on our common interests. It is currently being organised by [Sergey Dolgov](https://people.bath.ac.uk/sd901/) and [Davide Moltisanti](https://www.davidemoltisanti.com/research/). You might also be interested in the seminar series in [Statistics](https://www.bath.ac.uk/research-groups/statistics/), [Numerical Analysis](https://bath-numerical-analysis.github.io/events/current_seminars.html), and [Applied and Interdisciplinary Mathematics (AIMS)](https://wiki.bath.ac.uk/collector/pages.action?key=cnmseminar).

<div class="container">
{% assign sorted_seminars = site.data.seminars.seminars | sort: 'date' | reverse %}
{% for item in sorted_seminars %}
	<div class="row align-items-center shadow-sm p-1 mb-3 bg-light rounded border border-light">
		<div class="col-xs-12">
			<b>{{ item.title }}</b>, <br class="d-none d-lg-block" />
			{{ item.speaker }} <br class="d-xs-block d-lg-block" />
			<i>Location:</i> {{ item.location }},&nbsp;&nbsp;<i>Time:</i> {{ item.date | date: "%H:%M, %-d %b, %Y" }}
      {% if  item.url %}
      	<a href="{{ item.url }}">[url]</a> 
      {% endif %}
      {% if  item.note %}
      	<br class="d-xs-block d-lg-block" />
      	{{ item.note }} 
      {% endif %}
			{% if pdf_file_exists == "true" %}
				<a href="{{ pdf_file }}">[pdf]</a> 
			{% endif %}
<br />
			{% if item.arxiv-link %}
				<a href="{{ item.arxiv-link }}">[arXiv link]</a> 
			{% endif %}
		</div>
	</div>
{% endfor %}
</div>
