library('googlesheets4')

gs4_auth(scopes = "https://www.googleapis.com/auth/spreadsheets.readonly")

data <- read_sheet(
    "https://docs.google.com/spreadsheets/d/1O5JxKeEmJPao6J1-ZZcHDcaPhbrDKEqIhKYjZbYgl8M/edit#gid=559910882"
)
