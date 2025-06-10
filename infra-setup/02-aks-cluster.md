# 🏗️ Azure Kubernetes Service (AKS) Cluster Deployment  

## 📌 Overview  
Azure Kubernetes Service (**AKS**) simplifies container orchestration in Azure, providing **scalability, security, and automated management** for microservices.

---

## 🚀 Step-by-Step Setup  
### **1️⃣ Create an AKS Cluster via Azure CLI**  
```bash
az aks create --resource-group MyResourceGroup \
  --name MyAKSCluster \
  --node-count 3 \
  --enable-addons monitoring \
  --generate-ssh-keys
```
✅ **Defines a 3-node Kubernetes cluster**  
✅ **Enables monitoring for observability**  
✅ **Generates SSH keys for secure access**  

---

### **2️⃣ Configure AKS Networking**  
🔹 **Default network setup** creates a **VNet & subnet** automatically  
🔹 For custom networking, define a **pre-existing VNet**  
```bash
az aks create --resource-group MyResourceGroup \
  --name MyAKSCluster \
  --node-count 3 \
  --network-plugin azure \
  --vnet-subnet-id /subscriptions/{subscriptionId}/resourceGroups/MyResourceGroup/providers/Microsoft.Network/virtualNetworks/MyVNet/subnets/MySubnet
```

---

### **3️⃣ Deploy an Application to AKS**  
```bash
kubectl create namespace microservices  
kubectl apply -f k8s/deployment.yaml  
kubectl apply -f k8s/service.yaml  
```
✅ **Creates a Kubernetes namespace**  
✅ **Deploys microservices via YAML configurations**  

---

## 🔒 Security & Access Control  
✅ **Enable Role-Based Access Control (RBAC)**  
```bash
az aks update --resource-group MyResourceGroup --name MyAKSCluster --enable-rbac
```
✅ **Integrate with Azure AD for authentication**  
✅ **Apply RBAC roles for restricted access control**  

---

## 📊 Monitoring & Logging  
✅ **Enable Azure Monitor & Log Analytics for AKS**  
✅ **Deploy Prometheus & Grafana for advanced monitoring**  

---