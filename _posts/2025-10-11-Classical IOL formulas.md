---
layout: post
title: Classical formulas
categories: optics
---
## Introduction

The development of intraocular lens (IOL) power calculation formulas represents one of the key milestones in modern cataract surgery. The earliest published IOL power formula was by Fyodorov (1967) [PubMed](https://pubmed.ncbi.nlm.nih.gov/4951572/), in collaboration with Kolinko / Kolonko (Russian contribution). Later, Colenbrander (1972) introduced his own theoretical formula, which served as a bridge toward later developments.

Later, empirical and regression-based formulas evolved into hybrid theoretical models that combined geometric optics with clinical data refinement.  
Among the best-known and fully published “classical” formulas are **SRK/T** [PubMed](https://pubmed.ncbi.nlm.nih.gov/2330872/), **Holladay I** [PubMed](https://pubmed.ncbi.nlm.nih.gov/3263209/), **Haigis** [PubMed](https://pubmed.ncbi.nlm.nih.gov/11078399/), and **Hoffer Q** [PubMed](https://pubmed.ncbi.nlm.nih.gov/8312512/).  

These formulas are particularly relevant for those beginning to study ocular biometry, as they are fully published and transparent, allowing a deep understanding of how each step in the calculation contributes to the final IOL power estimation.

## Two steps calcs

The early approach of these authors was to use vergence optics to find the exact IOL power that emmetropizes each patient. For the first time, the estimated lens positions (ELP) term appeared. 

### Estimated lens position (ELP) calculation
Each formula predicts ELP differently, reflecting how the postoperative IOL position correlates with preoperative anatomical parameters such as corneal curvature, anterior chamber depth, and axial length.

### Vergence formula
Once lens position is estimated, "all" formulas (I am not pretty sure about what SRK/T does) apply a vergence equation based on paraxial optics to compute the required IOL power for the target refraction.

## Classical formulas (SRK/T, Holladay I, Haigis, Hoffer Q)

The classical formulas aim to estimate the **effective lens position (ELP)** and apply a **vergence formula** to determine the IOL power required to achieve emmetropia.  
While they share a common goal, each model differs in how ELP is predicted:

- **SRK/T**: Combines theoretical optics with empirical regression for ELP.  
- **Holladay I**: Uses corneal height and axial length to estimate ELP.  
- **Haigis**: Introduces a 3-constant model (a0, a1, a2) directly linked to ACD and AL.  
- **Hoffer Q**: Designed for short eyes, using an adjusted corneal factor and axial length.

## Data generation & some calcs

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
|Eye#10 |43.29 | 3.68 |	26.13 |
|Eye#11 | 44.87 | 3.42 | 25.11 |
|Eye#12 | 41.61 | 3.24 | 25.42 |


We need constants equivalence to do fair calculations. Following Professor Wolfgang Haigis: [Constant conversion](http://ocusoft.de/scripts2/ciolc.php).


| A-Constand (SRK/T) | pACD (HofferQ) | Surgeon Factor (Holladay I) | a0 (Haigis) |
|--------------------|----------------|-----------------------------|-------------|
| 118.90 | 5.46 | 1.67 | 1.243 |



![Imagen_formulas]('/assets/images/ClassicFormulas.jpg')


# Formula constants and its optimization process

All you need to know about IOL constants is probably in [ULIB](http://ocusoft.de/ulib/index.htm) or [IOLcon](https://iolcon.org/)

Each formula includes one or more constants (e.g., A-constant, pACD, a0–a2) that must be **optimized** for a specific IOL model and surgical technique.  
Modern datasets allow constant optimization by **back-calculating the refractive error** and minimizing the mean prediction error.

# Conclusion

Classical IOL formulas remain a cornerstone of optical biometry.  
Their transparent, fully published design makes them an essential starting point for anyone learning how theoretical and empirical approaches combine to achieve accurate IOL power prediction.