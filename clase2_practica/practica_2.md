
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


<h3>K-mean cluster</h3>
1. Encontrar la cantidad ´optima de grupos en base a criterio del codo. Considerar que:

total sum of squares = total sum within clusters + between clust

Method:	KMeans
Number of clusters:	4
Initialization method:	KMeans++
Initialization re-runs:	150
Maximum iterations:	1000
Transformation:	Standardize (Z)
Distance function:	Euclidean

Cluster centers:
|  |Altura_(m)|Temperatura_(C)|Temperatura_maxima_(C)|Temperatura_minima_(C)|Humedad_relativa_(%)|Velocidad_del_Viento_(km/h)|Nubosidad_total_(octavos)|Precipitacion_(mm)|Frecuencia_dias_Precipitacion_>0.1_mm|
|--|----------|---------------|----------------------|----------------------|--------------------|---------------------------|-------------------------|------------------|-------------------------------------|
|C1|211.658   |21.4903        |28.0239               |15.6673               |69.9879             |9.42596                    |3.44277                  |118.268           |8.74012                              |
|C2|267.94    |10.5287        |16.8763               |4.9123                |72.0524             |9.37224                    |3.9306                   |37.7413           |5.70315                              |
|C3|717.781   |17.6658        |25.2219               |10.8774               |52.7516             |8.5871                     |2.82129                  |23.5684           |3.88323                              |
|C4|604.241   |0.934483       |3.65172               |-2.81724              |0                   |13.6069                    |0                        |0.22069           |0.0586207                            |

The total sum of squares:	7551
Within-cluster sum of squares:
|  |Within cluster S.S.|
|--|-------------------|
|C1|1158.39            |
|C2|1216.04            |
|C3|1034.93            |
|C4|296.033            |

The total within-cluster sum of squares:	3705.39
The between-cluster sum of squares:	3845.61
The ratio of between to total sum of squares:	0.509285




Method:	KMeans
Number of clusters:	3
Initialization method:	KMeans++
Initialization re-runs:	150
Maximum iterations:	1000
Transformation:	Standardize (Z)
Distance function:	Euclidean

Cluster centers:
|  |Altura_(m)|Temperatura_(C)|Temperatura_maxima_(C)|Temperatura_minima_(C)|Humedad_relativa_(%)|Velocidad_del_Viento_(km/h)|Nubosidad_total_(octavos)|Precipitacion_(mm)|Frecuencia_dias_Precipitacion_>0.1_mm|
|--|----------|---------------|----------------------|----------------------|--------------------|---------------------------|-------------------------|------------------|-------------------------------------|
|C1|399.495   |11.7749        |18.4509               |5.86043               |67.5588             |9.27038                    |3.69455                  |32.8507           |5.19242                              |
|C2|252.756   |21.6016        |28.2212               |15.6793               |67.8368             |9.1785                     |3.34534                  |108.376           |8.2329                               |
|C3|603.656   |2.52813        |5.79688               |-1.64375              |1.50625             |13.6562                    |0                        |0.63125           |0.165625                             |

The total sum of squares:	7551
Within-cluster sum of squares:
|  |Within cluster S.S.|
|--|-------------------|
|C1|2302               |
|C2|1616.03            |
|C3|362.989            |

The total within-cluster sum of squares:	4281.02
The between-cluster sum of squares:	3269.98
The ratio of between to total sum of squares:	0.433053





2. Graficar el resultado del inciso anterior en un gr´afico de “burbuja”. Repetir este ejercicio para 5 y 10 grupos.
3. Graficar el resultado del inciso anterior espacialmente. ¿Es posible encontrar alg´un tipo de relaci´on espacial entre datos de los mismos clusters?
4. Explicar el concepto de inercia o dispersi´on intracluster.


