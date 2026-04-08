## DevOps DEMO PROJECT

Full-stack DevOps project with Kubernetes deployment, CI/CD  pipeline and monitoring stack 
## LIVE DEMO

https://www.430sgg.realhost-free.net



## PROJECT OVERVIEW

This project demonstrates a real-world DevOps  workflow:

- Containerized application (Flask + Nginx)
- Kubernetes deployment  (k3s on VPS)
- CI/CD pipeline using GitHub Actions
- Infrastructure provisioning with Terraform
- Monitoring stack (Prometheus + Grafana + Loki) 

The goal is to simulate a production-like environment

## ARCHITECTURE (Production)

- **Frontend / Backend**: Flask app
- **Reverse Proxy**: Nginx
- **Containerization**: Docker
- **Orchestration**: Kubernetes (k3s)
- **CI/CD**: GitHUb Actions
- **Monitoring**:
  - Prometheus
  - Grafana
  - Loki
  - Alertmanager

## TECH STACK

- Docker / Docker Compose
- Kubernetes (k3s)
- Nginx (Ingress)
- GitHub Actions (CI/CD)
- Terraform
- Prometheus + Grafana + Loki
- Alertmanager (Telegram)


## DEPLOYMENT OPTIONS

#1️⃣ KUBERNETES (Production - VPS)

Deployed on VPS using k3s

```bash
cd k8s/app
kubectl apply -f .
```

Includes:

- Deployment
- Service
- Ingress
- TLS (cert-manager)



#2️⃣ MONITORING STACK (Docker Compose)

Run locally:

```bash
cd monitoring
docker-compose up -d
```

Services:

- Prometheus
- Grafana
- Loki
- Alertmanager
- Blackbox exporter


#3️⃣ KUBERNETES MONITORING (Optional)

Located in:

k8s/monitoring/

Not enabled on VPS due to resource limits



#4️⃣ TERRAFORM (Infrastructure)

```bash
cd terraform
terraform init
terraform apply
```

## PROJECT STRUCTURE

.
├── app/                # Flask application
├── k8s/
│   ├── app/            # Kubernetes manifests (app)
│   ├── monitoring/     # Kubernetes monitoring stack
├── monitoring/         # Docker Compose monitoring
├── nginx/              # Nginx config
├── terraform/          # Infrastructure
├── .github/workflows/  # CI/CD



## CI/CD PIPELINE

CI/CD is implemented using GitHub Actions

##WORKFLOW:

1. Developer pushescode to GitHub
2. GitHub Actions triggers pipeline
3. Pipeline connects to VPS via SSH
4. Kubernetes manifestst are applied
5. Deployment is restarted 

 

## FEATURES

- Kubernetes deployment
- CI/CD automation
- Monitoring & logging
- TLS (HTTPS)
- Alerts (Telegram)




## SCREENSHOTS
### App
App on a VPS Server

![App](monitoring/screenshots/app.png)

### Grafana dashboard
Monitoring CPU, memory usage and container status.

![Grafana](monitoring/screenshots/grafana.png)

### Loki logs
Centralized logs collected from all containers.

![Loki](monitoring/screenshots/loki.png)

### Alert
Example of alerts(ContainerDown, HighCPU, etc.)

![Alerts](monitoring/screenshots/alerts.png)

## NOTES
- Monitoring in Kubernetes disabled due to VPS limits
- Production setup uses minimal resources
