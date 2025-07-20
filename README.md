# 🧩 springboot-websocket-chat

A real-time chat application built with Spring Boot and WebSocket, designed for scalable, containerized deployment on AWS ECS (Fargate) using a fully automated CI/CD pipeline.

---

## 🚀 Project Overview

This project demonstrates a **Spring Boot WebSocket** application configured for real-time communication and optimized for deployment via AWS ECS + CI/CD (ECR + Fargate). The goal is a low-maintenance, scalable system with a production-ready pipeline and ALB (Application Load Balancer) WebSocket support.

---

### ✅ Scope

- Containerize Spring Boot app using Docker
- Configure GitHub Actions (or AWS CodePipeline) for CI/CD
- Automate build → ECR push → ECS (Fargate) deployment
- Set up Application Load Balancer for WebSocket routing
- Optional: Terraform IaC for repeatable infrastructure

---

## ⚙️ Tech Stack

- **Backend**: Spring Boot, WebSocket (STOMP/SockJS optional)
- **Containerization**: Docker
- **CI/CD**: GitHub Actions / AWS CodePipeline
- **Cloud**: AWS ECS (Fargate), ECR, ALB
- **IaC (optional)**: Terraform

---

## 📦 CI/CD Pipeline (GitHub Actions)

