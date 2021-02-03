#
# Purpose: View the structure of the data
#
# Commmands: str(), dplyr::glimpse()
# Example:
str(hsb2)
dplyr::glimpse(hsb2)


#
# Purpose: Make an if else statement
#
# Commmands: ifelse([logical condition], [do this if true], [do this if false])
# Example:
hsb2 <- hsb2 %>%
  dplyr::mutate(read_cat = ifelse( #create a new variable: read_cat
      read < avg_read, # logical condition
      "below average", # if case
      "at or above average" # else case
      )
  )


#
# Purpose: Specify transparency of points
#
# Commmands: ggplot2::geom_point(alpha = )
# Example:
# Make the points 40% opaque
ggplot2::ggplot(data = diamonds, 
                mapping = ggplot2::aes(carat, price, color = clarity)) +
  ggplot2::geom_point(alpha=0.4) +
  ggplot2::geom_smooth()

