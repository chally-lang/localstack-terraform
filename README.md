# LocalStack + Terraform Infrastructure-as-Code Demo

## 🌐 What This Project Does
- Provisions mock AWS infrastructure locally using LocalStack and Terraform
- Runs a containerized NGINX server serving a simple static site at `http://localhost:8080`
- Simulates an S3 bucket for storing logs
- Modular Terraform setup (VPC and S3)

## ▶️ How to Run

### 1. Start LocalStack
```bash
docker run --rm -it -p 4566:4566 -p 4571:4571 localstack/localstack
```

### 2. Apply Terraform
```bash
cd terraform
terraform init
terraform apply -auto-approve
```

### 3. Build & Run NGINX
```bash
docker build -t local-nginx ../docker/nginx
docker run -d -p 8080:80 --name nginx-demo local-nginx
```

### 4. Upload Logs to S3 (Mock)
```bash
bash ../scripts/upload_logs.sh
```

Then go to [http://localhost:8080](http://localhost:8080) in your browser.

## 🛠️ Skills Demonstrated
- Infrastructure as Code (IaC)
- AWS emulation with LocalStack
- Modular Terraform structure
- Docker + Networking