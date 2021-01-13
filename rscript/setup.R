#
# Global R options
#
options(digits = 7, 
        knitr.kable.NA = "NA"
        )


#
# Create folders for various files
#
# Add all simulation results here
if (!dir.exists("rds")) {
  dir.create("rds")
}

# Add bibliography here
if (!dir.exists("bib")) {
	dir.create("bib")
}

# Create empty docs folder which will ultimately contain output
if (!dir.exists("docs")) {
  dir.create("docs")
}

# Make sure all images copy to docs folder
if (!dir.exists(here::here("docs", "images"))) {
  dir.create(here::here("docs", "images"))
}
# Do I need the following?
# file.copy(from = "images", to = "docs", recursive = TRUE)


# Copied from moderndive, I might not need this
# # These steps are only needed for generating the moderndive.com page
# # with relevant links. Not needed for PDF generation.
# if (is_html_output()) {
#   # Add all purl()'ed chapter R scripts here
#   if (dir.exists(here::here("docs", "scripts"))) {
#     unlink(here::here("docs", "scripts"), recursive = TRUE)
#   }
#   if (!dir.exists(here::here("docs", "scripts"))) {
#     dir.create(here::here("docs", "scripts"))
#   }
# }


#
# knitr options
#
knitr::opts_chunk$set(
	echo = TRUE, 
	eval = TRUE, 
	warning = FALSE, 
	message = TRUE, 
	results = "hold", 
  tidy = FALSE,
	purl = TRUE, 
  out.width = "100%",
  fig.align = "center",
	fig.width = 8, 
	fig.height = 5, 
	fig.cap = "**CAPTION**", 
  comment = NA
)

#
# Set output options
#
if (knitr::is_html_output()) {
  options(width = 80)
}


#
# Set ggplot2 theme
#
ggplot2::theme_set(ggplot2::theme_grey())
