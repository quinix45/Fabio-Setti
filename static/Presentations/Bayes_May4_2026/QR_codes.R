library(qrcode)

## survey

code <- qr_code(
  "https://docs.google.com/forms/d/e/1FAIpQLSeTi_lk3Fm8t6rUND_GYNK--Bdz51KA6ItQRFSjha2MebjGLQ/viewform?usp=header",
  ecl = "H"
)

generate_svg(
  code,
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/SurveyQR.svg",
  show = FALSE
)


## slides

"https://fabio-setti.netlify.app/Presentations/Bayes_May4_2026/Main"


code_slide <- qr_code(
  "https://fabio-setti.netlify.app/Presentations/Bayes_May4_2026/Main",
  ecl = "H"
)

generate_svg(
  code_slide,
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/SlidesQR.svg",
  show = FALSE
)
