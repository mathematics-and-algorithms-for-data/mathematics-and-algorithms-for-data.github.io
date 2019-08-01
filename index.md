---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: Home
---

<div class="row align-items-center">
	<div class="col-xs-12 mx-auto pt-1 mb-3">
		<img class="img-fluid align-self-start" src="{{ site.baseurl }}{{ site.wordcloud }}" alt="Word Cloud">
	</div>
</div>

<!--## Statistics, Machine Learning and Numerical Analysis-->

The centre for Mathematics and Algorithms for Data (MAD) at the [University of Bath](http://www.bath.ac.uk/) is an interdisciplinary group of researchers working at the intersection of Statistics, Machine Learning and Numerical Analysis with a huge range of application areas. Data Scientists use mathematics and computation to extract useful information from data. MAD aims to facilitate dialogue between groups, especially theorists in computer science and mathematics, and develop rigour in the field.

## People

We are comprised of a set of academic faculty and research staff and students across Mathematics, Statistics and Computer Science. Details of our research interests and individual websites can be accessed [here]({{ site.baseurl }}/people/).

## Activities

We organise [seminars]({{ site.baseurl }}/seminars/) and research events based on our common interests and also host academic and industrial visitors.

## Join the Team!

<p>Would you like to join our research group? We welcome applications and enquiries:
&nbsp;&nbsp;<a class="btn btn-success d-none d-xl-inline-block" role="button" href="https://www.bath.ac.uk/topics/postgraduate-research/">Interested in a PhD?</a>
&nbsp;&nbsp;<a class="btn btn-success d-none d-xl-inline-block" role="button" href="mailto:t.shardlow@bath.ac.uk?subject=MAD">Contact us here!</a></p>
<div class="row no-gutters pt-2 d-xs-block d-xl-none">
<div class="mb-1 pl-2 pr-2 mx-auto mx-sm-left col-xs-auto">
	<p><a class="btn btn-success" role="button" href="https://www.bath.ac.uk/topics/postgraduate-research/">Interested in a PhD?</a></p>
</div>
<div class="mb-1 pl-2 pr-2 mx-auto mx-sm-left col-xs-auto">
	<p><a class="btn btn-success" role="button" href="mailto:t.shardlow@bath.ac.uk?subject=MAD">Contact us here!</a></p>
</div>
</div>

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

<!--

Welcome to my website.
I am a [Royal Society](https://royalsociety.org) Industry Fellow and work in the
[Department of Computer Science](http://www.bath.ac.uk/comp-sci/) at the
[University of Bath](http://www.bath.ac.uk/) as a Senior Lecturer (Associate Professor)
in Computer Vision, Graphics and Machine Learning.

I also hold an Honorary Associate Professor position in the Vision, Virtual Environments and Computer Graphics Group in the
[Department of Computer Science](http://www.cs.ucl.ac.uk/) at
[University College London](http://www.ucl.ac.uk/)
where I was formerly a Research Associate working with
[Jan Kautz](http://jankautz.com) and
[Simon Prince](https://scholar.google.com/citations?user=fjm67xYAAAAJ&hl=en) 
on synthesizing and editing photorealistic
visual objects funded by the [EPSRC](http://www.epsrc.ac.uk/).

My main area of research involves learning models of shape (2D and 3D) and appearance from images.
In particular, I am interested in performing this in an automatic or interactive fashion that
allows these technologies to be put to use in a variety of applications without requiring
users to have computer vision or graphics expertise. 

I am also interested in machine learning problems where data is scarce or expensive to obtain (e.g. annotations from expert clinicians) and when uncertainty in the resulting output is important (e.g. medical applications). This has led to work on unsupervised (or semi-supervised) learning with Bayesian non-parametric models, in particular Gaussian processes.


Further details may be found on my
<a href="/research/">research page</a> as well as in my <a href="/publications/">publications</a>.

-->
