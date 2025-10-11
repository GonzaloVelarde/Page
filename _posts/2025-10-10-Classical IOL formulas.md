---
layout: post
title: Classical formulas
categories: optics
---

## Introduction

The development of intraocular lens (IOL) power calculation formulas represents one of the key milestones in modern cataract surgery. The earliest published IOL power formula was by Fyodorov (1967) ([PubMed](https://pubmed.ncbi.nlm.nih.gov/4951572/)), in collaboration with Kolinko / Kolonko (Russian contribution). Later, Colenbrander (1972) introduced his own theoretical formula, which served as a bridge toward later developments.

Subsequently, empirical and regression-based formulas evolved into hybrid theoretical models that combined geometric optics with clinical data refinement.  
Among the best-known and fully published “classical” formulas are [**SRK/T**](https://pubmed.ncbi.nlm.nih.gov/2355322/), [**Holladay I**](https://pubmed.ncbi.nlm.nih.gov/3339543/), [**Haigis**](https://link.springer.com/chapter/10.1007/978-3-031-50666-6_41), and [**Hoffer Q**](https://pubmed.ncbi.nlm.nih.gov/8271165/).  

I will not mention more authors because the list is extensive, but a special mention to Dr. Olsen is mandatory — he has done an incredible job publishing on this topic throughout the years.  

These formulas are particularly relevant for those beginning to study ocular biometry, as they are fully published and transparent, allowing a deep understanding of how each step in the calculation contributes to the final IOL power estimation.  
The principle behind these formulas is simple: we need to estimate the final position of the intraocular lens (ELP) and know the corneal power (D) and the axial length.

---

### Estimated lens position (ELP) calculation

Each formula predicts ELP differently, reflecting how the postoperative IOL position correlates with preoperative anatomical parameters such as corneal curvature, anterior chamber depth, and axial length. Each author found their own way to calculate the ELP:

- **SRK/T**: Combines theoretical optics with empirical regression for ELP.  
- **Holladay I**: Uses corneal height and axial length to estimate ELP.  
- **Haigis**: Introduces a three-constant model (a0, a1, a2) directly linked to ACD and AL.  
- **Hoffer Q**: Designed for short eyes, using an adjusted corneal factor and axial length.

---

### Vergence formula

Once the lens position is estimated, most formulas (I am not entirely sure about SRK/T) apply a vergence equation based on paraxial optics to compute the IOL power required for emmetropia. 

![Classic formulas diagram](https://static.wixstatic.com/media/6454f7_aaf1ea8d6c00406db4ca42a52281eede~mv2.png)

Each formula defines the corneal power using a different refractive index.  
At that time, the posterior corneal surface was impossible to measure — yet it does contribute optically.  
To solve this, many authors used the anterior corneal radius combined with a *fictitious refractive index* (1.3375).  

It is fascinating how these classical formulas have a theoretical basis, used an inaccurate refractive index, and still work incredibly well.

---

## Let's do some calculations

#### Data generation & emmetropia IOLs calculation

The following table simulates 15 example eyes grouped by axial length (AL).  
It can be used to test and compare the output of different classical formulas.

| Eye | Km (D) | ACD (mm) | AL (mm) |
|-----|--------|----------|---------|
|Eye#1 | 45.82 |3.22 | 21.33 |
|Eye#2 | 43.41 |2.73 | 21.91 |
|Eye#3 | 45.64 |2.44 | 21.73 |
|Eye#4 | 44.64 |2.25 | 21.46 |
|Eye#5 | 44.67 |3.54 | 23.74 |
|Eye#6 | 42.98 |3.47 | 23.56 |
|Eye#7 | 44.76 |2.89 | 22.94 |
|Eye#8 | 43.01 |2.71 | 23.23 |
|Eye#9 | 44.60 |3.78 | 25.05 |
|Eye#10 |43.29 |3.68 |26.13 |
|Eye#11 |44.87 |3.42 |25.11 |
|Eye#12 |41.61 |3.24 |25.42 |

We need equivalent constants to make a fair comparison.  
Following Professor Wolfgang Haigis’ directions ([Constant conversion](http://ocusoft.de/scripts2/ciolc.php)):

| A-Constant (SRK/T) | pACD (Hoffer Q) | Surgeon Factor (Holladay I) | a0 (Haigis) |
|--------------------|----------------|-----------------------------|-------------|
| 118.90 | 5.46 | 1.67 | 1.243 |

Given that, we can compute the emmetropic IOL power for each eye: 

![Formulas image]({{ '/assets/images/ClassicFormulas.jpg' | relative_url }})

This figure reveals something known but important:  
these classical formulas produce similar results.  
The major differences appear at the extremes — very short and very long eyes.

---

## Formula constants and optimization process

All you need to know about IOL constants can be found at [ULIB](http://ocusoft.de/ulib/index.htm) or [IOLCon](https://iolcon.org/).

Each formula includes one or more constants (e.g., A-constant, pACD, a0–a2) that must be **optimized** for a specific IOL model and surgical technique.  
Modern datasets allow constant optimization by **back-calculating the refractive error** and minimizing the mean prediction error.  
For those interested in this topic, I highly recommend the work of [Dr. Langenbucher](https://pubmed.ncbi.nlm.nih.gov/33530082/) and [Dr. Gatinel](https://pubmed.ncbi.nlm.nih.gov/38837172/).

---

## Final thoughts

Classical IOL formulas remain a cornerstone of optical biometry.  
Their transparent, fully published design makes them an essential starting point for anyone learning how theoretical and empirical approaches combine to achieve accurate IOL power prediction.
