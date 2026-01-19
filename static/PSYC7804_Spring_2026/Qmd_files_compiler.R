qmd_files <- grepv(".qmd", list.files())


# Add TinyTeX bin to PATH if some latex package fails with the quarto_render() function. change to correct path on different system
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
