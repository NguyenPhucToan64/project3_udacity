
# Coworking-analytics

## Getting Started

### Dependencies
#### Local Environment
    1. Python Environment - run Python 3.6+ applications and install Python dependencies via `pip`
    2. Docker CLI - build and run Docker images locally
    3. `kubectl` - run commands against a Kubernetes cluster
    4. AWS Cli - run command AWS Configured

#### Remote Resources
    1. AWS CodeBuild - build Docker images remotely
    2. AWS ECR - host Docker images
    3. Kubernetes Environment with AWS EKS - run applications in k8s
    4. AWS CloudWatch - monitor activity and logs in EKS

### Setup
#### 1. Make a Cluster Contain Node Groups by AWS EKS.
#### 2. Connect your local to your cluster. 
#### 3. Apply database resource by: `pvc.yaml`,`pv.yaml`,`postgresql-service.yaml` ,`postgresql-deployment.yaml` in ```deployment``` folder.
#### 4. Connect and add data to postgresql database by files in ```db``` folder. 
#### 5. Apply ``secret`` and ``mapconfig`` by ``configmap.yaml`` in ```deployment``` folder.
#### 6. Build docker images then upload to ECR , end change url image inside `coworking.yaml` in ```deployment```.
#### 7. Apply app by `coworking.yaml` in ```deployment``` folder.


#Specify reasonable Memory and CPU allocation in the Kubernetes deployment configuration
    Memory: 0.35G - 9%  . Total: 3.76GB(t3.medium)
    CPU: 750m - 38% . Total: 2 core (t3.medium).