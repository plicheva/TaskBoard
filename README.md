Task Board – Terraform Azure Deployment Lab

* This repo needs to be run after Storage

This repository contains a Terraform lab that deploys a complete Azure environment for a Task Board web application using Infrastructure as Code (IaC).

The Terraform configuration (main.tf, variables.tf, and terraform.tfvars) provisions an Azure Resource Group, Azure SQL Server, SQL Database, firewall rule, App Service Plan (Linux F1), and a Linux Web App running .NET 6. A random integer is used to generate unique resource names. The Web App is configured with a connection string to the Azure SQL Database and is integrated with a GitHub repository for source control deployment.

Deployment is automated using a GitHub Actions workflow called “Terraform Plan and Apply.” The workflow runs on every push to the main branch and consists of two stages:

Terraform Plan – Initializes Terraform, validates formatting, generates an execution plan, and saves it as an artifact.

Terraform Apply – Downloads the saved plan and applies it to ensure controlled and consistent infrastructure deployment.

Azure authentication is handled securely using service principal credentials stored in GitHub Secrets.

This lab demonstrates end-to-end cloud infrastructure automation using Terraform, Azure, and GitHub Actions.
