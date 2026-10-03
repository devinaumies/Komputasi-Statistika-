setwd("D:/Kuliah D/Semester 3/Komputasi Statistika/Tugas")

#Nomor 1
#Rata-rata waktu tunggu mu = 5 menit. Berapa peluang P(X > 5)?
pexp(5, rate = 1/5, lower.tail = FALSE)

#Nommor 2
#Kereta komuter tiba di stasiun secara acak antara pukul 07.00 hingga 07.20 (interval 20 menit).
#Berapakah ragam (varians) waktu tunggu penumpang
set.seed(123)
var(runif(1e6,min = 0,max = 20))
a <- 0
b <- 20
varian <- (b - a)^2 / 12
varian

#Nomor 3
#Masa pakai sensor suhu memiliki rata-rata mu = 10 tahun.
#Berapa peluang sensor tersebut rusak sebelum mencapai usia 5 tahun?
pexp(5, rate = 1/10)

#Nomor 4
#Berat bersih kemasan kopi menyebar normal dengan mu = 250 gram dan sigma = 5 gram. 
#Kemasan dianggap underweight jika beratnya kurang dari 240 gram. 
#Berapa proporsi produk yang tergolong underweight?
pnorm(240, mean = 250, sd = 5)
#Rumus z = (underweight-mu)/5
# z= (240-250)/5 = -2
pnorm(-2)

