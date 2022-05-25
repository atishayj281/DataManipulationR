install.packages("arules")

# Loading Libraries
library(arules)

# import dataset
data("Groceries")

# using apriori() function
rules <- apriori(Groceries,
                 parameter = list(supp = 0.01, conf = 0.2))

# using inspect() function
inspect(rules[1:4])

