# 🔒 Azure Key Vault – Secure Secrets Management  

## 📌 Overview  
Azure Key Vault (**AKV**) enables **secure storage and retrieval** of sensitive information such as **API keys, passwords, certificates, and encryption keys**. It enhances **security, access control, and auditing** for cloud-native applications.

---

## 🚀 Step-by-Step Setup  
### **1️⃣ Create Azure Key Vault via CLI**  
```bash
az keyvault create --name MyKeyVault \
  --resource-group MyResourceGroup \
  --location eastus \
  --sku standard
```
✅ **Creates a Key Vault for storing secrets**  
✅ **Uses Standard SKU for cost efficiency**  

---

### **2️⃣ Store a Secret in Key Vault**  
```bash
az keyvault secret set --vault-name MyKeyVault \
  --name DatabasePassword \
  --value "SuperSecureP@ssword123"
```
✅ **Stores database password securely**  
✅ **Prevents direct exposure in app configurations**  

---

### **3️⃣ Retrieve a Secret for Application Use**  
```bash
az keyvault secret show --vault-name MyKeyVault --name DatabasePassword
```
✅ **Allows secure retrieval without exposing credentials**  

For apps, use **managed identities** to access secrets:  
```bash
az identity assign --resource-group MyResourceGroup --name MyAppIdentity
```

---

## 🔒 Security Best Practices  
✅ **Enable Access Policies for RBAC-controlled access**  
✅ **Use Managed Identities for secret retrieval instead of hardcoding credentials**  
✅ **Audit secret access using Azure Monitor & Security Logs**  
✅ **Define expiration policies for automatic secret rotation**  

---