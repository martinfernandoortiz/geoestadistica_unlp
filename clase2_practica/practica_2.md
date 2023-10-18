
<h4>Análisis de componentes principales (PCA)</h4>

1. ¿Cuántas componentes principales (PC) rescatan individualmente una heterogeneidad original mayor al 20%? 

Solo un componente (0.464696) 
* Proportion of variance:
  
0.464696 0.182729 0.120076 0.093621 0.064423 0.048748 0.015107 0.008771 0.001829 

2. ¿Cuánta PCs en explican en conjunto, una heterogeneidad original mayor al (i) ∼ 70, (ii) 80, (iii) 90 y (iv) 95%, respectivamente ?
70% 2
80% 3
90% 4
95% 5

*Cumulative proportion:

0.464696 0.647425 0.767501 0.861122 0.925545 0.974294 0.989400 0.998171 1.000000 

3. Seleccionar dos variables originales que mejor se correlacionen con las PC1, 2 y 3 (con cada PC por separado). Indicar el valor del
coeficiente de correlación r2. Graficar en diferentes scatterplot las relaciones entre estas variables. 

Squared correlations:
|                                              |**PC1** |     **PC2**  |      **PC3** |    **PC4**   |   **PC5** |   **PC6**  |      **PC7** |  **PC8**|      **PC9**|
|--------------------------------------------------|-------|------------|------------------|--------------|-------------|-------------|----------------|--------------|------------|
|Altura_(m) |                  0.0168311  |   0.378022  |    0.0352121  |    0.527583   |  0.0200112   |  0.0185518  |   0.00336197 |   0.000416901  |  9.51049e-06|
|Temperatura_(C) |                  0.862887   | 0.0220487  |    0.0492799  |  0.00138773   | 0.00290554   |  0.0432436  |  9.36599e-06 |    0.00995245  |   0.00828611|
|Temperatura_maxima_(C)       |                 0.835297    |0.0746649  |    0.0421468  |  0.00032604   | 0.00083333   |  0.0239593  |   0.00162177 |     0.0132559  |   0.00789446|
|Temperatura_minima_(C)        |                0.859054    |0.0036493  |     0.059543  |  0.00163206   | 0.00630071   |   0.015529  |   0.00014248 |     0.0541072  |  4.22499e-05|
|Humedad_relativa_(%)           |               0.209143    | 0.101129  |     0.436318  |   0.0458303   |   0.133626   |  0.0681447  |   0.00574667 |   3.03543e-05  |  3.16931e-05|
|Velocidad_del_Viento_(km/h)     |              0.117258    | 0.194879  |     0.436487  |    0.014375   |   0.225273   | 0.00856981  |   0.00309743 |     4.256e-05  |  1.84509e-05|
|Nubosidad_total_(octavos)        |             0.194936    | 0.438707  |  5.61309e-05  |   0.0601743   |   0.169591   |   0.135512  |  0.000802168 |   0.000116839  |  0.000105615|
|Precipitacion_(mm)                |            0.634789    | 0.142202  |  0.000778369  |   0.0490723   |  0.0113728   |   0.101255  |    0.0594848 |    0.00101156  |  3.38237e-05|
|Frecuencia_dias_Precipitacion_>0.1_mm |        0.452073    | 0.289256  |    0.0208631  |     0.14221   | 0.00989324   |  0.0239683  |    0.0616934 |   1.29922e-06  |  4.05977e-05|


PC1 Temperatura_(C)   0.862887  Temperatura_minima_(C) 0.859054

![imagen](https://github.com/martinfernandoortiz/geoestadistica_unlp/assets/38224115/b37c6ddd-0e7f-47e4-af29-0a3a62947a83)



PC2 Nubosidad_total_(octavos) 0.438707 Altura_(m)  0.378022

![imagen](https://github.com/martinfernandoortiz/geoestadistica_unlp/assets/38224115/f43f211a-5934-44fe-a1ba-a4dddb9c7951)



PC3 Humedad_relativa_(%) 0.436318 Velocidad_del_Viento_(km/h) 0.436487

![imagen](https://github.com/martinfernandoortiz/geoestadistica_unlp/assets/38224115/6e461725-e495-40b2-9eaa-375ff91cb947)


<h4>K-mean cluster</h4>
1. Encontrar la cantidad ´optima de grupos en base a criterio del codo. Considerar que:

total sum of squares = total sum within clusters + between clust


<h4>Cluster centers: </h4>

|  |Altura_(m)|Temperatura_(C)|Temperatura_maxima_(C)|Temperatura_minima_(C)|Humedad_relativa_(%)|Velocidad_del_Viento_(km/h)|Nubosidad_total_(octavos)|Precipitacion_(mm)|Frecuencia_dias_Precipitacion_>0.1_mm|
|--|----------|---------------|----------------------|----------------------|--------------------|---------------------------|-------------------------|------------------|-------------------------------------|
|C1|226.453   |21.5866        |28.1366               |15.7884               |69.6032             |9.2282                     |3.58779                  |118.262           |8.78663                              |
|C2|184.434   |10.8605        |16.9758               |5.30107               |72.6719             |12.4409                    |4.13096                  |42.2655           |6.33879                              |
|C3|814.209   |15.2607        |23.0105               |8.44136               |57.0047             |8.57068                    |3.15236                  |17.7728           |3.39791                              |
|C4|9.5       |-3.825         |-0.766667             |-7.02917              |0                   |21.325                     |6.49583                  |0                 |0                                    |

The total sum of squares:	7551

Within-cluster sum of squares:
|  |Within cluster S.S.|
|--|-------------------|
|C1|1203.55            |
|C2|1072.42            |
|C3|1209.88            |
|C4|45.2076            |

The total within-cluster sum of squares:	3531.06

The between-cluster sum of squares:	4019.94

The ratio of between to total sum of squares:	0.532372



<h4> Number of clusters:	3 </h4>

Cluster centers:
|  |Altura_(m)|Temperatura_(C)|Temperatura_maxima_(C)|Temperatura_minima_(C)|Humedad_relativa_(%)|Velocidad_del_Viento_(km/h)|Nubosidad_total_(octavos)|Precipitacion_(mm)|Frecuencia_dias_Precipitacion_>0.1_mm|
|--|----------|---------------|----------------------|----------------------|--------------------|---------------------------|-------------------------|------------------|-------------------------------------|
|C1|439.009   |11.7071        |18.453                |5.74019               |67.1574             |11.2099                    |3.80851                  |31.2544           |5.12411                              |
|C2|253.28    |21.4766        |28.088                |15.5344               |68.3069             |9.07277                    |3.52697                  |108.735           |8.35954                              |
|C3|9.5       |-3.825         |-0.766667             |-7.02917              |0                   |21.325                     |6.49583                  |0                 |0                                    |

The total sum of squares:	7551
Within-cluster sum of squares:
|  |Within cluster S.S.|
|--|-------------------|
|C1|2552.77            |
|C2|1613.51            |
|C3|45.2076            |

The total within-cluster sum of squares:	4211.49

The between-cluster sum of squares:	3339.51

The ratio of between to total sum of squares:	0.442261








2. Graficar el resultado del inciso anterior en un gr´afico de “burbuja”. Repetir este ejercicio para 5 y 10 grupos.
3. Graficar el resultado del inciso anterior espacialmente. ¿Es posible encontrar alg´un tipo de relaci´on espacial entre datos de los mismos clusters?
4. Explicar el concepto de inercia o dispersi´on intracluster.


