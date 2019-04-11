---
layout: default_sparse
title: People
permalink: /people/
---

# Faculty

<div class="container no-gutters pl-0 pr-0">
<div class="row no-gutters">
{% assign sorted_grouped_people = site.data.people.faculty | sort: "name" %}
{% for person in sorted_grouped_people %}
    <div class="mb-2 ml-1 mr-1 mx-auto mx-sm-left col-xs-auto">
    <div class="mb-3" style="width: 22rem; height: 8rem;">
      <div class="p-0">
        {% assign image_file_exists="false" %}
        {% if person.img > "" %}
            {% capture image_file %}{{ site.baseurl }}/assets/people/{{ person.img }}{% endcapture %}
            {% capture image_file_exists %}{% file_exists {{ image_file }} %}{% endcapture %}
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


# FOO

<div class="container no-gutters pl-0 pr-0">
<div class="row no-gutters">
{% assign sorted_grouped_people = site.data.people.faculty | sort: "name" %}
{% for person in sorted_grouped_people %}
    <div class="mb-2 ml-1 mr-1 mx-auto mx-sm-left col-xs-auto">
    <div class="card bg-light mb-3" style="max-width: 18rem;">
      <div class="card-header">
        <a href="{{ person.url }}"><h5 class="card-title mb-0">{{ person.name }}</h5></a>
      </div>
      <div class="card-body p-0">
        {% assign image_file_exists="false" %}
        {% if person.img > "" %}
            {% capture image_file %}{{ site.baseurl }}/assets/people/{{ person.img }}{% endcapture %}
            {% capture image_file_exists %}{% file_exists {{ image_file }} %}{% endcapture %}
        {% endif %}
        {% if image_file_exists == "true" %}
            <img src="{{ image_file }}" class="pr-1" alt="{{ person.name }}" style="width:100px; float: left;">
        {% else %}
            <img src="{{ site.baseurl }}/assets/images/mugshots/missing.jpg" class="pr-1" alt="{{ person.name }}" style="width:100px; float: left;">
        {% endif %}
        <div>
            <p class="card-text p-1">{{ person.topics }}</p>
        </div>
      </div>
      <div class="card-body">
        <div class="row p-0">
            <div class="col-6">
                {% assign image_file_exists="false" %}
                {% if person.img > "" %}
                    {% capture image_file %}{{ site.baseurl }}/assets/people/{{ person.img }}{% endcapture %}
                    {% capture image_file_exists %}{% file_exists {{ image_file }} %}{% endcapture %}
                {% endif %}
                {% if image_file_exists == "true" %}
                    <img src="{{ image_file }}" class="card-img-top" alt="{{ person.name }}" style="width:100%">
                {% else %}
                    <img src="{{ site.baseurl }}/assets/images/mugshots/missing.jpg" class="card-img-top" alt="{{ person.name }}" style="width:100%">
                {% endif %}
            </div>
            <div class="col-6">
                <p class="card-text">{{ person.topics }}</p>
            </div>
        </div>
      </div>
    </div>
    </div>
{% endfor %}
</div>
</div>

# Take 2

<div class="container no-gutters pl-0 pr-0">
<div class="row no-gutters">
{% assign sorted_grouped_people = site.data.people.faculty | sort: "name" %}
{% for person in sorted_grouped_people %}
    <!--<p>{{ person.name }}</p>
    {% assign name_parts = person.name | split: " " %}
    {{ name_parts | reverse | join: " " }}
    <p>{{ name_parts }}</p>-->
    <div class="mb-2 ml-1 mr-1 mx-auto mx-sm-left col-xs-auto"><!-- col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-3">-->
    <div class="card mx-auto" style="width: 150px;">
        <a data-toggle="collapse" href="#collapse_id_{{ person.name | replace: " ", "" }}">
        <div class="hovereffect">
            {% assign image_file_exists="false" %}
            {% if person.img > "" %}
                {% capture image_file %}{{ site.baseurl }}/assets/people/{{ person.img }}{% endcapture %}
                {% capture image_file_exists %}{% file_exists {{ image_file }} %}{% endcapture %}
            {% endif %}
            {% if image_file_exists == "true" %}
                <img src="{{ image_file }}" class="card-img-top" alt="{{ person.name }}" style="width:100%">
            {% else %}
                <img src="{{ site.baseurl }}/assets/images/mugshots/missing.jpg" class="card-img-top" alt="{{ person.name }}" style="width:100%">
            {% endif %}
            <div class="overlay">
                <h2 class="overlay-text">{{ person.name }}</h2>
            </div>
        </div>
        </a>
      <div class="collapse" id="collapse_id_{{ person.name | replace: " ", "" }}">
      <div class="card-body">   
        <h5 class="card-title mb-1">{{ person.name }}</h5>
        <p class="text-muted mb-2 mt-0">{{ person.location }}</p>
        <p class="card-text mb-2 mt-0">{{ person.topic }}</p>
        {% if person.topics %}
            <p class=" mb-1 mt-0"><small class="card-text text-muted">{{ person.topics }}</small></p>
        {% endif %}
        <!--<h6 class="card-subtitle mb-2 text-muted">Links</h6>-->
        {% if person.url > "" %}
            <i class="fas fa-home fa-1x" style="color: gray;"></i> <a href="{{ person.url }}" class="card-link">website</a>
        {% endif %}
        {% if person.github %}
            &nbsp;&nbsp;<i class="fab fa-github fa-1x" style="color: gray;"></i> <a href="{{ person.github }}" class="card-link">github</a>
        {% endif %}
      </div>
      </div>
    </div>
    </div>
{% endfor %}
</div>
</div>








