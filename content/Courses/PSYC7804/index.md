---
title: "PSYC 7804: Regression With Lab"
#subtitle: "Materials for PSYC 7804"
excerpt: "A set of HTML slides for the lab portion of PSYC 7804 (graduate course). In this lab, I go over applied examples of regression-based methods and their implementation in **R**"
featured: true
date: 2025-01-01
draft: false
layout: single


links:
- icon: github
  icon_pack: fab
  name: Find code here
  url: https://github.com/quinix45/PSYC-7804-Regression-Lab-Slides
---
<center> <img src="featured-hex.png"  width="60%"> </center>

</br>
</br>

<i class="fas fa-chalkboard-teacher"> </i> **Slides:** Click to access Lab presentations. To navigate slides, use left/right arrow keys (on laptop) or swipe left/right (on tablet). The slides are created with the <a href="https://quarto.org/docs/presentations/" target="_blank" class="inline-link">quarto</a> extension of <a href="https://posit.co/download/rstudio-desktop/" target="_blank" class="inline-link">RStudio</a> and use the <a href="https://revealjs.com" target="_blank" class="inline-link">revealjs</a> framework.

<i class="fas fa-code"> </i> **Code:** Click to download raw R code that is used in the Lab slides. The code is included in a .Rmd file that is divided according to the title of each Lab slide.

<i class="fas fa-bullseye"> </i> **Activity:** Click to download Lab activity with practice questions. A Lab activity presents questions of varying difficulty related to the respective Lab.

<i class="fas fa-check"> </i> **Activity solution:** Click to download solutions to Lab activity as a .Rmd file. The solutions presented are just one of many ways to solve the activity questions.


<script>
  document.addEventListener('DOMContentLoaded', function () {
    const buttons = document.querySelectorAll('.delayed-download');

    buttons.forEach(button => {
      const availableAfter = new Date(button.dataset.availableAfter);
      const file = button.dataset.file;

      button.addEventListener('click', () => {
        const now = new Date();
        if (now >= availableAfter) {
          // Proceed with download
          const link = document.createElement('a');
          link.href = file;
          link.download = file.split('/').pop();
          document.body.appendChild(link);
          link.click();
          document.body.removeChild(link);
        } else {
          // Show alert instead
          alert(`This file will be available for download on ${availableAfter.toLocaleString()}.`);
        }
      });
    });
  });
</script>

</br>
</br>
</br>

<h3> 1. Descriptive Statistics and Plots </h3>

This Lab goes over how to import data into R, compute some descriptive statistics, and the logic and process behind creating plots with <a href="https://ggplot2.tidyverse.org" target="_blank" class="inline-link"> ggplot </a>. An in depth-explanation of QQplots is also included in the last slides. 


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 1.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 1 Code.Rmd" download="Lab 1 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-1-Activity.pdf" download="Lab 1 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 1 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>



<h3> 2. One-Predictor Regression </h3>

This Lab discusses how to interpret one-predictor regression output, how to use regression to make predictions, what residuals are, and how to run a standardized regression in R. The appendix touches upon the meaning of a regression model and the root of regression assumptions.

<span class="post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 2.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 2 Code.Rmd" download="Lab 2 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class="post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-2-Activity.pdf" download="Lab 2 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 2 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>

<h3> 3. Significance Tests and Reporting Results </h3>

This Lab discusses how to interpret one-predictor regression output, how to use regression to make predictions, what residuals are, and how to run a standardized regression in R. The appendix touches upon the meaning of a regression model and the root of regression assumptions.

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 3.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 3 Code.Rmd" download="Lab 3 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-3-Activity.pdf" download="Lab 3 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 3 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>

<h3> 4. Introduction To Two-Predictor Regression </h3>

This Lab introduces multiple regression, contrasts one-predictor and multiple regression, includes interactive 3D visualization of regression planes, and goes over <i>R</i><sup>2</sup> and the meaning of the term <i>variance explained</i>.

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 4.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 4 Code.Rmd" download="Lab 4 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-4-Activity.pdf" download="Lab 4 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 4 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>

<h3> 5. Added Variable Plots and Bootstrapping </h3>

