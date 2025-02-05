###
# functions
###
city <- data.frame(
  porto = rnorm(100),
  aberdeen = rnorm(100),
  nairobi = c(rep(NA, 10), rnorm(90)),
  genoa = rnorm(100)
)

porto_aberdeen <- city$porto * city$aberdeen

multiplyCity <- function(city1, city2, df){
  temp_var <- df[[city1]] * df[[city2]]
  if(any(is.na(temp_var))) {
    warning("the function has produced NAs")
    return(df[[city1]] * df[[city2]])
  } else {
    return(df[[city1]] * df[[city2]])
  }
}

check_porto_aberdeen <- multiplyCity("porto", "aberdeen", city)
check_porto_aberdeen

# check if the two multiply matrix methods produce the same result
identical(porto_aberdeen, check_porto_aberdeen)

nairobi_genoa <- multiplyCity("nairobi", "genoa", city)
nairobi_genoa

###
# plotting
###
plot(city$porto, city$genoa)
abline(0,0, col = "blue")

student_grades = rnorm(100)
hist(student_grades)