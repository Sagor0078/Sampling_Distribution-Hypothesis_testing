booth1 = c("positive","positive","negative","positive","negative",
           "negative","positive","positive","positive","negative","positive")
booth2 = c("negative","negative","negative","positive","positive","negative","positive",
           "negative","negative","negative")
m = matrix(c(4,7,7,3),ncol = 2,byrow = TRUE,dimnames = list(c("Booth1" , "Booth-2"),c("negative","positive")))
print(m)
c1 = sum(m[,1])
r1 = sum(m[1,])
c2 = sum(m[,2])
r2 = sum(m[2,])
n = sum(m)
E11 = (c1*r1) / n
E21 = (c1*r2) / n
E12 = (c2*r1) / n
E22 = (c2*r2) / n
chi_yates = (((abs(m[1]-E11)-0.5)^2/E11)+((abs(m[2]-E21)-0.5)^2/E21)+((abs(m[3]-E12)-0.5)^2/E12)+((abs(m[4]-E22)-0.5)^2/E22))
print(chi_yates)
chi_tab = qchisq(0.05,df=1,lower.tail = FALSE)
print(chi_tab)

p_value = pchisq(chi_yates,df = 1,lower.tail = FALSE)
print(chisq.test(m))
