
qmd_files <- paste0("Slides Files/",
  list.files("Slides Files/")[grep(".qmd", list.files("Slides Files/"))])



for(i in 1:length(qmd_files)){

  quarto::quarto_render(input = qmd_files[i])
}
