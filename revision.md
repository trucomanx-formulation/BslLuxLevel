# Ref: JOLT_2019_101
# Title: Illumination Level Independence in the Dynamic Laser Speckle Analysis
# Journal: Optics and Laser Technology

# Dear Dr. Pujaico Rivera,

# Thank you for submitting your manuscript to Optics and Laser Technology. I have completed the review of your manuscript and a summary is appended below. The reviewers recommend reconsideration of your paper following major revision. I invite you to resubmit your manuscript after addressing all reviewer comments.

# When resubmitting your manuscript, please carefully consider all issues mentioned in the reviewers' comments, outline every change made point by point, and provide suitable rebuttals for any comments not addressed.

# To submit your revised manuscript:

# Log into EVISE® at: http://www.evise.com/evise/faces/pages/navigation/NavController.jspx?JRNL_ACR=JOLT
# Locate your manuscript under the header 'My Submissions that need Revisions' on your 'My Author Tasks' view
# Click on 'Agree to Revise'
# Make the required edits
# Click on 'Complete Submission' to approve
# What happens next?
# After you approve your submission preview you will receive a notification that the submission is complete. To track the status of your paper # throughout the editorial process, log in to Evise® at: http://www.evise.com/evise/faces/pages/navigation/NavController.jspx?JRNL_ACR=JOLT.

# Enrich your article to present your research with maximum impact. This journal supports the following Content Innovations: 
# Data in Brief (optional)

# We invite you to convert your supplementary data (or a part of it) into a Data in Brief article. Data in Brief articles are descriptions of the data and associated metadata which are normally buried in supplementary material. They are actively reviewed, curated, formatted, indexed, given a DOI and freely available to all upon publication. Data in Brief should be uploaded with your revised manuscript directly to Optics and Laser Technology. If your Optics and Laser Technology research article is accepted, your Data in Brief article will automatically be transferred over to our new, fully Open Access journal, Data in Brief, where it will be editorially reviewed and published as a separate data article upon acceptance. The Open Access fee for Data in Brief is $500. 

# Please just fill in the template found here:
# http://www.elsevier.com/inca/publications/misc/dib_data%20article%20template_for%20other%20journals.docx. Then, place all Data in Brief files (whichever supplementary files you would like to include as well as your completed Data in Brief template) into a .zip file and upload this as a Data in Brief item alongside your Optics and Laser Technology revised manuscript. Note that only this Data in Brief item will be transferred over to Data in Brief, so ensure all of your relevant Data in Brief documents are zipped into a single file. Also, make sure you change references to supplementary material in your Optics and Laser Technology manuscript to reference the Data in Brief article where appropriate. 

# Questions? Please send your inquiries to dib@elsevier.com. Example Data in Brief can be found here:
# http://www.sciencedirect.com/science/journal/23523409

# I look forward to receiving your revised manuscript as soon as possible.

# Kind regards,

# Professor Schmidt
# Receiving Editor
# Optics and Laser Technology

# Comments from the editors and reviewers:
# -Reviewer 1

#   - See also files attached.

# In the manuscript titled Illumination Level Independence in the Dynamic Laser Speckle Analysis
# the authors pretend to analyze the influence of illumination level on the determination of a dynamic
# speckle activity index. In particular, they use an index based on averaged standard deviation of
# gray levels. A decomposition of the signal in frequency ranges is also performed, from which au-
# thors conclude that (in the case of a dynamic sample) higher frequency components of the dynamic
# speckle signal are less influenced by illumination level. However, while analyzing a static sample (a
# piece of paper) the standard deviation increases for higher illumination levels in the range of higher
# frequencies.

#In my opinion the manuscript has important flaws. The first of them has to do with the English


# style; article needs a thorough English revision. There are unclear statements/descriptions and
# grammar/writing errors. Besides this, from my humble viewpoint, the implemented methodological
# approach is not correct and neither is the order of presentation of results. Therefore, in its present
# form the work is not suitable for publication and would require major revisions. Despite this, the
# research topic is really interesting and the contributions which authors could bring to the scientific
# and technological knowledge in this field are of considerable importance. In this way, I strongly
# suggest authors to revise and improve this work.

# Below I point several issues that authors should attend/improve/explain in more detail or even
# justify more rigorously. I’ve also attached a marked PDF with some (not all, due to further English
# revisions needed) recommendations regarding writing.

#1. I wonder why the measurements performed on paper are not carried out with the same sampling
#rate as for the drying ink. I imagine this should have an impact on the analysis of frequency
#components.

