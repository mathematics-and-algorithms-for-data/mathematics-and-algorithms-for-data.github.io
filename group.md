---
layout: default_sparse
title: Group
permalink: /group/
---

# Research Group

I am very fortunate to work with a fantastic research group both within Bath and beyond.

## External Collaborators

I have a long-term collaboration with [Dr Carl Henrik Ek](http://carlhenrik.com) down the road at the University of Bristol and we co-supervise a number of PhD students between Bath and Bristol. 

In addition, I also have a long-term collaboration with [Prof. Gabriel Brostow](http://www0.cs.ucl.ac.uk/staff/g.brostow/) and [Prof. Lourdes Agapito](http://www0.cs.ucl.ac.uk/staff/l.agapito/) at University College London where I am an Honorary Associate Professor.

# PhD and EngD Students

<div>
{% assign grouped_people = site.data.group.people | group_by:"category" %}
{% for group in grouped_people %}
	<p><b>{{ group.name }}</b></p>
	<div class="row">
	{% for item in group.items %}
	<div class="col-xs-2 align-items-center shadow-sm p-1 mb-3 bg-white rounded border border-light">
		<div class="">
			{% if item.id > "" %}
				{% capture image_file %}{{ site.baseurl }}/assets/images/mugshots/{{ item.id }}.jpg{% endcapture %}
				<img src="{{ image_file }}" class="img-fluid" alt="{{ item.id }}" style="width:100%">
			{% endif %}
			<p>{{ item.name }}</p>
		</div>
		<!--
		<div class="col-md-9 col-xl-10 col-sm-12">
			<b>{{ item.title }}</b>, <br class="d-none d-lg-block" />
			{{ item.authors }}, <br class="d-none d-lg-block" />
			<i>{{ item.venue }},</i> {{ item.year }}<br />

			{% capture pdf_file %}{{ site.baseurl }}/assets/papers/{{ item.id }}.pdf{% endcapture %}
			{% capture pdf_file_exists %}{% file_exists {{ pdf_file }} %}{% endcapture %}
			{% if pdf_file_exists == "true" %}
				<a href="{{ pdf_file }}">[pdf]</a> 
			{% endif %}

			{% if item.arxiv-link %}
				<a href="{{ item.arxiv-link }}">[arXiv link]</a> 
			{% endif %}
		</div>-->
	</div>
	{% endfor %}
	</div>
{% endfor %}
</div>
