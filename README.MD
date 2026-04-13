🚀 Terraform AWS Project
📌 Overview

Terraform project to create AWS infrastructure using reusable modules, tfvars, and remote state (S3).

🧠 Architecture
Terraform CLI
     |
     v
S3 Remote State
     |
     v
AWS Infrastructure
   |
   +-- VPC
   +-- EC2 (Public)
   +-- EC2 (Private)
   +-- IAM
⚙️ What I Have Done
✔ Created Terraform Modules
EC2 module
VPC module
IAM module
S3 module
✔ Used Remote Backend
State stored in AWS S3
✔ Used tfvars
Separate values for environment
Used for variables instead of hardcoding

Example:

instance_type = "t2.micro"
✔ Built Secure Network
Public EC2 created
Private EC2 created inside VPC
Private EC2 not directly accessible
🔐 Access EC2
✔ Connect to Public EC2
ssh -i mani-key.pem ubuntu@<PUBLIC_IP>
✔ Connect to Private EC2 (via Jump Host)
ssh -i mani-key.pem -J ubuntu@<PUBLIC_PUBLIC_IP> ubuntu@<PRIVATE_IP>
✔ Purpose
Public EC2 used as jump host
Private EC2 accessed securely without public exposure
🚀 How to Run
✔ Init
terraform init
✔ Plan
terraform plan -var-file="dev.tfvars"
✔ Apply
terraform apply -var-file="dev.tfvars"
🎯 What This Shows
Terraform modules
AWS infrastructure setup
Secure EC2 access using bastion host
Remote state in S3
tfvars usage for environments