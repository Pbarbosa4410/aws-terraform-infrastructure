# AWS Terraform Infrastructure

Infraestrutura AWS provisionada com Terraform, criada com foco em Infrastructure as Code (IaC), automação, segurança, organização de ambientes e boas práticas DevOps.

O projeto provisiona uma infraestrutura simples e funcional na AWS contendo VPC, subnet pública, Internet Gateway, tabela de rotas, Security Group e uma instância EC2 executando uma aplicação web em Docker com Nginx.

---

## Objetivo

Demonstrar a criação de infraestrutura AWS utilizando Terraform de forma reproduzível e versionável.

O projeto foi desenvolvido para praticar conceitos utilizados em ambientes DevOps, incluindo:

- Infrastructure as Code (IaC)
- Terraform
- AWS
- VPC
- Subnets
- Internet Gateway
- Route Tables
- Security Groups
- EC2
- Docker
- Nginx
- Git
- GitHub

---

## Arquitetura

```mermaid
flowchart TD

    Internet[Internet]
    IGW[Internet Gateway]

    subgraph AWS[AWS Cloud]
        subgraph VPC[VPC - 10.0.0.0/16]
            RT[Public Route Table]

            subgraph SUBNET[Public Subnet - 10.0.1.0/24]
                SG[Security Group - HTTP 80]
                EC2[EC2 - Amazon Linux 2023]
                Docker[Docker]
                Nginx[Nginx]
                App[Aplicação Web]
            end
        end
    end

    Internet --> IGW
    IGW --> RT
    RT --> SUBNET
    SG --> EC2
    EC2 --> Docker
    Docker --> Nginx
    Nginx --> App