# 📡 Azure Monitor – Cloud-Native Observability  

## 📌 Overview  
Azure Monitor provides **end-to-end monitoring** for **Azure Kubernetes Service (AKS)** and cloud-native workloads, helping you track **performance, availability, and security metrics**.

---

## 🚀 Key Features  
✅ **Log Analytics Workspace** – Centralized monitoring for AKS logs  
✅ **Application Insights** – Deep telemetry for microservices  
✅ **Metrics & Alerts** – Auto-detect anomalies in cluster health  
✅ **Integration with Prometheus** – Unified observability for Kubernetes  

---

## 🔹 Setup Steps  
### **1️⃣ Enable Azure Monitor for AKS**  
- Navigate to **Azure Portal → AKS Cluster**  
- Open **Monitoring → Enable Log Analytics Workspace**  
- Configure **data collection settings** for logs & metrics  

### **2️⃣ Configure Alerts & Auto-Scaling**  
- Navigate to **Azure Monitor → Alerts**  
- Create **CPU & Memory usage alerts**  
- Define **auto-scale thresholds for pods and nodes**  

### **3️⃣ Connect Application Insights**  
- Enable **distributed tracing** for API requests  
- Configure **telemetry dashboards** for response time tracking  
- Define **custom alerts for failures & anomalies**  

---

## 📊 Recommended Alerts  
| **Metric** | **Threshold** | **Action** |
|------------|-------------|------------|
| CPU Usage | >80% | Scale up nodes |
| Memory Usage | >75% | Scale pods |
| API Latency | >200ms | Investigate bottleneck |
| Failed Requests | >5% | Trigger investigation |

---