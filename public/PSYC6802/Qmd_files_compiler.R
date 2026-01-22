# run to compile all .qmd files in directory (used when theme updates)

qmd_files <- list.files()[grep(".qmd", list.files())]

for(i in 1:length(qmd_files)){
  
  quarto::quarto_render(input = qmd_files[i])
}