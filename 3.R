#H0 : mu <= 5
#H1 : mu > 5
x.bar = 6.7
print(x.bar)
mu = 5
print(mu)
sd = 7.1
print(sd)
n = 29
print(n)
Z = (x.bar - mu) / (sd/sqrt(n))
print(Z)
alpha = 0.05
print(alpha)
Ztab = qnorm(0.05,lower.tail = FALSE)
print(Ztab)
pvalue = pnorm(Z,lower.tail = FALSE)
print(pvalue)
Ztab1 = qnorm(0.025)
print(Ztab1)
Ztab2 = qnorm(0.975)
print(Ztab2)
p.value = 2*pnorm(Z,lower.tail = FALSE)
print(p.value)
CI = c(x.bar + Ztab1*sd/sqrt(n),x.bar+Ztab2*sd/sqrt(n))
print(CI)
