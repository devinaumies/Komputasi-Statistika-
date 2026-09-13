setwd("D:/Kuliah D/Semester 3/Komputasi Statistika/Tugas")
iris
#tampilkan data sepal lenght
iris$Sepal.Length
iris["Sepal.Length"]

#tipe data tiap kolom 
sapply(iris, class)

#Buat variabel baru pada Sepal.Width dengan nilai Besar dan kecil
library(dplyr)
dataris <-  iris %>%
  mutate(
    turunan = ifelse(Sepal.Width > 3, "Besar", "Kecil")
  )
dataris
head(dataris,10)

#ubah variabel 
datar <- dataris %>%
  rename(sepal=turunan)
head(datar)

#Ambil data dengan sepal bernilai besar dari species virginica
datas <-  filter(datar, sepal == "Besar", Species == "virginica")
datas

#Cek jumlah species dalam data
datai <-  iris
datai
length(datai$Species)
count(datai, Species)

#Pecah data iris menjadi 3 data frame berdasarkan spesies
df_setosa <-datai%>% filter(Species=="setosa")
df_setosa
df_versicolor <- datai %>% filter(Species=="versicolor")
df_versicolor
df_virginica <- datai %>% filter(Species=="virginica")
df_virginica

#urutkan data berdasarkan Sepal.Width
data_urut_setosa <- arrange(df_setosa, Sepal.Width )
data_urut_setosa
data_urut_versicolor <- arrange(df_versicolor, Sepal.Width )
data_urut_versicolor
data_urut_virginica <- arrange(df_virginica, Sepal.Width )
data_urut_virginica

