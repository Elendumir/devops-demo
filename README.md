## DecOps Monitoring $ LOgging Stack (Prometheus + Grafana + Loki + Alertmanager)

## ABOUT THE PROJECT

This project is a complete monitoring and logging stack built using Docker Compose.

It includes:
- Metrics collection (Prometheus + cAdvisor)
- Visualization (Grafana)
- Alerting system (Alertmanager + Telegram)
- Log aggregation (Loki + Promtail)
- HTTP monitoring (Blackbox exporter)

The goal of this project is to simulate a real-world DevOps environment and practice observability.

## ARCHITECTURE

- Flask app — test application
- Nginx — reverse proxy
- Prometheus — metrics collection
- cAdvisor — container metrics
- Alertmanager — alert routing
- Grafana — dashboards
- Loki — log storage
- Promtail — log collector
- Blackbox exporter — HTTP checks


## DATA-FLOW
Metrics:
Flask/Nginx - cAdvisor - Prometheus - ALertmanager - Telegram

Logs:
Containers - Promtail - Loki - Grafana

## HOW TO RUN 
``` bash
git clone https://github.com/Elendumir/devops-demo
cd monitoring
docker-compose  up -d
```
## SERVICES 

- Grafana: http://localhost:3000
- Prometheus: http://localhost:9090
- Alertmanager: http://localhost:9093

Also project has alerts:
			 - ContainerDown
			 - HighCpu
			 - HighMemory
			 - HTTP probe failure

Alerts are sent to Telegram

## LOGGING

Logs are collected using Promtail and stored in Loki.
Example query: ```logql {container="nginx-proxy"}```

## DASHBOARD
Grafana dashboard :
- CPU
- Memory
- Container status
- HTTP checks
- Logs (loki) 

## TECH STACK
- Docker / Docker Compose
- Prometheus
- Grafana
- Loki
- Alertmanager
- Nginx
- Flask 

## FEATURES
- Real-time monitoring of containers
- Alerting in Telegram
- Centralized logging with loki
- Correlation bettwen mentric, logs and alerts


## SCREENSHOTS
### Grafana dashboard
Monitoring CPU, memory usage and container status.

![Grafana](monitoring/screenshots/grafana.png)

### Loki logs
Centralized logs collected from all containers.

![Loki](monitoring/screenshots/loki.png)

### Alert
Example of alerts(ContainerDown, HighCPU, etc.)

![Alerts](monitoring/screenshots/alerts.png)

