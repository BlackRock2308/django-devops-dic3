# DevOps Project with Django, Docker, GitHub Actions, and Kubernetes 

## Objective

Develop a simple Django application that is deployed using a Continuous Integration/Continuous Deployment (CI/CD) pipeline. The pipeline will be implemented using GitHub Actions, Docker, and Kubernetes.


## Members of the Group

- KADIA BASSOUM
- Madjiguene FAYE
- Omar Sahaba NDIAYE
- Mbaye SENE


### Web Application Development:

![Screenshot](dev.png)

<!-- <p align="center">
  <img src="your_relative_path_here" width="350" title="hover text">
  <img src="your_relative_path_here_number_2_large_name" width="350" alt="accessibility text">
</p> -->


### Dockerization:

![Screenshot](docker.png)

### CI/CD Pipeline Setup:

The CI CD pipeline is build using github actions. After finsishes, our docker image will be send in our DOcker Hub for future used.

![Screenshot](pipeline.png)

### Kubernetes Deployment:

FOr our Kubernetes deployment, we created a cluster on Google Kubernetes Engine (GKE) with an autopilot mode. We all have to do there is to apply the manifest using kubectl command. You can notice that we created a service type LoadBalancer to access our application. By doing that, Google will create a external IP adress and expose our application for a public access.

![Screenshot](manifest.png)


## Link of the application
``` http://34.27.60.250:8000 ```

