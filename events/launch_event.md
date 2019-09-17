---
layout: default_sparse
title: Launch Event
permalink: /events/launch_event/
index: 0
---

<h1 style="text-align: center;" class="pb-2">MAD Launch Event</h1>

The [Center for Mathematics and Algorithms for Data (MAD)]({{ site.baseurl }}/) at the [University of Bath](http://www.bath.ac.uk) is launching! Come and join us on 13th November for a day of talks including three invited keynote speakers. 

**Registration is free, please let [Tony Shardlow](mailto:t.shardlow@bath.ac.uk) know if are coming along.**

<h4 class="pt-2">Wolfson Lecture Theatre 4W1.7, University of Bath,</h4>
<h4>Wednesday 13<sup>th</sup> November</h4>

<h4 class="pt-3">Programme:</h4>

|  |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| |
|--:||---|
|9:50am || Who's MAD?
|10:00am|| [Tim Cootes (Manchester)](https://personalpages.manchester.ac.uk/staff/timothy.f.cootes/) *"Modelling and matching deformable structures in images"* |
|10:50am|| Coffee |
|11:15am|| [Kostas Zygalakis (Edinburgh)](https://www.maths.ed.ac.uk/school-of-mathematics/people?person=506)
|12:05pm|| Lunch in the Claverton Rooms|
|2:00pm || [Allen Hart (Bath)](https://researchportal.bath.ac.uk/en/persons/allen-hart)| "*Using Echo State Networks for Time Series Prediction"*
|2:20pm || [Nadeen Khaleel (Bath)](https://researchportal.bath.ac.uk/en/persons/nadeen-khaleel)|
|2:40pm|| PhD student talk |
|3:00pm|| Coffee|
|3:30pm|| [Christophe Andrieu (Bristol)](http://www.bristol.ac.uk/maths/people/christophe-andrieu/overview.html) |
|4:20pm|| Close |

<br>

## Keynote Speakers

<h3 class="pt-2 pb-1">Prof Tim Cootes</h3>

#### Talk: Modelling and matching deformable structures in images

Many objects of interest in images can be represented as deformed versions of some average structure - for instance faces, bones and many organs in medical images. The shape of an object can be represented as the positions of a set of landmark points. By analysing how the positions of the points vary from one example to another, we can learn the mean shape and the ways in which the shape can vary.

This talk will describe methods of constructing statistical models of the variation in shape and appearance of a variety objects from annotated sets of examples.  The parameters of such models give a compact description of examples of a class, and can be used to identify individuals or to learn how appearance changes between groups.

Since accurately annotating landmarks on new images is difficult and time-consuming, automatic methods of locating such points using the models have been developed.  Particularly effective are regression-based techniques which predict the update to model parameters or landmark point positions from image features.

We will describe a powerful recent approaches using both Random Forest regression and Convolutional Neural Networks to vote for the most likely position of each model point, leading to robust and accurate model fitting.

#### Biography

Tim Cootes has a BSc in Mathematics and Physics from Exeter University (1986), and PhD in Engineering from Sheffield City Polytechnic (1991).

He began work in Computer Vision at the Department of Medical Biophysics, Manchester University in 1991. He has remained in the same group ever since, though its name has changed several times.  He was awarded an EPSRC Advanced Fellowship in 1995, and became a Lecturer in 2002.

In 2006 he became a Professor of Computer Vision within the Imaging Sciences group.

His work focuses on developing models of the appearance of objects in digital images, using statistical models to represent variation in both shape and the appearance.  These have been applied to a wide variety of problems including facial image interpretation and medical image analysis.  His work has been widely adopted - his paper on "Active Shape Models" has been cited over 8000 times.

In 2010 Prof Cootes was elected as a Fellow of the International Associate for Pattern Recognition.

In 2014 he was awarded the title of Distinguished Fellow of the British Machine Vision Association.

<h3 class="pt-2 pb-1">Prof Kostas Zygalakis</h3>

### Title: Bayesian inverse problems, prior modelling  and algorithms for  posterior sampling
Bayesian inverse problems provide a coherent mathematical and algorithmic framework that enables researchers to combine mathematical models with data. The ability to solve such inverse problems depends crucially on the efficient calculation of quantities relating to the posterior distribution, which itself requires the solution of high dimensional optimization and sampling problems. In this talk, we will study different algorithms for efficient sampling from the posterior distribution under two different prior modelling paradigms. In the first one, we  use specific non-smooth functions, such as for example the total variation norm, to model the prior. The main computational challenge in this case is  the non-smoothness of the prior which leads to "stiffness" for the corresponding stochastic differential equations that need to be discretised to perform sampling. We address this issue by using tailored stochastic numerical integrators, known as stochastic orthogonal Runge-Kutta Chebyshev (S-ROCK) methods, and show that  the corresponding algorithms are able to outperform the current state of the art methods. In the second modelling paradigm, the prior knowledge available is given in the form of training examples and we use machine learning techniques  to learn an analytic representation for the prior. The main computational challenge in this case is that the corresponding posterior distribution becomes multimodal which results in a challenging sampling problem since standard Markov Chain Monte Carlo methods (MCMC) can get stuck in different local maxima of the posterior distribution. We addess this issue, by using specifically designed MCMC methods and exhibit numerically  that this "data-driven" approach improves the perfomance in a number of different imaging tasks, such as image denoising and image deblurring.


### Biography

Konstantinos Zygalakis is a Reader in the Mathematics of Data Science at  the University of Edinburgh. He received a 5-year Diploma in Applied Mathematics and Physics from the National Technical University of Athens in 2004, and his MSc and PhD from the University of Warwick in 2005 and 2009 respectively. Before Edinbugh he   was a David Chrigton fellow at the University of Cambridge and  held  further postdoctoral positions at the University of  Oxford and the Swiss Federal Institute of Technology, Lausanne  as well as a lectureship in Applied Mathematics at the University of Southampton. His research spans a number of areas in the intersection of applied mathematics, numerical analysis, statistics and data science.  In 2011, he was awarded a Leslie Fox Prize in Numerical Analysis (IMA UK) and he is a  Fellow of the Alan Turing Institute since 2016. He has co-authored over forty research articles, as well as a graduate textbook in the Mathematics of Data Assimilation.
