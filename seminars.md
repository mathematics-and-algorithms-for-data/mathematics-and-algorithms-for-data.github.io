---
layout: default_sparse
title: Seminars
permalink: /seminars/
---

## Seminars

We organise a number of seminars based on our common interests. You might also be interested in the seminar series in [Statistics](https:\\people.bath.ac.uk\kmph20\seminars.html), [Numerical Analysis](http:\\people.bath.ac.uk\sg968\NAseminars\naseminar.html), and [Networks](href="https:\\people.bath.ac.uk\ma3tcr\cncb_calendar.html).

<div class="container">
{% assign sorted_seminars = site.data.seminars.seminars | sort: "date" | reverse %}
{% for item in sorted_seminars %}
	<div class="row align-items-center shadow-sm p-1 mb-3 bg-light rounded border border-light">
		<!--<div class="col-md-3 col-xl-2 d-none d-md-block">
			{% if item.id > "" %}
				{% capture custom_image_file %}{{ site.baseurl }}/assets/images/papers/icons/{{ item.id }}.png{% endcapture %}
				{% capture custom_image_file_exists %}{% file_exists {{ custom_image_file }} %}{% endcapture %}
				{% if custom_image_file_exists == "true" %}
					{% assign image_file = custom_image_file %}
				{% else %}
					{% capture image_file %}{{ site.baseurl }}/assets/images/papers/icons/{{ item.id }}_pages.png{% endcapture %}
				{% endif %}
				{% if pdf_file_exists == "true" %}<a href="{{ pdf_file }}">{% endif %}
					<img src="{{ image_file }}" class="img-fluid" alt="{{ item.id }}" style="width:100%">
				{% if pdf_file_exists == "true" %}</a>{% endif %}
			{% endif %}
		</div>-->
		<div class="col-xs-12">
			<b>{{ item.title }}</b>, <br class="d-none d-lg-block" />
			{{ item.speaker }}, <br class="d-xs-block d-lg-block" />
			<i>Location:</i> {{ item.location }},&nbsp;&nbsp;<i>Time:</i> {{ item.date | date: "%H:%M, %d %b, %Y" }}<br />

			{% if pdf_file_exists == "true" %}
				<a href="{{ pdf_file }}">[pdf]</a> 
			{% endif %}

			{% if item.arxiv-link %}
				<a href="{{ item.arxiv-link }}">[arXiv link]</a> 
			{% endif %}
		</div>
	</div>
{% endfor %}
</div>