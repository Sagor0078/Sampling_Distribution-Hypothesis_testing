status0 = c(120,115,94,118,111,102,102,131,104,107,115,139,115,114,113,105,115,134,109,109,93,118,109,106,125)
status1 = c(150,142,119,127,141,149,144,142,149,161,143,140,148,149,141,146,159,152,135,134,161,130,125,141,
            148,153,145,137,147,169)
status0.var = var(status0)
status1.var = var(status1)

df1 = length(status0)
df2 = length(status1)
F.ratio = status0.var / status1.var
p.value = 2*min(pf(F.ratio,df1,df2),1-pf(F.ratio,df1,df2))
alpha = 0.05
print(p.value)

var.test(status0,status1)
# P.value > alpha, Ho accepted