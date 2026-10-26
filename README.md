# DevOps Capstone

![Build Status](https://github.com/nikhilkardile9699/devops-capstone-project/actions/workflows/ci-build.yaml/badge.svg)

## Project Overview

The **DevOps Capstone Project** demonstrates the development, testing, containerization, and deployment of an Accounts Microservice using modern DevOps practices.

The application provides REST API endpoints to create, read, update, list, and delete customer accounts. It uses Flask and SQLAlchemy and incorporates automated testing, code quality checks, Docker, Kubernetes, and CI/CD pipeline concepts.

## Project Objectives

- Develop a RESTful Accounts Microservice.
- Implement CRUD operations for account management.
- Perform automated unit testing.
- Apply static code analysis using Flake8.
- Implement security headers and CORS.
- Containerize the application using Docker.
- Deploy the application using Kubernetes/OpenShift.
- Automate build and deployment workflows using CI/CD pipelines.

## Technologies Used

| Technology | Purpose |
|---|---|
| Python | Backend programming |
| Flask | REST API development |
| Flask-SQLAlchemy | Database integration |
| SQLite | Data storage |
| Nose | Unit testing |
| Flake8 | Static code analysis |
| Docker | Application containerization |
| Kubernetes | Container orchestration |
| OpenShift | Application deployment |
| Tekton | CI/CD pipeline automation |
| GitHub Actions | Continuous integration |
| GitHub | Source code management |

## Project Structure

```text
DevOps-Capstone-Project/
│
├── .github/
│   └── workflows/
│       └── ci-build.yaml
│
├── service/
│   ├── __init__.py
│   ├── models.py
│   └── routes.py
│
├── tests/
│   └── test_app.py
│
├── Dockerfile
├── requirements.txt
├── setup.cfg
├── README.md
└── user-story.md
```

## Features

- Create a new account.
- Retrieve an account by ID.
- List all accounts.
- Update existing account details.
- Delete an account.
- Security headers.
- Cross-Origin Resource Sharing (CORS).
- Automated testing and code quality checks.

## API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| POST | `/accounts` | Create an account |
| GET | `/accounts` | List all accounts |
| GET | `/accounts/{id}` | Retrieve an account |
| PUT | `/accounts/{id}` | Update an account |
| DELETE | `/accounts/{id}` | Delete an account |

## Installation and Setup

Clone the repository:

```bash
git clone https://github.com/nikhilkardile9699/devops-capstone-project.git
```

Navigate into the project:

```bash
cd devops-capstone-project
```

Install dependencies:

```bash
pip install -r requirements.txt
```

Run the application:

```bash
flask run
```

## Running Tests

Run the automated tests:

```bash
nosetests
```

## Static Code Analysis

Run Flake8:

```bash
flake8
```

## Docker Instructions

Build the Docker image:

```bash
docker build -t accounts-service .
```

Run the Docker container:

```bash
docker run -p 8080:8080 accounts-service
```

## Kubernetes Deployment

The Accounts Microservice is containerized and deployed using Kubernetes/OpenShift.

Useful commands:

```bash
oc get deployments
oc get pods
oc get services
oc get replicasets
```

## CI/CD Pipeline

The project demonstrates a CI/CD workflow using GitHub Actions and Tekton.

The pipeline includes:

1. Cloning the source repository.
2. Running static code analysis.
3. Executing automated unit tests.
4. Building and pushing the Docker image.
5. Supporting deployment automation.

## Author

**GitHub:** [nikhilkardile9699](https://github.com/nikhilkardile9699)

## Project Name

**DevOps Capstone – Accounts Microservice**