---- The sampling frequency used in the analysis of each test, 
it was selected  trying to achieve the best speed of sampling to observe each phenomenon. 
The purpose of these two tests is to observe the behavior of the indices in two cases; 
one with a homogeneous level of activity in space and time, and another with a dynamic activity.
Thus, given that the ink drying test and the paper activity test are independent events, 
without comparison between them self, your sampling frequencies are different.

#2. When defining σ and μ matrices [Eqs. (1) y (2)] authors should clarify that both are matrices
#and involved operations should be performed element by element (as is detailed in Ref. [11]).

[corrigido]

#3. In Fig. 7 I recommend not to use LEFT and RIGHT to differentiate the zones with different
#illumination levels. Instead, use LOW and HIGH or something like that, in accordance with
#the explanations and description in the text. The text “in time 0-0.3333”, and so on, is neither
#adequate. Use frequency ranges instead, as in the text, like [0,Fs/2], and so on.

[corrigido]

#4. The paper sample is supposedly static and the obtained dynamic speckle index should represent
#the noise baseline of the experimental setup. In turn, the drying ink is the most used test sample
#for dynamic speckle measurements. In this context, I would expect to see a comparison of the
#obtained curves as a function of time for the paper and for the drying ink, and both under high
#and low illumination levels. However, the authors performed not only a different data analysis
#for the paper than for the drying ink but also the neutral density filter is removed for the paper
#measurements, so it is illuminated with a rather homogeneous beam (although it has an elliptic
#shape due to the typical spherical wavefront used and the illumination angle). Thus, authors
#leave aside this very important comparison. Taking this into account, I think it is more logical
#to present first the measurements for the paper and then those for the drying ink.


---- Even if the activity level of a paper piece, 
it  is considered as noise in the context of other tests, where takes place over it, 
a process of greater activity and variant in time and space. 
The activity analysis of a piece of paper, 
that for this test we consider approximately homogeneous in its characteristics over time and space,
will show us  the effect of a unique parameter, the light intensity variation,  
on the dynamic speckle analysis.

---- The activity level analysis in the  ink drying process has as objective  analyze the behavior of dynamic speckle index, 
in the context of a process that change your characteristic in the time. 

#5. The illumination level determines somehow the dynamic range of the grayscale that results from
#the inferferences giving rise to the speckle pattern. The minimum gray level (which correspond
#to a black dot or a minimum of intensity in the speckle pattern) is fixed by the base noise
#level of the experimental setup. Meanwhile, the maximum gray level that can be measured
#(which corresponds to a bright dot or maximum of intensity in the speckle pattern) is directly
#determined by illumination level. The higher the illumination level the higher the maximum
#gray level one can measure. With this in mind, how do authors explain the fact that there are
#no variations in the standard deviation (used as speckle activity index)? A priori it is expected
#that a greater dynamic range (higher illumination level) would yield a greater dispersion and,
#therefore, a higher standard deviation in obtained gray levels.

---- In the analysis, the minimum grayscale value, 
it is fixed by the observable minimum light by the camera or the minimum speckle light intensity in the analyzed material.
In the case of paper piece test, we consider that no material is completely inert, 
and consequently, 
a dynamic speckle analysis will show us as the speckle light intensity variation can be interpret as the sample activity level or the set default level noise in the test.
In the case of paper piece test, 
we will interest know the first case, 
the effect in the speckle light intensity occasioned by  laser light intensity variation.
By other side, the maximum grayscale value, 
it is fixed by the observable maximum light by the camera or the maximum speckle light intensity in the analyzed material.
the greater the laser illumination level , the greater the range of speckle light intensity variation of each pixel analyzed.
But, by the analyzes shown in Figures 7 and 9,
we can theorize that this augmentative effect of the dynamic range in the speckle, acts predominantly on speckle signals with low frequency components, and in smaller predominance on speckle signals with high frequency components. 
This hypothesis is supported by other works with similar results [11],
where the temporal speckle mean matrix show information about the surface of sample and laser illumination level, and the temporal speckle deviation matrix show information of material inside at different levels and in less proportion the information of the laser illumination level.
Given that the mean value show information of zero frequency component in the signal, and the standard deviation  show information of non-zero frequency component.
We can make a parallel, with the results obtained in the present work,
and to indicate that the speckle signals with components in frequency with greater value are less affected in their dynamic range by the variation of the laser light intensity.

#6. Authors analyze the dependency of a dynamic speckle index with the illumination level of a
#sample that is homogeneously illuminated (i.e. without density filter) and also static. I’d like
#to know why the same data analysis that was performed for the drying ink was not performed
#for the piece of paper. Anyone would like to see that comparison, as I stated before.

[corrigido]
---- It is the same answer as theme 4.

