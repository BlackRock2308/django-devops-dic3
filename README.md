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

### Beyong Continuous Delivery, Continious Deployment with ArgoCD , GitOps tool

We have to know that CI/CD can have different meanings depending on the company. Most of company are just delivering a final executable using a continuous pipeline but more advanced company will deploy that final executable through the pipeline automatically for the end users without a human intervnation at all.
We can achieve that level of expertise by using a GitOps tool called ArgoCD that used git as the only source of truth for maitaining the right state of our K8s cluster.

Here is the login page of argoCD

![Screenshot](argo.png)

- first of all, we used the app-of-apps patern for argoCD deployment because our k8s manifest is in the root directory of our django project. You can learn more about app-of-apps patern by clicking: [here](https://medium.com/dzerolabs/turbocharge-argocd-with-app-of-apps-pattern-and-kustomized-helm-ea4993190e7c)

![Screenshot](app-of-apps.png)

All is done, we can see our ressources directly in our argocd UI. With this method, we no longer need to access to our cluster. All we have to do is the change our kubernetes manifest and push the code to git. ArgoCD will handle all the underlying process to get our application' new version up and running for end user.

![Screenshot](app-1.png)

Here we can see all the necessary ressources used in our kubernetes cluster.

![Screenshot](app-2.png)

### Kubernetes Deployment:

FOr our Kubernetes deployment, we created a cluster on Google Kubernetes Engine (GKE) with an autopilot mode. We all have to do there is to apply the manifest using kubectl command. You can notice that we created a service type LoadBalancer to access our application. By doing that, Google will create a external IP adress and expose our application for a public access.

![Screenshot](manifest.png)


## Link of the application
``` http://34.27.60.250:8000 ```

