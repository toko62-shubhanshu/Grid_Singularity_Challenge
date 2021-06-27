# Grid_Singularity_Challenge
Your goals for this challenge:

- Create an automation using Terraform or Cloudformation to provision one Linux VM in AWS capable to run docker containers and with the port 80 exposed to the internet.
- Create a Dockerfile of a nginx container.
- Create a CI/CD pipeline using Travis/Github Actions/Jenkins to build and deploy the container in the Linux VM.

**Solution 1**: 

- Installation / Setup of Terraform in your local : https://learn.hashicorp.com/tutorials/terraform/install-cli .
-  After fully configuration (terraform init : https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started) of terraform in your system, you need to go to this location `terraform/`.
-  Once your file is created there you need to run `terraform apply` so it make your server up using defined config in `terraform/docker-vm.tf` file.
-  It make your server up and running state or you verified on AWS console of EC2.

**Solution 2** :

- Dockerfile file is created and push in path : `Grid_Singularity_Challenge/Dockerfile`
- Run the "docker build ." command to execute the Docker file in your AWS server.
- Once Dockerfile is executed completely then go to server and check your nginx is runing fine or not. (use `Netstat -nltp | grep LISTEN | grep 80` command to check nginx exposing on 80 port).
- Try to open in browser using IP address of server (if you map IP with Elastic IP / public domain in Route 53 then try to open DNS on browser).

**Solution 3** :
- For CI/CD pipeline, we need to run github for CI and Jenkins for CD
-  
