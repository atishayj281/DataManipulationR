# Create a data frame with missing data
d < - data.frame(name=c("Abhi", "Bhavesh",
						"Chaman", "Dimri"),
				age=c(7, 5, 9, 16),
				ht=c(46, NA, NA, 69),
				school=c("yes", "yes", "no", "no"))
d

# Finding rows with NA value
d % > % filter(is.na(ht))

# Finding rows with no NA value
d % > % filter(! is.na(ht))

d.name<- arrange(d, age)
print(d.name)

select(d, starts_with("ht"))

# Calculating a variable x3 which is sum of height
# and age printing with ht and age
mutate(d, x3 = ht + age)
 
# Calculating a variable x3 which is sum of height
# and age printing without ht and age
transmute(d, x3 = ht + age)

