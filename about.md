---
layout: default
title: About
permalink: /about/
---

The Centre for Mathematics and Algorithms for Data at the University of Bath was established in 2019. Our aim is to facilitate dialogue between groups, especially theorists in computer science and mathematics, and develop rigour in the field. 

The Centre is currently led by

- [Matthias Ehrhardt](https://mehrhardt.github.io/) (Mathematical Sciences)
- [Tom Haines](https://thaines.com/) (Computer Science)
- [Sandipan Roy](https://roysandipan.github.io/) (Mathematical Sciences)

You can contact us at    <a href="mailto:{{ site.email }}">{{ site.email }}</a>.


The Centre's steering committee comprises of

- [Neill Campbell](https://ndfcampbell.org/) (Computer Science)
- [Evangelos Evangelou](https://people.bath.ac.uk/ee224/) (Mathematical Sciences)
- [Tony Shardlow](https://people.bath.ac.uk/tjs42/) (Mathematical Sciences)
- [Özgür Şimşek](https://researchportal.bath.ac.uk/en/persons/%C3%B6zg%C3%BCr-%C5%9Fim%C5%9Fek) (Computer Science)
- [Theresa Smith](https://people.bath.ac.uk/trs35/) (Mathematical Sciences)


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