#7. In Figs. 9(a)–(d), the Lp vs. μp curves are identical, for all frequency ranges. How do you
#explain this? Logically this should not be the case and I suppose there has been some mistake
#in data presentation.

---- Lp is the histogram of the values in temporal speckle mean matrix, 
given that the mean value is zero to any frequency band without the zero frequency,
in the are figures are showed the Lp values of the complete frequency band, 
with the objective of to have a reference of the illumination level and the number of pixels involved in the analysis.

#8. In my opinion, the description of the procedures and methods employed is not clear enough.
#Moreover, I consider that the employed methodology is not adequate. It is really important
#and relevant to measure the speckle activity of the paper under the same conditions as for the
#drying ink (i.e. using the neutral density filter in both cases, so as to have two differentiated
#illumination levels). In this way the expected comparison between a static and a dynamic
#sample could be performed, which would provide much more information about the influence
#of illumination level in the dynamic speckle activity. This would result in major revisions of
#the manuscript, which in my opinion are worth doing.

[corrigido]
---- It is the same answer as theme 4 and 5.

9. It is not clear how do authors interpret the statistical parameters σp and ep and how do they
relate them to the variations of illumination level. At first place because those parameters are
not used for a dynamic sample (drying ink) with clearly differentiated illumination level zones
and, second, because in the case of the static sample (paper) the variations of illumination level
are intrinsically due to the shape of the illuminating beam and also to speckle. In other words,
it is not clear how the variations in the speckle intensity distribution are decoupled from the
intrinsic variations of illumination levels of the wavefront along the recorded image.

#10. The manuscript’s title leads to think that the independence of the speckle activity index with
#illumination level is going to be demonstrated, and this does not seem to be the case. In fact,
#from the performed measurements it is observed that the standard deviation (used as speckle
#activity index) varies for different frequency ranges. In any case I suggest changing the title to
#something like Analysis of illumination dependency . . . .

[corrigido]

11. English writing should be thoroughly revised.



-Reviewer 2

  -
#The paper considers the important issue of the influence of non-uniform illumination on the accuracy of data processing in dynamic speckle analysis. This issue arises as a consequence of the signal dependent nature of speckle fluctuations. The authors consider building a temporal standard deviation matrix as a measure of the speed of the monitored process and more specifically the build three matrices by filtering the captured images in three frequency bands. The bands are formed by dividing the spectrum of temporal intensity fluctuations into three equal parts. Results of two experiments are processed - monitoring of ink drying under illumination with two intensity levels and observing fluctuations of a steady paper under non-uniform illumination. The conclusion is that the fastest fluctuations are affected in the least degree by the intensity level.
I would like to make the following comments:
1.) The study in the paper may benefit a lot if the authors test their processing approach by simulation of the changing in time speckle patterns under non-uniform illumination.
2.) The authors should comment the approaches proposed by other authors for processing of dynamic speckle data that does not depend on the illumination. They must compare those approach with their method. For example, they may refer to
Fujii, H. , Nohira, K., Yamamoto, Y., Ikawa, H. and Ohura, T., “Evaluation of blood flow by laser speckle imaging sensing Part I,” Appl. Opt. 26 (24), 5321–5325 (1987).
Stoykova, E., Ivanov, B., Nikova, T., “Correlation-based pointwise processing of dynamic speckle patterns,” Opt. Lett. 39 (1), 115-118 (2014).

3.) The paper should be rewritten to remove typos and to improve the English language. The abstract should be entirely edited. The Introduction must include discussion of results of different authors, so the list of references is too short.
As the topic treated in the paper is very interesting, it could be accepted after major revision.

#MethodsX (optional)

#We invite you to submit a method article alongside your research article. This is an opportunity to get full credit for the time and money you have spent on developing research methods, and to increase the visibility and impact of your work.

#If your research article is accepted, your method article will be automatically transferred over to the open access journal, MethodsX, where it will be editorially reviewed and published as a separate method article upon acceptance. Both articles will be linked on ScienceDirect. 

#Please use the MethodsX template available here when preparing your article: https://www.elsevier.com/MethodsX-template. Open access fees apply.

#Have questions or need assistance?
#For further assistance, please visit our Customer Support site. Here you can search for solutions on a range of topics, find answers to #frequently asked questions, and learn more about EVISE® via interactive tutorials. You can also talk 24/5 to our customer support team by phone and 24/7 by live chat and email.

-------------------------------------------------------------

Copyright © 2018 Elsevier B.V. | Privacy Policy

Elsevier B.V., Radarweg 29, 1043 NX Amsterdam, The Netherlands, Reg. No. 33156677.

