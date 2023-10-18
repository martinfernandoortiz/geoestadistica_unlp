library(readr)


SMN_estaciones_medias_mensuales_1989_2010 <- read_csv("Downloads/SMN_estaciones_medias_mensuales_1989_2010.csv", 
                                                      col_types = cols(`Temperatura_(C)` = col_double(), 
                                                                       `Temperatura_minima_(C)` = col_double(), 
                                                                       `Humedad_relativa_(%)` = col_double(), 
                                                                       `Velocidad_del_Viento_(km/h)` = col_double(), 
                                                                       `Nubosidad_total_(octavos)` = col_double(), 
                                                                       `Precipitacion_(mm)` = col_double(), 
                                                                       `Frecuencia_dias_Precipitacion_>0.1_mm` = col_double()))
#View(SMN_estaciones_medias_mensuales_1989_2010)

outliersReplace <- function(serie2){
  
  Q  <- quantile(serie2, na.rm= TRUE)
  minimo <- Q[1]
  Q1     <- Q[2]
  Me     <- Q[3]
  Q3     <- Q[4]
  maximo <- Q[5]
  IQR    <- Q3 - Q1

  lowLimit  <- max(minimo, Q1 - 1.5*IQR)
  highLimit <- min(maximo, Q3 + 1.5*IQR)
  
  #if (serie2<lowLimite){print (serie2)}else{print(0)}
  
  serie2[serie2 > highLimit] <- NA
  serie2[serie2 < lowLimit] <- NA
  #if (serie2<lowLimit){serie2}
  
  serie2
  
}

df <- SMN_estaciones_medias_mensuales_1989_2010 #esto solo para tener un nombre mas corto

#Contar NA antes de procesar
sum(is.na(df$`Frecuencia_dias_Precipitacion_>0.1_mm`))

df[8:15] <- lapply(df[8:15], outliersReplace)


#Usarlo en un columna
outliersReplace(df$`Temperatura_(C)`)

#Ejemplo de como aplicarlo a todas las columnas de un df
apply(df,1,outliersReplace)

write_csv(df,"smn.csv")
