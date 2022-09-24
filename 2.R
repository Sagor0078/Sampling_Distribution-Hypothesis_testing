S = 2 : 12
A = c(1:6,5:1)
PS = c(1:6,5:1)/36
ES = sum(S*PS)
print(ES)
vars = sum((S - c(ES))^2*PS)
print(vars)
barplot(PS,
         ylim = c(0,0.2),
         ylab = "Probability",
         xlab = "S",
         col = "steelblue",
         space = 0,
         main = "sum of two dice rolls")
probability = rep(1/6,6)
names(probability) = 1 : 6
barplot(probability,
        ylim = c(0,0.2),
        xlab = "D",
        col = "steelblue",
        space = 0,
        main = "outcomes of single dice rolls")
