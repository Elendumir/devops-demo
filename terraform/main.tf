terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

#Docker network
resource "docker_network" "app_network" {
  name = "flask-network"
}

#Flask container
resource "docker_container" "flask_app" {
  name = "flask-app"
  image = "elendumir/devops-demo:1.0"

  networks_advanced {
    name = docker_network.app_network.name
  }

  ports {
    internal = 8000
    external = 5001
  }
}

#Nginx container

resource "docker_container" "nginx_proxy" {
  name = "nginx-proxy"
  image = "nginx:latest"

  networks_advanced {
    name = docker_network.app_network.name
  }
 
  ports {
    internal = 80
    external = 8080
  }
  
  volumes {
    host_path = "/opt/devops-demo/nginx/default.conf"
    container_path = "/etc/nginx/conf.d/default.conf"
  }

}
