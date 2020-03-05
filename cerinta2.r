require(stats); require(graphics)
summary(freeny)
venituri = freeny$income.level
potential = freeny$market.potential
lag=freeny$lag.quarterly.revenue
pret = freeny$price.index
y <- freeny.y
print(freeny.x)


#Regresie simpla
fm1 <- lm(venituri ~ potential  , data = freeny)
plot(fm1)
abline(fm1)
summary(fm1)

#Regresie multipla
fm2 <- lm(lag ~ +venituri - pret,data = freeny)
print(fm2)
plot(fm2)
abline(fm2)
summary(fm2)

#noua variabila
x<- rnorm(39, mean=188, sd=40)
print(x)
freeny$price.action = x
print(freeny)

#Regresie folosind noua variabila
fm3 <- lm(venituri ~ x  , data = freeny)
plot(fm3)
abline(fm3)
summary(fm3)

