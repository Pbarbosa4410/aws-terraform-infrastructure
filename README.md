# ☁️ AWS Terraform Infrastructure

![Terraform](https://img.shields.io/badge/Terraform-Infrastructure_as_Code-844FBA?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-Cloud-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Container-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Nginx](https://img.shields.io/badge/Nginx-Web_Server-009639?style=for-the-badge&logo=nginx&logoColor=white)

Projeto de **Infrastructure as Code (IaC)** utilizando **Terraform** para provisionar uma infraestrutura funcional na **AWS**.

A infraestrutura cria uma rede VPC, subnet pública, Internet Gateway, tabela de rotas, Security Group e uma instância EC2 preparada para executar uma aplicação web containerizada com **Docker + Nginx**.

O objetivo é demonstrar conceitos utilizados em ambientes DevOps, com foco em:

- automação;
- infraestrutura versionada;
- reprodutibilidade;
- segurança de rede;
- cloud computing;
- boas práticas de Infrastructure as Code.

---

# 🎯 Objetivo

Demonstrar o provisionamento automatizado de infraestrutura AWS utilizando Terraform, eliminando a necessidade de criação manual de recursos pelo console.

Com Infrastructure as Code, a infraestrutura passa a ser:

- versionável;
- reproduzível;
- auditável;
- automatizada;
- reutilizável;
- controlada através de Git.

---

# 🏗️ Arquitetura

```mermaid
flowchart TD
    USER[Usuário / Internet]

    IGW[Internet Gateway]

    VPC[AWS VPC]

    SUBNET[Public Subnet]

    RT[Route Table]

    SG[Security Group]

    EC2[EC2 Instance]

    DOCKER[Docker]

    NGINX[Nginx]

    USER --> IGW
    IGW --> VPC
    VPC --> SUBNET
    SUBNET --> RT
    RT --> SG
    SG --> EC2
    EC2 --> DOCKER
    DOCKER --> NGINX
