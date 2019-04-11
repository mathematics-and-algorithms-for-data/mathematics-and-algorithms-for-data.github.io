---
layout: default_sparse
title: Publications
permalink: /old_publications/
---

# Publications

<div>
{% assign grouped_papers = site.data.publications.papers | group_by:"year" %}
{% assign sorted_grouped_papers = grouped_papers | sort: "name" | reverse %}
{% for group in sorted_grouped_papers %}
	<p><b>{{ group.name }}</b></p>
	{% for item in group.items %}
		{% capture pdf_file %}{{ site.baseurl }}/assets/papers/{{ item.id }}.pdf{% endcapture %}
		{% assign pdf_file_exists="true" %}

	<div class="row align-items-center shadow-sm p-1 mb-3 bg-white rounded border border-light">
		<div class="col-md-3 col-xl-2 d-none d-md-block">
			{% if item.id > "" %}
				{% capture custom_image_file %}{{ site.baseurl }}/assets/images/papers/icons/{{ item.id }}.png{% endcapture %}
				{% assign custom_image_file_exists="true" %}
				{% if custom_image_file_exists == "true" %}
					{% assign image_file = custom_image_file %}
				{% else %}
					{% capture image_file %}{{ site.baseurl }}/assets/images/papers/icons/{{ item.id }}_pages.png{% endcapture %}
				{% endif %}
				{% if pdf_file_exists == "true" %}<a href="{{ pdf_file }}">{% endif %}
					<img src="{{ image_file }}" class="img-fluid" alt="{{ item.id }}" style="width:100%">
				{% if pdf_file_exists == "true" %}</a>{% endif %}
			{% endif %}
		</div>
		<div class="col-md-9 col-xl-10 col-sm-12">
			<b>{{ item.title }}</b>, <br class="d-none d-lg-block" />
			{{ item.authors }}, <br class="d-none d-lg-block" />
			<i>{{ item.venue }},</i> {{ item.year }}<br />

			{% if pdf_file_exists == "true" %}
				<a href="{{ pdf_file }}">[pdf]</a> 
			{% endif %}

			{% if item.arxiv-link %}
				<a href="{{ item.arxiv-link }}">[arXiv link]</a> 
			{% endif %}
		</div>
	</div>
	{% endfor %}
{% endfor %}
</div>

