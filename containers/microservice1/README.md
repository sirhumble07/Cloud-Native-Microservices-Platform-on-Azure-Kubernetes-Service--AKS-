# 🚀 Microservice1 – Cloud-Native API  

## 📌 Overview  
This microservice handles **user authentication** and connects to **Azure Database**. It’s containerized with Docker and deployed to **Azure Kubernetes Service (AKS)**.

## 🔹 Features  
✅ **REST API with FastAPI**  
✅ **Connects to Azure Database**  
✅ **Dockerized & deployed via GitHub Actions**  

## 🚀 Deployment Steps  
1️⃣ **Build & Run Docker Container**  
```bash
docker build -t microservice1 .  
docker run -p 8000:8000 microservice1
```
2️⃣ **Deploy to Azure Kubernetes Service (AKS)**  
```bash
kubectl apply -f k8s/deployment.yaml  
kubectl apply -f k8s/service.yaml  
```

## 🔒 Security Best Practices  
✅ **Use Azure Key Vault for secret management**  
✅ **Enable RBAC for access control**  

---

Would you like me to **refine Kubernetes manifests** (`deployment.yaml`, `service.yaml`) or **CI/CD configurations** for microservice automation? Let me know how I can enhance this! 🚀  
If you need additional **architecture diagrams**, I can generate those too! 🎯