## External Collaborators

I have a long-term collaboration with [Dr Carl Henrik Ek](http://carlhenrik.com) down the road at the University of Bristol and we co-supervise a number of PhD students between Bath and Bristol. 

In addition, I also have a long-term collaboration with [Prof. Gabriel Brostow](http://www0.cs.ucl.ac.uk/staff/g.brostow/) and [Prof. Lourdes Agapito](http://www0.cs.ucl.ac.uk/staff/l.agapito/) at University College London where I am an Honorary Associate Professor.

<div class="container no-gutters pl-0 pr-0">
{% assign grouped_people = site.data.group.people | group_by:"category" %}
{% assign sorted_grouped_people = grouped_people | sort: "name" %}
{% for group in sorted_grouped_people %}
    {% assign skip=false %}
    {% case group.name %}
        {% when "pgr" %}
        <h2 class="pb-2">PhD and EngD Students</h2>
        {% when "pdra" %}
        <h2 class="pb-2">Post-Doctoral Researchers</h2>
        {% else %}
        {% assign skip=true %}
    {% endcase %}
    {% unless skip %}
        <div class="row no-gutters"><!-- no-gutters mx-auto">-->
        {% assign sorted_by_name = group.items | sort: "name" %}
        {% for item in sorted_by_name %}
        <div class="mb-2 ml-1 mr-1 mx-auto mx-sm-left col-xs-auto"><!-- col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-3">-->
        <div class="card mx-auto" style="max-width: 200px;">
            <a data-toggle="collapse" href="#collapse_id_{{ item.id }}">
            <div class="hovereffect">
                {% assign image_file_exists="false" %}
                {% if item.id > "" %}
                    {% capture image_file %}{{ site.baseurl }}/assets/images/mugshots/{{ item.id }}.jpg{% endcapture %}
                    {% capture image_file_exists %}{% file_exists {{ image_file }} %}{% endcapture %}
                {% endif %}
                {% if image_file_exists == "true" %}
                    <img src="{{ image_file }}" class="card-img-top" alt="{{ item.id }}" style="width:100%">
                {% else %}
                    <img src="{{ site.baseurl }}/assets/images/mugshots/missing.jpg" class="card-img-top" alt="{{ item.name }}" style="width:100%">
                {% endif %}
                <div class="overlay">
                    <h2 class="overlay-text">{{ item.name }}</h2>
                </div>
            </div>
            </a>
          <div class="collapse" id="collapse_id_{{ item.id }}">
          <div class="card-body">   
            <h5 class="card-title mb-1">{{ item.name }}</h5>
            <p class="text-muted mb-2 mt-0">{{ item.location }}</p>
            <p class="card-text mb-2 mt-0">{{ item.topic }}</p>
            {% if item.notes %}
                <p class=" mb-1 mt-0"><small class="card-text text-muted">{{ item.notes }}</small></p>
            {% endif %}
            <!--<h6 class="card-subtitle mb-2 text-muted">Links</h6>-->
            {% if item.url > "" %}
                <i class="fas fa-home fa-1x" style="color: gray;"></i> <a href="{{ item.url }}" class="card-link">website</a>
            {% endif %}
            {% if item.github %}
                &nbsp;&nbsp;<i class="fab fa-github fa-1x" style="color: gray;"></i> <a href="{{ item.github }}" class="card-link">github</a>
            {% endif %}
          </div>
          </div>
        </div>
        </div>
        {% endfor %}
        </div>
    {% endunless %}
{% endfor %}
</div>
