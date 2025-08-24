---
title: "PSYC 6802: Introduction to Psychology Statistics"
#subtitle: "Materials for PSYC 6802"
excerpt: "A set of HTML slides for the lab portion of PSYC 6802 (graduate course). In this lab, I provide an introduction to the **R** programming language and go over how to implement popular statistical analyses employed in the social sciences."
featured: true
date: 2025-08-01
draft: false
layout: single


links:
- icon: github
  icon_pack: fab
  name: Find code here
  url: https://github.com/quinix45/Fabio-Setti/tree/main/static/PSYC6802
---
<center> <img src="featured-hex.png"  width="60%"> </center>

</br>
</br>

<i class="fas fa-chalkboard-teacher"> </i> **Slides:** Click to access Lab presentations. To navigate slides, use left/right arrow keys (on laptop) or swipe left/right (on tablet). The slides are created with the <a href="https://quarto.org/docs/presentations/" target="_blank" class="inline-link">quarto</a> extension of <a href="https://posit.co/download/rstudio-desktop/" target="_blank" class="inline-link">RStudio</a> and use the <a href="https://revealjs.com" target="_blank" class="inline-link">revealjs</a> framework.

<i class="fas fa-code"> </i> **Code:** Click to download raw R code that is used in the Lab slides. The code is included in a .qmd file that is divided according to the title of each Lab slide.

<i class="fas fa-bullseye"> </i> **Activity:** Click to download Lab activity with practice questions. A Lab activity presents questions of varying difficulty related to the respective Lab.

<i class="fas fa-check"> </i> **Activity solution:** Click to download solutions to Lab activity as a .qmd file. The solutions presented are just one of many ways to solve the activity questions.


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
          // Show alert instead (no seconds)
          alert(`This file will be available for download on ${availableAfter.toLocaleString("en-US", {
            year: "numeric",
            month: "long",
            day: "numeric",
            hour: "numeric",
            minute: "2-digit"
          })}.`);
        }
      });
    });
  });
</script>


</br>
</br>
</br>

<h3> 1. Introduction to R  </h3>

This Lab introduces the R programming language and RStudio. This Lab also covers core concepts such as objects, functions, packages, and object subsetting. Additionally, this Lab introduces [Quarto](https://quarto.org) as a tool for creating neat PDF reports.


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_1.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_1_code.qmd" download="Lab 1 code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class="post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_1_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-08-29T12:00Z" data-file="/PSYC6802/Lab Activities/Lab_1_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>


<hr class="fancy"></hr>



<h3> 2. Descriptive Statistics, Data Manipulation, and Plotting </h3>

This Lab goes over some basic descriptive statistics, data manipulation with  [`dplyr`](https://dplyr.tidyverse.org), and plotting with [`ggplot2`](https://ggplot2.tidyverse.org/index.html). 

<span class="post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_2.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_2_code.qmd" download="Lab 2 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>

<span class="post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_2_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-09-14T12:00Z" data-file="/PSYC6802/Lab Activities/Lab_2_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>

<h3> 3. Chi-Square </h3>

This lab introduces some categorical data analysis methods for contingency tables. In particular, this lab goes over &#967;<sup>2</sup> tests, likelihood ratio test, and Fisher's exact test. Further, the lab also goes over odds and risk, as well as odds ratios and relative risk. 

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_3.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_3_code.qmd" download="Lab 3 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_3_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2026-01-01T00:00:00Z" data-file="/PSYC6802/Lab Activities/Lab_3_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>

<h3> 4. t-Test </h3>

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_4.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_4_code.qmd" download="Lab 4 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_4_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2026-01-01T00:00:00Z" data-file="/PSYC6802/Lab Activities/Lab_4_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>

<h3> 5. Power </h3>

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_5.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_5_code.qmd" download="Lab 5 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_5_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2026-01-01T00:00:00Z" data-file="/PSYC6802/Lab Activities/Lab_5_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>





<hr class="fancy"></hr>



<h3> 6. Correlation/Regression </h3>

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_6.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_6_code.qmd" download="Lab 6 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_6_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2026-01-01T00:00:00Z" data-file="/PSYC6802/Lab Activities/Lab_6_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>


<hr class="fancy"></hr>

<h3> 7. One-Way ANOVA </h3>

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_7.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_7_code.qmd" download="Lab 7 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_7_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2026-01-01T00:00:00Z" data-file="/PSYC6802/Lab Activities/Lab_7_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>



<h3> 8. Factorial ANOVA </h3>

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_8.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_8_code.qmd" download="Lab 8 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_8_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2026-01-01T00:00:00Z" data-file="/PSYC6802/Lab Activities/Lab_8_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>





<hr class="fancy"></hr>

<h3> 9. Multiple Regression I </h3> 

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_9.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_9_code.qmd" download="Lab 9 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_9_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2026-01-01T00:00:00Z" data-file="/PSYC6802/Lab Activities/Lab_9_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>


<hr class="fancy"></hr>

<h3> 10. Multiple Regression II </h3> 

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_10.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_10_code.qmd" download="Lab 10 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_10_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2026-01-01T00:00:00Z" data-file="/PSYC6802/Lab Activities/Lab_10_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>




<h3> 11. Logistic Regression </h3> 

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_11.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_11_code.qmd" download="Lab 11 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_11_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2026-01-01T00:00:00Z" data-file="/PSYC6802/Lab Activities/Lab_11_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>


<hr class="fancy"></hr>

<h3> 12. Third Variables </h3> 

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_12.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_12_code.qmd" download="Lab 12 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_12_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2026-01-01T00:00:00Z" data-file="/PSYC6802/Lab Activities/Lab_12_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>


<h3> 13. Latent Variables </h3> 

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_13.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_13_code.qmd" download="Lab 13 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_13_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2026-01-01T00:00:00Z" data-file="/PSYC6802/Lab Activities/Lab_13_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>

<h3> 14. Repeated Measures </h3> 

Coming soon!


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_14.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_14_code.qmd" download="Lab 14 Code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_14_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2026-01-01T00:00:00Z" data-file="/PSYC6802/Lab Activities/Lab_14_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr></hr>
