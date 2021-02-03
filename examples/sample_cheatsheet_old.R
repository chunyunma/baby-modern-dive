# sample cheat sheet
# This is what I had originally in the course website, 
# swapped out and replaced with actual sample work from students. 

#
# Logical Operations
#

# < for less than
# > for greater than
# <= for less than or equal to
# >= for greater than or equal to

#
# Elements with data
# 

#	- Vectors (one dimensional array): can hold numeric, character or logical 
# values. The elements in a vector all have the same data type.

#	- Matrices (two dimensional array): can hold numeric,


#
# Plotting
#

# Faceted histogram
ggplot2::ggplot(cars, ggplot2::aes(x = city_mpg)) +
  ggplot2::geom_histogram() +
  ggplot2::facet_wrap(~ suv)

