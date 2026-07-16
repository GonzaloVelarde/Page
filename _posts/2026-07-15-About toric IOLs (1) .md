---
layout: post
title: About toric IOLs (1)
categories: Biometry
---


I came across a typical biometry situation this morning. The ESCRS IOL calculator has become a standard in my opinion for calculating intraocular lenses. It is easy to use and shows reports from several formulas at the same time. Great idea!

Let's talk about a case:

IOL Master 700 readings:
Simk (1.3375):  *K1*: 41.98 D	*A1*: 144		*K2*:	42.56	*A2*: 54
ACD: 3.91 mm
AL:	24.97 mm

I know that's tricky because the astigmatism is minimal and a spherical IOL could be implanted, but at the same time, these kinds of eyes make my point:

Toric IOL proposed by ESCRS suite calculator:

![Formulas image]({{ '/assets/images/Toric_IOLs_1/Toric_IOLs_results.png' | absolute_url }})

Three formulas and three different proposed axes of implantation. The Barrett toric calculator results are not shown in the picture but are similar to KANE's (something around 32 degrees)

**What's happening here?**

Keen minds should be aware of the SimK annotation above. This is (almost) the whole thing: corneal power calculation. In the field of ophthalmology, we have a long history with this issue. The fictitious corneal refractive index invented to compensate for the posterior corneal power is a daily practice in biometry. Let me break this down:

air index=1

corneal index=1.376

aqueous index=1.336

$$\text{Corneal Power} = \text{Anterior Corneal Power} + \text{Posterior Corneal Power}$$

$$\text{Anterior Corneal Power} = \frac{1000 \times (1.376 - 1)}{\text{Anterior Radius (mm)}}$$

$$\text{Posterior Corneal Power} = \frac{1000 \times (1.336 - 1.376)}{\text{Posterior Radius (mm)}}$$


As the aqueous refractive index is lower than the corneal index, this second surface power has negative dioptric power. So the posterior corneal surface is subtracting power from the anterior surface. But the question was: how much? The strategy was to use a lower corneal refractive index (fictitious) in order to use the anterior corneal radius while giving less power. That fits the experimental results and compensates for the fact that the posterior corneal layer couldn't be measured. Some authors fixed that fictitious index at 1.3375 but others at 1.332, and that results in different total corneal power.

In the example above we were discussing one spherical power (same in any meridian), but if we compare the cornea with a toric surface (which is not its ultimate form) we have differences not only in power but also in directional terms (astigmatism axis). What is happening in the picture is that EVO, HofferQST and KANE have different values for posterior corneal astigmatism and as a consequence show differences in the net astigmatism. Those formulas have a plan to mitigate the posterior corneal astigmatism and those algorithms are based on the astigmatism of the anterior cornea. For example, in those eyes with with-the-rule astigmatism (WTR), the posterior astigmatism is aligned and the net astigmatism is 0.3 less than the anterior corneal astigmatism (this is only a guess). Those algorithms are trained on large databases (hopefully) of corneal parameters. The higher volume of data you have the more homogeneous and fewer differences you will find if you repeat the experiment. The differences seen in eyes with oblique astigmatism are striking. At least one of these formulas must be predicting posterior corneal astigmatism incorrectly.

From the optical point of view it is not a big deal. The Gaussian formulas can support both (anterior and posterior) powers and give a theoretical corneal power in each meridian, but for some reason, the results of predicting and measuring the posterior surface [have similar results](https://pubmed.ncbi.nlm.nih.gov/35916540/). Optical formulas have centuries of proven reliability, so do we have reliable readings of the posterior keratometry? 

Vectorial calculation is a simple but powerful tool and I think it could be fun to analyze this particular case:

We have anterior astigmatism (1.367) of -0.63 D @ 144

Let's follow this simple formula:

$$\text{Residual Astigmatism} = \text{Anterior Corneal Astigmatism} + \text{Posterior Corneal Astigmatism}$$ (where a non-toric IOL is implanted)

so

$$\text{Posterior Corneal Astigmatism} = \text{Residual Astigmatism} - \text{Anterior Corneal Astigmatism}$$

From the image of this post we could elucidate (zero toric IOL row):

- EVO: expect -0.56 @ 118 of residual astigmatism. Applying the above formula, EVO uses -0.53 @ 83 of posterior corneal astigmatism.

- HofferQST did not show results for zero cylinder but a powerful insight could be found. The expected residual astigmatism is aligned with the anterior astigmatism. So with no torque, I can guess this formula using another method like (maybe) subtracting or adding power of astigmatism but on axis.

- KANE: expect -0.40 @ 123 of residual astigmatism, following the same procedure, KANE uses -0.43 @ 73 of posterior corneal astigmatism.

This is only an exercise, just for fun but, we could replicate it several times for several axes and we could experimentally replicate the algorithm of those formulas. 