# 📡 Grafana & Prometheus – Kubernetes Monitoring  

## 📌 Overview  
Grafana and Prometheus provide **powerful monitoring** for **Azure Kubernetes Service (AKS)**, offering **real-time insights into cluster health, performance, and security**.

---

## 🚀 Key Features  
✅ **Prometheus Metrics Exporter** – Collects data from AKS pods  
✅ **Grafana Dashboards** – Visualize performance trends and bottlenecks  
✅ **Alerting & Notifications** – Detect failures and anomalies in real time  
✅ **Integration with Azure Monitor** – Unified observability  

---

## 🔹 Deployment Steps  
### **1️⃣ Install Prometheus Operator in AKS**  
Run the following command in your **Kubernetes cluster**:  
```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/kube-prometheus-stack
```
- Expose Prometheus via **Kubernetes Service**  
- Define **data collection policies** for microservices  

### **2️⃣ Deploy Grafana for Visual Monitoring**  
```bash
helm install grafana grafana/grafana
kubectl port-forward svc/grafana 3000:80
```
- Access Grafana dashboard at **`localhost:3000`**  
- Configure **Prometheus as the default data source**  

### **3️⃣ Define Custom Dashboards & Alerts**  
- Add **CPU, Memory, Pod Status** graphs to Grafana  
- Enable **email or Slack notifications** for failures  

---

## 📊 Recommended Grafana Dashboards  
| **Dashboard** | **Metrics** | **Use Case** |
|--------------|-----------|-------------|
| Cluster Health | CPU, Memory | Monitor AKS cluster performance |
| API Latency | Request Time | Track slow microservices responses |
| Pod Availability | Pod Status | Identify failing containers |
| Security Logs | Failed Auth | Detect unauthorized access attempts |

---