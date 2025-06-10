# 🌐 Azure Virtual Network (VNet) & Subnet Configuration  

## 📌 Overview  
Azure Virtual Network (**VNet**) allows **secure communication** between resources. It enables **network segmentation, private IP addressing, and connectivity** between microservices running in **Azure Kubernetes Service (AKS)**.

---

## 🚀 Step-by-Step Setup  

### **1️⃣ Create a Virtual Network via Azure CLI**  
```bash
az network vnet create --resource-group MyResourceGroup \
  --name MyVNet \
  --address-prefix 10.1.0.0/16 \
  --subnet-name AppSubnet \
  --subnet-prefix 10.1.1.0/24
```
✅ **Defines a VNet with an address space (`10.1.0.0/16`)**  
✅ **Creates a subnet (`AppSubnet`) for microservices**  

---

### **2️⃣ Additional Subnet for Database & Bastion Access**  
```bash
az network vnet subnet create --resource-group MyResourceGroup \
  --vnet-name MyVNet \
  --name DbSubnet \
  --address-prefix 10.1.2.0/24
```
✅ **Segregates databases from application traffic**  
✅ **Supports private connectivity for security**  

---

### **3️⃣ Assign Subnets to AKS Cluster**  
```bash
az aks create --resource-group MyResourceGroup \
  --name MyAKSCluster \
  --network-plugin azure \
  --vnet-subnet-id /subscriptions/{subscriptionId}/resourceGroups/MyResourceGroup/providers/Microsoft.Network/virtualNetworks/MyVNet/subnets/AppSubnet
```
✅ **Links AKS to `AppSubnet` for workload isolation**  
✅ **Prevents direct public exposure of AKS pods**  

---

## 🔒 Security & Private Networking  
✅ **Enable Network Security Groups (NSGs)** for traffic filtering  
✅ **Use Private Link & Azure Bastion for secure remote access**  
✅ **Integrate Azure Firewall for threat protection**  

---

## 📄 Best Practices  
🔹 **Use meaningful naming conventions** for VNets and subnets  
🔹 **Segment workloads** to enhance network security  
🔹 **Enable network policies** to define allowed traffic flow  

---