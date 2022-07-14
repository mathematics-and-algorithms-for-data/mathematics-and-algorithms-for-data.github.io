---
layout: default
title: About
permalink: /about/
---

The Centre for Mathematics and Algorithms for Data at the University of Bath was established in 2019. Our aim is to facilitate dialogue between groups, especially theorists in computer science and mathematics, and develop rigour in the field. 

The Centre is currently led by

- [Neill Campbell](https://ndfcampbell.org/) (Computer Science)
- [Matthias Ehrhardt](https://mehrhardt.github.io/) (Mathematics)
- [Tony Shardlow](https://people.bath.ac.uk/tjs42/) (Mathematics)

You can contact us at    <a href="mailto:{{ site.email }}">{{ site.email }}</a>.


## Collaborators

We have a wide range of external collaborators including:

<div class="row no-gutters pt-2"><!-- no-gutters mx-auto">-->
{% assign sorted_by_name = site.data.collaborators.list | sort: "name" %}
{% for item in sorted_by_name %}
<div class="mb-1 pl-2 pr-2 mx-auto mx-sm-left col-xs-auto">
	<p><a class="btn btn-secondary" role="button" href="{{ item.url }}">{{ item.name }}</a></p>
</div>
{% endfor %}
</div>