This lab introduces added variable plots as a way of visualizing partial regression coefficients. The idea of bootstrapping and its applications in the context of linear regression are also discussed. For learning purposes, this Lab also includes raw code that details the steps to create added variable plots, as well as bootstrapped confidence intervals for <i>R</i><sup>2</sup>.

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 5.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 5 Code.Rmd" download="Lab 5 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-5-Activity.pdf" download="Lab 5 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 5 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>





<hr class="fancy"></hr>



<h3> 6. Semi-partial, Partial-correlations, and Model Comparison </h3>

This Lab introduces semi-partials and partial-correlations, and contrasts them with correlation. This lab also discusses model comparison with hierarchical regression and information criteria methods such as AIC and BIC.

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 6.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 6 Code.Rmd" download="Lab 6 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-6-Activity.pdf" download="Lab 6 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 6 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>


<hr class="fancy"></hr>

<h3> 7. Multicollinearity, Dominance Analysis, and Power </h3>

This Lab touches upon multicollinearity in linear regression and its consequences. Dominance analysis is also discussed as a method to evaluate relative importance of predictors in a regression. Power in regression and criticisms of practices related to power are discussed.

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 7.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 7 Code.Rmd" download="Lab 7 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-7-Activity.pdf" download="Lab 7 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 7 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>



<h3> 8. Quadratic regression and non-linear alternatives </h3>

This Lab goes over quadratic regression and detailed interpretations of its regression coefficients. This Lab also includes alternative methods such as piece-wise regression and splines.

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 8.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 8 Code.Rmd" download="Lab 8 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-8-Activity.pdf" download="Lab 8 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 8 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>





<hr class="fancy"></hr>

<h3> 9. Interactions Between Continuous Variables </h3> 

This Lab goes over interaction effects (AKA moderation) between continuous variables. This Lab includes interpretation of interaction effects, 3D interactive representations, simple slopes interpretations and visualizations, and Johnson-Neyman plots.

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 9.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 9 Code.Rmd" download="Lab 9 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-9-Activity.pdf" download="Lab 9 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 9 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>


<hr class="fancy"></hr>

<h3> 10. Categorical Predictors </h3> 

This Lab introduces the use of categorical predictors in linear regression. Different coding schemes for categorical predictors such as dummy coding and contrast coding are described. The equivalence of regression with categorical predictors and t-tests and ANOVAs is also discussed.

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 10.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 10 Code.Rmd" download="Lab 10 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-10-Activity.pdf" download="Lab 10 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 10 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>




<h3> 11. Interactions with Categorical Predictors </h3> 

This lab introduces Interactions involving categorical predicotrs. Methods for probing interactions between categorical and continuous predictors are discussed.

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 11.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 11 Code.Rmd" download="Lab 11 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-11-Activity.pdf" download="Lab 11 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 11 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>


<hr class="fancy"></hr>

<h3> 12. Mediation Analysis </h3> 

This lab introduces mediation analysis with path models using <a href="https://lavaan.ugent.be" target="_blank" class="inline-link">lavaan</a>. Aside from simple mediation, examples of parallel mediation and moderated mediation are also shown. 

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 12.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-12-Activity.pdf" download="Lab 12 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="https://github.com/quinix45/PSYC-7804-Regression-Lab-Slides" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 12 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>


<h3> 13. Missing Data </h3> 

This lab presents a short introduction to issues related to missing data. Missing data mechanisms, as well as consequences of missing data mishandling are discussed (e.g., bias of results). Full information maximum likelihood (FIML) is introduced as a way of handling missing data. More advanced missing data methods are briefly mentioned.

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 13.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 13 Code.Rmd" download="Lab 13 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-13-Activity.pdf" download="Lab 13 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 13 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>

<h3> 14. Regression Diagnostics </h3> 

This lab discusses leverage, distance, and influence, three properties of individual data points that may impact regression results and conclusions. The regression diagnostics discussed are: hat values, studentized Residuals, DFFITS, Cook’s D, COVRATIO, and DFBETAS. Influence of outliers on regression results is also discussed.


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 14.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 14 Code.Rmd" download="Lab 14 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-14-Activity.pdf" download="Lab 14 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 14 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr></hr>
