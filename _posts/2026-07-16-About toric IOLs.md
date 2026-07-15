---
layout: post
title: About toric IOLs (1)
categories: Biometry
---

## Introduction

I came up this morning with a typical biometry situation. ESCRS IOL calculator has become a standard in my opinion to calculate intraocular lenses. It is easy to use and shows reports from several formulas at the same time. Great idea!

Let's talk about a case:

IOL Master 700 readings:
Simk (1.3375):  *K1*: 41.98 D	*A1*: 144		*K2*:	42.56	*A2*: 54
ACD: 3.91 mm
AL:	24.97 mm

I know that's tricky because the astigmatism is minimum and it could be implanted a spherical IOL but at the same time, this kind of eyes show my point:

Toric IOL proposed by ESCRS suite calculator:

![Formulas image]({{ '/assets/images/Toric_IOLs_1/Toric_IOLs_results.png' | absolute_url }})

Three formulas and three different proposed axes of implantation. Barrett toric calculator results are not in the picture but are similar to KANE (something around 32 degrees)

**¿What's happening here?**

Eagle minds should be aware of the SimK annotation above. This is (almost) the whole thing, corneal power calculation. In the ophthalmology field we have a large baggage with this point. The fictious corneal refractive index invented to compensate the posterior corneal power is a daily practice in biometry. Let me break this down:

air index=1
corneal index=1.376
aqeuous index=1.336

Corneal power = Anterior Corneal Power + Posterior Corneal power
Anterior Corneal Power = 1000*(1.376-1) / Anterior Radius (mm)
Posterior Corneal Power = 1000*(1.336-1.376) / Posterior Radius (mm)

As the aqueous refractive index in lower than the corneal index, this second surface power have negative dioptric power. So the posterior corneal surface is substracting power to the anterior surface. But the question was: how much ? The strategy was to get lower corneal refractive index (ficticious) in order to use the anterior corneal radius but giving less power. That fits the experimental results and compensate the fact that the posterior corneal layer could be measured. Some authors fixed that fictitous index in 1.3375 but others in 1.332 and thar results in differents corneal total power.

In the example above we where discussing about one spherical power (same in any meridian), but if we compare the cornea with a toric surface (which is not its ultimate form) we have diffence not only in power but also direction terms (astigmatism axis). What is happening in the picture is that EVO, HofferQST and KANE have different values for posterior corneal astigmatism and as a consecuence shows differences in the net astigmatism. Those formula have a plan to mitigate the posterior corneal astigmatism and those algorithms are based con the astigmatism of the anterior cornea. For example, in those eyes with astigmatism with the rule (WTR) the posterior astigmatism is alligned and the net astigmatism is 0.3 less than the anterior corneal astigmatism (it is only a guess). Those algorithms are trained on large databases (hope so), what is shocking is the difference between them in the case of oblique astigmatism, as the case presented in this brief post. 

From the optical point of view is not big deal. The gaussian formulas can support both (anterior and posterior) powers and give a theoretical corneal power in each meridian, but for some reason, the results of predict and measuring the posterior surface [have similar results](https://pubmed.ncbi.nlm.nih.gov/35916540/). Maths and optics couldnt be wrong so, do we have realiable readings of the posterior keratometry?
