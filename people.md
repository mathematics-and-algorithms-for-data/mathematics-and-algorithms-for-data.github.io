---
layout: default
title: People
permalink: /people/
---



<div class="container no-gutters pl-0 pr-0 pt-2">
<div class="row no-gutters">
{% assign sorted_grouped_people = site.data.people.faculty | sort: "name" %}
{% for person in sorted_grouped_people %}
    <div class="mb-2 ml-1 mr-1 mx-auto mx-sm-left col-xs-auto">
    <div class="mb-3" style="width: 22rem; height: 8rem;">
      <div class="p-0">
        {% assign image_file_exists="false" %}
        {% if person.img > "" %}
            {% capture image_file %}{{ site.baseurl }}/assets/people/{{ person.img }}{% endcapture %}
            {% assign image_file_exists="true" %}
        {% endif %}
        {% if image_file_exists == "true" %}
            <img src="{{ image_file }}" class="pr-3" alt="{{ person.name }}" style="width:100px; float: left;">
        {% else %}
            <img src="{{ site.baseurl }}/assets/images/mugshots/missing.jpg" class="pr-3" alt="{{ person.name }}" style="width:100px; float: left;">
        {% endif %}
        <div class="d-block" style="margin-left: 100px;">
            <a href="{{ person.url }}"><h5 class="card-title mb-0">{{ person.name }}</h5></a>
            <!--<p class="card-text p-1">{{ person.topics }}</p>-->
            <h6>
            {% assign topics= person.topics | split: ", " %}
            {% for topic in topics %}
            <span class="badge badge-light">{{ topic | downcase }}</span>
            {% endfor %}
            </h6>
        </div>
      </div>
    </div>
    </div>
{% endfor %}
</div>
</div>

<!-- ## Researchers

<div class="container no-gutters pl-0 pr-0 pt-2">
<div class="row">
{% assign sorted_grouped_people = site.data.people.researchers | sort: "name" %}
{% for person in sorted_grouped_people %}
<div class="col-xs-5 col-md-4 col-lg-3 mb-3">
    <h5 class="mb-0">{{ person.name }}</h5>
    <p class="m-0"><small>Working with {{ person.working }}</small></p>
</div>
{% endfor %}
</div>
</div> -->