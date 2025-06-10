# 🏗️ Azure Resource Group Setup  

## 📌 Overview  
An **Azure Resource Group (RG)** is a logical container for managing and organizing Azure resources. It helps with **governance, security, and cost tracking** for cloud deployments.

---

## 🚀 Step-by-Step Setup  
### **1️⃣ Create a Resource Group via Azure CLI**  
```bash
az group create --name MyResourceGroup --location eastus
```
- Replace `MyResourceGroup` with your preferred name.  
- Choose a region that aligns with your infrastructure needs.  

### **2️⃣ Create a Resource Group via Azure Portal**  
1. Navigate to **Azure Portal → Resource Groups**  
2. Click **Create → Enter RG Name & Location**  
3. Review and **click Create**  

### **3️⃣ Define Resource Group Tags for Governance**  
```bash
az tag create --resource-id /subscriptions/{subscriptionId}/resourceGroups/MyResourceGroup \
  --tags Environment=Production Owner=CloudTeam
```
- Helps with **cost tracking** and **security policies**  
- Apply **naming conventions** for clarity  

---

## 🔒 Security & Compliance  
✅ **Assign Role-Based Access Control (RBAC)** for secure permissions  
✅ **Link Resource Group to Azure Policy for compliance**  
✅ **Monitor costs and usage through Azure Cost Management**  

---

## 🛠️ Best Practices  
🔹 **Use meaningful naming conventions** for RGs  
🔹 **Organize resources by workload or lifecycle**  
🔹 **Enable governance tools like Azure Policy and Management Groups**  

---