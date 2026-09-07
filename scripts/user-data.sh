#!/bin/bash

set -e

dnf update -y

dnf install -y docker

systemctl enable docker
systemctl start docker

docker pull nginx:alpine

mkdir -p /opt/aws-terraform-app

cat <<'EOF' > /opt/aws-terraform-app/index.html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AWS Terraform Infrastructure</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: #0f172a;
      color: #e2e8f0;
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }

    .container {
      max-width: 700px;
      padding: 40px;
      text-align: center;
      background: #1e293b;
      border-radius: 16px;
      box-shadow: 0 20px 50px rgba(0, 0, 0, 0.35);
    }

    h1 {
      margin-bottom: 16px;
      font-size: 36px;
    }

    p {
      font-size: 18px;
      line-height: 1.6;
      color: #cbd5e1;
    }

    .status {
      margin-top: 24px;
      padding: 12px 20px;
      display: inline-block;
      border-radius: 999px;
      background: #14532d;
      color: #bbf7d0;
      font-weight: bold;
    }

    .stack {
      margin-top: 24px;
      font-size: 16px;
      color: #94a3b8;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>AWS + Terraform</h1>

    <p>
      Infraestrutura provisionada automaticamente com Terraform na AWS.
    </p>

    <div class="status">
      Aplicação online
    </div>

    <div class="stack">
      AWS EC2 • VPC • Docker • Nginx • Terraform
    </div>
  </div>
</body>
</html>
EOF

docker rm -f aws-terraform-web 2>/dev/null || true

docker run -d \
  --name aws-terraform-web \
  --restart unless-stopped \
  -p 80:80 \
  -v /opt/aws-terraform-app/index.html:/usr/share/nginx/html/index.html:ro \
  nginx:alpine