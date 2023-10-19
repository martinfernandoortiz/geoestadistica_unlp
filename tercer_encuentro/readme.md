<h4>Instalación de entorno python</h4>
Para instalar python me base en el trabajo de Dani Arribas 

* https://darribas.org/gds_env/
* https://github.com/darribas/gds_env/blob/master/docker/install_guide.md

* ```sudo docker pull darribas/gds_py```  Para bajar la imagen e instalar el contenedor

* 
* ```sudo docker run --rm -d -ti -p 8888:8888 -v /home/martin/Documents/docker:/home/jovyan/work darribas/gds_py```
  Para correr el contenedor. quizas el -d no funciona. El rm borra todo despues. Quizás no haga falta

* 
* Para abrir jupiter poner en el navegador http://127.0.0.1:8888/lab?token=1e54cf0ee67ef3172592a9db5de152734b28f1c7e4e7aa0d
