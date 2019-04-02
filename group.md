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

<div><!-- class="container">-->
{% assign grouped_people = site.data.group.people | group_by:"category" %}
{% for group in grouped_people %}
	{% assign skip=false %}
	{% case group.name %}
		{% when "pgr" %}
		<h2 class="">PhD and EngD Students</h2>
		{% else %}
		{% assign skip=true %}
	{% endcase %}
	{% unless skip %}
		<div class="row">
		{% for item in group.items %}
		<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 mb-2">
		<div class="card mx-auto" style="max-width: 250px;">
		  	{% if item.id > "" %}
				{% capture image_file %}{{ site.baseurl }}/assets/images/mugshots/{{ item.id }}.jpg{% endcapture %}
				<img src="{{ image_file }}" class="card-img-top" alt="{{ item.id }}" style="width:100%">
			{% endif %}
		  <div class="card-body">	
		    <h5 class="card-title">{{ item.name }}</h5>
		    <p class="card-text">{{ item.topic }}</p>
		    <!--<h6 class="card-subtitle mb-2 text-muted">Links</h6>-->
		    <a href="{{ item.url }}" class="card-link">website</a>
		  </div>
		</div>
		</div>
		{% endfor %}
		</div>
	{% endunless %}
{% endfor %}
</div>
