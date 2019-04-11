---
layout: default_sparse
title: Publications
permalink: /old_publications/
---

# Publications

<!--
<div>
{% for item in site.data.publications.papers %}
	<div class="row align-items-center shadow-sm p-1 mb-3 bg-white rounded border border-light">
		<div class="col-md-3 col-xl-2 d-none d-md-block">
			<img src="{{ site.baseurl }}/assets/images/icons/{{ item.id }}.png" class="img-fluid" alt="{{ item.id }}" style="width:100%">
		</div>
		<div class="col-md-9 col-xl-10 col-sm-12">
			<b>{{ item.title }}</b>, <br class="d-none d-lg-block" />
			{{ item.authors }}, <br class="d-none d-lg-block" />
			<i>{{ item.venue }},</i> {{ item.year }}<br />
			<a href="{{ site.baseurl }}/assets/papers/{{ item.id }}.pdf">[pdf]</a> 
		</div>
	</div>
{% endfor %}
</div>
-->

<div>
{% assign grouped_papers = site.data.publications.papers | group_by:"year" %}
{% assign sorted_grouped_papers = grouped_papers | sort: "name" | reverse %}
{% for group in sorted_grouped_papers %}
	<p><b>{{ group.name }}</b></p>
	{% for item in group.items %}
		{% capture pdf_file %}{{ site.baseurl }}/assets/papers/{{ item.id }}.pdf{% endcapture %}
		{% capture pdf_file_exists %}{% file_exists {{ pdf_file }} %}{% endcapture %}

	<div class="row align-items-center shadow-sm p-1 mb-3 bg-white rounded border border-light">
		<div class="col-md-3 col-xl-2 d-none d-md-block">
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

<!--
<div>
{% for item in site.data.publications.papers %}
	<div class="media">
	  <div class="col-xs-2">
	  	<img src="{{ site.baseurl }}/assets/images/icons/{{ item.id }}.png" class="img-fluid align-self-center mr-3" alt="{{ item.id }}">
	  </div>
	  <div class="media-body">
	    <h5 class="mt-0">Center-aligned media</h5>
	    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
	    <p class="mb-0">Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
	  </div>
	</div>
{% endfor %}
</div>
-->
