venituri = freeny$income.level
potential = freeny$market.potential
lag=freeny$lag.quarterly.revenue
pret = freeny$price.index

summary(freeny)

#calculam quantilele
quantile(venituri)
quantile(potential)
quantile(lag)
quantile(pret)

#Calculam media
mean(venituri)
mean(potential)
mean(lag)
mean(pret)

#calculam mediana 
median(venituri)
median(potential)
median(lag)
median(pret)

#calculam varianta 
var(venituri)
var(potential)
var(lag)
var(pret)

summary(freeny)

#desenam diagrama pentru fiecare variabila din freeny 
boxplot(venituri, main="Dupa Income Level", horizontal=TRUE, col ="coral", border = "brown")
boxplot(potential, main="Dupa Market Potential", horizontal=TRUE, col ="coral", border = "brown")
boxplot(lag, main="Dupa Lag Quarterly Revenue", horizontal=TRUE, col ="coral", border = "brown")
boxplot(pret, main="Dupa Price Index", horizontal=TRUE, col ="coral", border = "brown")

