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
# Install packages
#
# Install xfun so that I can use xfun::pkg_load2
if (find.package('xfun') == '') install.packages('xfun')
xf <- loadNamespace('xfun')


cran_packages = c(
                  # Packages required by students: 
                  "knitr", "ggplot2", 
                  # Packages used internally: 
                  "bookdown", 
                  "import", 
                  "rmarkdown", "here", "remotes", "kableExtra"
)

# Need to cite these packages separately
gh_repos = c(
             # Required by students:
             
             # Used internally: 
             # "rapporter/pander", "dcomtois/summarytools"
             )

# TODO: maybe separate these into for_reader and for_authors

if (length(cran_packages) != 0) xf$pkg_load2(cran_packages)
if (length(gh_repos) != 0) xf$install_github(gh_repos)

#
# namespace
#
# gp <- import::from(ggplot2, .all=TRUE, .into={new.env()})
# kn <- import::from(knitr, .all=TRUE, .into={new.env()})


#
# knitr options
#
knitr::opts_chunk$set(
	echo = TRUE, 
	results = "hold", 
  tidy = FALSE,
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
# automatically create a bib database for R packages
#
knitr::write_bib(
                 c('xfun', 
                   cran_packages
                   ), 
                 here::here('bib', 'packages.bib')
)

#
# Set ggplot2 theme
#
ggplot2::theme_set(ggplot2::theme_grey())
