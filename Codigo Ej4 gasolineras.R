#DONDE INVERTIR GASOLINERAS####

#Cargar librerias####
pacman::p_load(tidyverse, leaflet, leaftlet.extras)


#ds <- read_csv('https://geoportalgasolineras.es/resources/files/preciosEESS_es.xls')
ds <- read_csv('https://docs.google.com/spreadsheets/d/e/2PACX-1vTeriN-twa2rBrOcwlAzM4_AXN2hqe-64R2-3R5RiILdCg4Wy-P2ItIdlkXiH0I3g/pub?gid=314326884&single=true&output=csv')
#ds <- read_csv('preciosEESS_es')
  
pinte <- 
  ds %>% 
  leaflet() %>% 
  addTiles() %>% 
  addCircles()
pinte

en_mad <- 
  ds %>%
  filter(Municipio=="MADRID") %>%
  leaflet() %>%
  addTiles() %>% 
  addCircleMarkers()
en_mad
