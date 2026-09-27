# Nomor 1
lamdaa <- 3
x <-  0:10
poiss <- 1 - ppois(4, lamdaa)
poiss
pmf <- dpois(x, lamdaa)
plot(x, pmf, type='h', lwd=3, main='Poisson(λ=3)', xlab='k', ylab='P(X=k)')

#Nomor 2
# Contoh parameter
#Dari 100 bola (20 berwarna merah), diambil 10 tanpa pengembalian. 
#Modelkan jumlah bola merah yang diambil dengan distribusi yang tepat.
N <- 100   # ukuran populasi
K <- 20    # jumlah sukses di populasi (misal bola merah = sukses)
n <- 10     

# Domain k
k <- seq(from = max(0, n + K - N), to = min(n, K))

# PMF: P(X = k)
pmf <- dhyper(k, m = K, n = N - K, k = n)
data.frame(k = k, P = pmf)
# Plot PMF
plot(k, pmf, type = "h", lwd = 3,
     main = paste0("Hypergeometric(N=",N,", K=",K,", n=",n,")"),
     xlab = "k (banyak sukses dalam sampel)", ylab = "P(X=k)")


#Nomor 3
#Simulasikan 1.000 percobaan Binomial (n=15,p=0.4)
#dan bandingkan histogram hasil simulasi dengan PMF teoretis.
set.seed(2025)
n <- 15
p <- 0.4
simulai<- rbinom(1000, size=n, prob=p)  
hist(simulai, breaks = seq(-0.5, n + 0.5, by = 1), probability = TRUE,
     main = "Histogram Simulasi vs PMF Binomial", 
     xlab = "k", ylab = "P(X=k)", col = "lightblue")
x <- 0:n
pmf <- dbinom(x, size = n, prob = p)
lines(x, pmf, type = "b", pch = 16, col = "red", lwd = 3)

