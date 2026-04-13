🚀 Terraform AWS Project
📌 Overview

Terraform project to create AWS infrastructure using reusable modules, tfvars, and remote state (S3).

🧠 Architecture

Terraform CLI
↓
S3 Remote State
↓
AWS Infrastructure

VPC
EC2 (Public)
EC2 (Private)
IAM
⚙️ What I Have Done
✔ Created Terraform Modules
EC2 module
VPC module
IAM module
S3 module
✔ Used Remote Backend
State stored in AWS S3
✔ Used tfvars
Separate values for environments
Used instead of hardcoding variables

Example:

instance_type = "t2.micro"
✔ Built Secure Network
Public EC2 created
Private EC2 created inside VPC
Private EC2 is not directly accessible from internet
🔐 Access EC2 Instances
✔ Connect to Public EC2
ssh -i mani-key.pem ubuntu@<PUBLIC_IP>
✔ Connect to Private EC2 (via Jump Host)
ssh -i mani-key.pem -J ubuntu@<PUBLIC_PUBLIC_IP> ubuntu@<PRIVATE_IP>
✔ Purpose
Public EC2 acts as a jump host
Private EC2 is accessed securely
Private instance is not exposed to internet
🚀 How to Run
✔ Initialize Terraform
terraform init
✔ Plan Infrastructure
terraform plan -var-file="dev.tfvars"
✔ Apply Infrastructure
terraform apply -var-file="dev.tfvars"
🎯 What This Shows
Terraform module-based architecture
AWS infrastructure provisioning
Secure VPC design (public + private subnet)
Bastion host access (jump server)
Remote state management using S3
Environment handling using tfvars