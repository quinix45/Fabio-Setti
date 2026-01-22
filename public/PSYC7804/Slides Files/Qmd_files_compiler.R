qmd_files <- paste0(
  "Slides Files/",
  list.files("Slides Files/")[grep(".qmd", list.files("Slides Files/"))]
)

# Add TinyTeX bin to PATH if some latex package fails with the quarto_render() function
Sys.setenv(
  PATH = paste(
    "/home/fsetti/.TinyTeX/bin/x86_64-linux",
    Sys.getenv("PATH"),
    sep = ":"
  )
)


for (i in 1:length(qmd_files)) {
  quarto::quarto_render(input = qmd_files[i])
}
