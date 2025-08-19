---
title: "PSYC 6802: Introduction to Psychology Statistics"
#subtitle: "Materials for PSYC 6802"
excerpt: "A set of HTML slides for the lab portion of PSYC 6802 (graduate course). In this lab, I provide an introduction to the **R** programming language and go over how to implement popular statistical analyses employed in the social sciences."
featured: true
date: 2025-08-01
draft: true
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

<h3> 1. Introduction to R </h3>

This Lab introduces the R programming language and RStudio. This Lab also covers core concepts such as objects, functions, packages, and object subsetting.


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_1.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Code/Lab_1_code.qmd" download="Lab 1 code.qmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class="post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_1_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-08-29T12:00Z" data-file="/PSYC6802/Lab Activities/Lab_1_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>


<hr class="fancy"></hr>



<h3> 2. Data Exploration, Plotting, and Reporting </h3>

This Lab goes over some basic descriptive statics, plotting with [`ggplot2`](https://ggplot2.tidyverse.org/index.html), and data manipulation with  [`dplyr`](https://dplyr.tidyverse.org). Additionally, this Lab also introduces [Quarto](https://quarto.org) as a tool for creating neat pdf reports.

<span class="post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab_2.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 2 Code.Rmd" download="Lab 2 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class="post-header">
<a class="btn-links mr2 ba dib" href="/PSYC6802/Lab Activities/Lab_2_activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-09-14T12:00Z" data-file="/PSYC6802/Lab Activities/Lab_2_activity.qmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>

<h3> 3. Chi-Square </h3>

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 3.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 3 Code.Rmd" download="Lab 3 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-3-Activity.pdf" download="Lab 3 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 3 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>

<h3> 4. t-Test </h3>

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 4.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 4 Code.Rmd" download="Lab 4 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-4-Activity.pdf" download="Lab 4 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 4 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>

<h3> 5. Power </h3>

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 5.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 5 Code.Rmd" download="Lab 5 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-5-Activity.pdf" download="Lab 5 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 5 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>





<hr class="fancy"></hr>



<h3> 6. Correlation/Regression </h3>

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 6.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 6 Code.Rmd" download="Lab 6 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-6-Activity.pdf" download="Lab 6 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 6 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>


<hr class="fancy"></hr>

<h3> 7. One-Way ANOVA </h3>

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 7.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 7 Code.Rmd" download="Lab 7 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-7-Activity.pdf" download="Lab 7 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 7 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>



<h3> 8. Factorial ANOVA </h3>

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 8.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 8 Code.Rmd" download="Lab 8 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-8-Activity.pdf" download="Lab 8 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 8 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>





<hr class="fancy"></hr>

<h3> 9. Multiple Regression I </h3> 

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 9.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 9 Code.Rmd" download="Lab 9 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-9-Activity.pdf" download="Lab 9 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 9 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>


<hr class="fancy"></hr>

<h3> 10. Multiple Regression II </h3> 

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 10.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 10 Code.Rmd" download="Lab 10 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-10-Activity.pdf" download="Lab 10 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 10 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>




<h3> 11. Logistic Regression </h3> 

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 11.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 11 Code.Rmd" download="Lab 11 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-11-Activity.pdf" download="Lab 11 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 11 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>


<hr class="fancy"></hr>

<h3> 12. Third Variables </h3> 

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 12.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-12-Activity.pdf" download="Lab 12 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="https://github.com/quinix45/PSYC-7804-Regression-Lab-Slides" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 12 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>


<h3> 13. Latent Variables </h3> 

Coming soon!

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 13.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 13 Code.Rmd" download="Lab 13 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-13-Activity.pdf" download="Lab 13 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 13 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr class="fancy"></hr>

<h3> 14. Repeated Measures </h3> 

Coming soon!


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Slides Files/Lab 14.html" target="_blank" rel="noopener"><i class="fas fa-chalkboard-teacher"></i> Slides</a></span>

<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Code/Lab 14 Code.Rmd" download="Lab 14 Code.Rmd" target="_blank" rel="noopener"><i class="fas fa-code"></i> Code</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib" href="/PSYC7804/Lab Activities/Lab-14-Activity.pdf" download="Lab 14 Activity.pdf" target="_blank" rel="noopener"><i class="fas fa-bullseye"></i> Activity</a></span>


<span class=" post-header">
<a class="btn-links mr2 ba dib delayed-download" data-available-after="2025-01-01T00:00:00Z" data-file="/PSYC7804/Lab Activities/Lab 14 Activity.Rmd" target="_blank" rel="noopener"><i class="fas fa-check"></i> Activity Solution</a></span>

<hr></hr>
