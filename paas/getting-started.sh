#!/bin/bash
# ==============================================
# ==============================================
# Script para iniciar o uso da imagem Docker 
# Plataform as as  Service - PaaS. 
# 
# VERSION               0.0.1
# AUTHOR                Paulo Sergio da Silva
# EMAIL                 pss1suporte@gmail.com
# ==============================================
# ==============================================

# ==============================================
# ==============================================
# 1. Clonar o projeto:
git clone https://github.com/pssilva/paas-docker.git
# ==============================================
# ==============================================

# ==============================================
# ==============================================
# 2. Acessar a pasta:
cd paas-docker/paas
# ==============================================
# ==============================================

# ==============================================
# ==============================================
# 3. Baixar o jenkins:
wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
# ==============================================
# ==============================================


# ==============================================
# ==============================================
# 4. Construir (build) a imagem docker:
docker build -t ubuntu:PaaS-Docker .
# ==============================================
# ==============================================

# ==============================================
# ==============================================
# 5. Rodar a imagem - ubuntu:PaaS-Docker:
docker run -p 8080:8080 -p 8001:8001 -p 50000:50000 -i -t ubuntu:PaaS-Docker sh -c 'java -jar /root/jenkins.war > /var/log/jenkins-my-docker.log 2>&1'
# ==============================================
# ==============================================






