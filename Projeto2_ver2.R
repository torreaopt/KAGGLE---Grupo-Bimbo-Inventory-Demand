install.packages("readr") 
install.packages("dplyr") 
install.packages("data.table") 
library(readr) 
library(dplyr) 
library(data.table) 


Train <- fread("train.csv") 

new_Train <- Train %>%  
  group_by(Agencia_ID, Canal_ID, Ruta_SAK, Cliente_ID, Producto_ID) %>% 
  summarise(Demanda = mean(Demanda_uni_equil)) 

# Salvamos o resultado: 
  write_csv(new_Train,"Train_demanda_media")