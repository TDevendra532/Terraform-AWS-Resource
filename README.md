# 🚀 AWS Infrastructure with Terraform (EC2 + VPC + S3)

This project provisions a simple and secure AWS infrastructure using Terraform.

✅ EC2 Instance with Nginx  
✅ Custom VPC, Subnet, IGW  
✅ S3 Bucket with Versioning  
✅ Terraform Modular Code with Variables and Outputs  
✅ 100% Deployable from EC2 or Local Machine

---

## 📦 Tech Stack

- ✅ Terraform v1.x
- ✅ AWS CLI
- ✅ Ubuntu (for running commands)
- ✅ GitHub (code hosting)

---

## ⚙️ AWS CLI + Terraform Installation (on EC2 or Ubuntu)

### 🛠️ Step 1: Install AWS CLI

```bash
sudo apt update -y
sudo apt install unzip curl -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version

aws configure
# Paste your Access Key ID
# Paste your Secret Key
# Default region: ap-south-1
# Output format: json

sudo apt install gnupg software-properties-common -y
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update -y
sudo apt install terraform -y
terraform -v

## 📂 Explore Terraform Files

Use the following commands to explore the individual resource files:

```bash
vim ec2.tf
vim vpc.tf
vim s3.tf
vim provider.tf
vim variables.tf
vim outputs.tf
# Check the contains of different .tf (terraform) files
