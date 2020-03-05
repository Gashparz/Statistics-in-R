# Weibull distribution

# x este intervalul pe care lucram;
x <- seq(0, 2.5, 0.0001)

# k reprezinta vectorul cu valorile pentru shape; 
k <- c(0.5, 1, 1.5, 5)

# Lambda = 1;

# Desenam pentru fiecare shape functia de densitate;
plot(x, dweibull(x, shape = k[1], scale = 1, log = FALSE), col = "white", ylim = c(0, 2.5), xlab = "", ylab = "", main = "Functia de densitate")

lines(x, dweibull(x, shape = k[1], scale = 1, log = FALSE), col = "blue", ylim = c(0, 2.5))
lines(x, dweibull(x, shape = k[2], scale = 1, log = FALSE), col = "red", ylim = c(0, 2.5))
lines(x, dweibull(x, shape = k[3], scale = 1, log = FALSE), col = "purple", ylim = c(0, 2.5))
lines(x, dweibull(x, shape = k[4], scale = 1, log = FALSE), col = "green", ylim = c(0, 2.5))

# Desenam pentru fiecare shape functia de repartitie;
plot(x, pweibull(x, shape = k[1], scale = 1, log = FALSE), col = "white", ylim = c(0, 1.0), xlab = "", ylab = "", main = "Functia de repartitie")

lines(x, pweibull(x, shape = k[1], scale = 1, log = FALSE), col = "blue", ylim = c(0, 1.0))
lines(x, pweibull(x, shape = k[2], scale = 1, log = FALSE), col = "red", ylim = c(0, 1.0))
lines(x, pweibull(x, shape = k[3], scale = 1, log = FALSE), col = "purple", ylim = c(0, 1.0))
lines(x, pweibull(x, shape = k[4], scale = 1, log = FALSE), col = "green", ylim = c(0, 1.0))