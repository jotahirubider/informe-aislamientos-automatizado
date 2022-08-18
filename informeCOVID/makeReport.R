pacman::p_load(here,lubridate)
setwd(here())
Sys.setenv(RSTUDIO_PANDOC="C:/Program Files/RStudio/bin/pandoc")
filename <- paste0(today(),"-Informe-Situacion-COVID.pdf")
rmarkdown::render(
  input = "base/0-covidReport.Rmd",
  output_format = "pdf_document",
  output_file = filename,
  output_dir = "informesSalida",
  encoding = "UTF-8",
  clean = TRUE,
  quiet = TRUE
)

# https://datacornering.com/how-to-run-r-script-from-another-r-script-and-use-as-a-source/
# https://bookdown.org/yihui/rmarkdown-cookbook/rmarkdown-render.html