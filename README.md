
# github-actions-ci-pipeline
=======
# GitHub Actions CI Pipeline

A production-grade CI pipeline that automatically tests, lints,
builds, and pushes a Dockerized Node.js app to Docker Hub
on every push to main.

## Pipeline Stages

| Stage              | Tool          | Description                        |
|--------------------|---------------|------------------------------------|
| Run Tests          | Node.js       | Runs unit tests before building    |
| Lint Dockerfile    | Hadolint      | Catches bad Dockerfile practices   |
| Build & Push Image | Docker Buildx | Multi-stage build pushed to Docker Hub |

## Pipeline Flow

Push to main
     ↓
Run Tests → Lint Dockerfile → Build & Push Image

## Tools
- GitHub Actions
- Docker + Docker Hub
- Hadolint
- Node.js 18 Alpine

## Secrets Required

| Secret              | Description               |
|---------------------|---------------------------|
| DOCKERHUB_USERNAME  | Your Docker Hub username  |
| DOCKERHUB_TOKEN     | Docker Hub access token   |

## Author
Emmanuel Ubani — Cloud & DevOps Engineer
LinkedIn: https://linkedin.com/in/ubaniemmanuel
GitHub: https://github.com/Eaglewings966
a0dc110 (feat: GitHub Actions CI pipeline with Docker build and push)
