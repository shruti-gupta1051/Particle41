### Particle41s
## Tiny App Development: 'SimpleTimeService'
── app
    └── .github
    |        └── workflows
    │               ├── release-alpha.yml
    ├── Dockerfile
    ├── microservice.yml
    ├── simple_time_service.tf
    ├── requirements.txt

# Run the code 
1. Clone the repository:
   git clone <your-repository-url>
   cd app
2. pip install -r requirements.txt
3. pip install flask
4. python app.py
5. The service will be available at http://127.0.0.1:4545

# Push the Dockerfile to Registery 
1. Created an ec2 and insatlled docker, create a folder by running `mkdir app`
2. Clone the repository:
   git clone <your-repository-url>
   cd app
docker build -t username/simpletimeservice .

Note: This image is available at dockerhub : `docker pull shrutipp/simple-time:latest`

3. Install minikube and kubectl and for deplopyment run 
4. Test services and deployment by `kubectl apply -f microservice.yml` 

## Terraform  

── terraform
    ├── eks.tf
    ├── iam-role.tf
    ├── k8-config.tf
    ├── output.tf
    ├── provider.tf
    ├── security-groups.tf
    ├── var.tf
    └── vpc.tf

# Installation 
1. Visit this documentation for installation  https://www.terraform.io/downloads
2. Donwload the archive and Move the terraform binary to /usr/local/bin/
3. Validate installation. 

# Pre-requisites

1. Export the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY of your aws account and run this in your terminal as `export AWS_ACCESS_KEY_ID` and `export AWS_SECRET_ACCESS_KEY`

2. Run `terraform init` before creating resoruces as mentioned above

# Initialize Terraform Provider:  
1. terraform plan
2. Apply Infrastructure Changes: terraform apply




