setwd("D:/Kuliah/Semester 3/Komputasi Statistika/Tugas")
# VEKTOR 
VN <- c(7.9, 3.4, 9.12, 10.7, 15.2, 27.3)
VN
VI<- c(5L, 12L, 7L, 43L, 22L, 12L, 6L)
VI
VL <- c(TRUE, FALSE, FALSE, TRUE)
VL
VC <- c("Mie", "Ayam", "Enak")
VC

# MATRIX
mat <- matrix(c(3,5,6,2,7,9,3,12,7,5,9,10,14,25,51,4),4,4,T)
mat

#Array 
a <- array(12:27, dim = c(2,2,2,2))
a

#Data Frame 
df <- data.frame(
  Nama = c("Finca", "Sera", "Tifany", "Rezra"),
  Nilai = c(89, 61, 56, 77),
  Lulus = c(TRUE, FALSE, FALSE, TRUE),
  Remedial = c(FALSE, TRUE, TRUE, FALSE)
)
df

#List
L <- list(
  vekbar = c(1,3,6,8),
  vekkom = matrix(c(1,5,7,9),,1),
  matrik = matrix(c(1:16), 4,4),
  dfra = data.frame(
    Nama = c("Fini", "Serly", "Tifa", "Rey"),
    BB = c(56, 61, 59, 65),
    TB = c(150, 160, 165, 170),
    Lulus = c(FALSE, TRUE, TRUE, TRUE)
  ), 
  mylist = list(
    mat = matrix(c(17: 22), 4,4),
    arr =  array(1:30, dim = c(2,3,3,2)),
    datfra = data.frame(
      Makanan = c("Seblak", "Sushi", "Ayam Goreng", "Mie ayam"),
      rating_mak = c(8, 9, 7, 8),
      Minuman = c("Es teh", "Boba", "Kopi", "Air mineral"),
      rating_min = c(7, 6, 7, 10)
    ),
    vekbar = c(2,5,9,12,30)
  )
  
)
L

