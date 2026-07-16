---
layout: post
title: About toric IOLs (1)
categories: Biometry
bilingual: true
---


<div id="lang-en" markdown="1">

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

Let's follow this simple formula (lets keep it simple and forget about vertex distance, its impact could be neglected in this case)

$$\text{Residual Astigmatism} = \text{Anterior Corneal Astigmatism} + \text{Posterior Corneal Astigmatism}$$ (where a non-toric IOL is implanted)

so

$$\text{Posterior Corneal Astigmatism} = \text{Residual Astigmatism} - \text{Anterior Corneal Astigmatism}$$

From the image of this post we could elucidate (zero toric IOL row):

- EVO: expect -0.56 @ 118 of residual astigmatism. Applying the above formula, EVO uses -0.53 @ 83 of posterior corneal astigmatism.

- HofferQST did not show results for zero cylinder but a powerful insight could be found. The expected residual astigmatism is aligned with the anterior astigmatism. So with no torque, I can guess this formula using another method like (maybe) subtracting or adding power of astigmatism but on axis.

- KANE: expect -0.40 @ 123 of residual astigmatism, following the same procedure, KANE uses -0.43 @ 73 of posterior corneal astigmatism.

This is only an exercise, just for fun but, we could replicate it several times for several axes and we could experimentally replicate the algorithm of those formulas.

</div>

<div id="lang-es" style="display:none" markdown="1">

Esta mañana me encontré con una situación típica de biometría. El calculador de LIO del ESCRS se ha convertido, en mi opinión, en un estándar para el cálculo de lentes intraoculares. Es fácil de usar y muestra informes de varias fórmulas al mismo tiempo. ¡Gran idea!

Hablemos de un caso:

Lecturas del IOL Master 700:
Simk (1.3375):  *K1*: 41.98 D	*A1*: 144		*K2*:	42.56	*A2*: 54
ACD: 3.91 mm
AL:	24.97 mm

Sé que es complicado porque el astigmatismo es mínimo y se podría implantar una LIO esférica, pero al mismo tiempo, este tipo de ojos ilustran mi argumento:

LIO tórica propuesta por el calculador del ESCRS:

![Formulas image]({{ '/assets/images/Toric_IOLs_1/Toric_IOLs_results.png' | absolute_url }})

Tres fórmulas y tres ejes de implantación propuestos diferentes. Los resultados del calculador tórico de Barrett no se muestran en la imagen, pero son similares a los de KANE (algo alrededor de 32 grados).

**¿Qué está pasando aquí?**

Las mentes atentas deberían fijarse en la anotación SimK de arriba. Esto es (casi) todo: el cálculo de la potencia corneal. En el campo de la oftalmología, tenemos una larga historia con este problema. El índice de refracción corneal ficticio, inventado para compensar la potencia corneal posterior, es una práctica diaria en biometría. Déjame explicarlo:

índice del aire = 1

índice corneal = 1.376

índice acuoso = 1.336

$$\text{Potencia Corneal} = \text{Potencia Corneal Anterior} + \text{Potencia Corneal Posterior}$$

$$\text{Potencia Corneal Anterior} = \frac{1000 \times (1.376 - 1)}{\text{Radio Anterior (mm)}}$$

$$\text{Potencia Corneal Posterior} = \frac{1000 \times (1.336 - 1.376)}{\text{Radio Posterior (mm)}}$$

Como el índice de refracción del humor acuoso es menor que el índice corneal, esta segunda superficie tiene potencia dióptrica negativa. Por tanto, la superficie corneal posterior resta potencia a la superficie anterior. Pero la pregunta era: ¿cuánto? La estrategia fue usar un índice de refracción corneal más bajo (ficticio) para utilizar el radio corneal anterior dando menos potencia. Eso encaja con los resultados experimentales y compensa el hecho de que la capa corneal posterior no podía medirse. Algunos autores fijaron ese índice ficticio en 1,3375 y otros en 1,332, lo que resulta en diferentes potencias corneales totales.

En el ejemplo anterior hablábamos de una potencia esférica (igual en cualquier meridiano), pero si comparamos la córnea con una superficie tórica (que no es su forma definitiva) tenemos diferencias no solo en potencia sino también en términos direccionales (eje del astigmatismo). Lo que ocurre en la imagen es que EVO, HofferQST y KANE tienen valores diferentes para el astigmatismo corneal posterior y, como consecuencia, muestran diferencias en el astigmatismo neto. Esas fórmulas tienen un mecanismo para mitigar el astigmatismo corneal posterior y esos algoritmos se basan en el astigmatismo de la córnea anterior. Por ejemplo, en ojos con astigmatismo a favor de la regla (WTR), el astigmatismo posterior está alineado y el astigmatismo neto es 0,3 D menos que el astigmatismo corneal anterior (esto es solo una estimación). Esos algoritmos están entrenados con grandes bases de datos (esperemos) de parámetros corneales. Cuanto mayor es el volumen de datos, más homogéneos son los resultados y menos diferencias encontrarás si repites el experimento. Las diferencias observadas en ojos con astigmatismo oblicuo son llamativas. Al menos una de estas fórmulas debe estar prediciendo incorrectamente el astigmatismo corneal posterior.

Desde el punto de vista óptico no es gran cosa. Las fórmulas gaussianas pueden integrar ambas potencias (anterior y posterior) y dar una potencia corneal teórica en cada meridiano, pero por alguna razón, los resultados de predecir y medir la superficie posterior [tienen resultados similares](https://pubmed.ncbi.nlm.nih.gov/35916540/). Las fórmulas ópticas tienen siglos de fiabilidad demostrada, pero ¿tenemos lecturas fiables de la queratometría posterior?

El cálculo vectorial es una herramienta sencilla pero poderosa y creo que puede ser interesante analizar este caso concreto:

Tenemos un astigmatismo anterior (1,367) de -0,63 D @ 144

Sigamos esta fórmula sencilla (simplifiquemos y olvidemos la distancia al vértice, su impacto puede despreciarse en este caso):

$$\text{Astigmatismo Residual} = \text{Astigmatismo Corneal Anterior} + \text{Astigmatismo Corneal Posterior}$$ (donde se implanta una LIO no tórica)

es decir

$$\text{Astigmatismo Corneal Posterior} = \text{Astigmatismo Residual} - \text{Astigmatismo Corneal Anterior}$$

A partir de la imagen de este post podemos deducir (fila de LIO de cero cilindro):

- EVO: espera -0,56 @ 118 de astigmatismo residual. Aplicando la fórmula anterior, EVO utiliza -0,53 @ 83 de astigmatismo corneal posterior.

- HofferQST no mostró resultados para cero cilindro, pero se puede extraer una conclusión interesante. El astigmatismo residual esperado está alineado con el astigmatismo anterior. Sin torsión, puedo deducir que esta fórmula utiliza otro método como (quizás) restar o sumar potencia del astigmatismo en el mismo eje.

- KANE: espera -0,40 @ 123 de astigmatismo residual. Siguiendo el mismo procedimiento, KANE utiliza -0,43 @ 73 de astigmatismo corneal posterior.

Esto es solo un ejercicio, simplemente por diversión, pero podríamos replicarlo varias veces para varios ejes y replicar experimentalmente el algoritmo de esas fórmulas.

</div>