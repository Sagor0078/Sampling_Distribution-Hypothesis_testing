
X = c(122,145,120,45,98,67,109,100,107,106,93,125,130,90,34,108,80,48,65,56)

md = 110
y = sum(X>md)
n = sum(X!=md)
p.value = 1 - pbinom(y-1,n,0.5)
#p.value = 0.99 , alpha = 0.05
print(p.value)
# Ho accepted