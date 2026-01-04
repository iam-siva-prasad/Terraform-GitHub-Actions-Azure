# Git-Terraform-Azure-DevOps-Azure-Resource


🚀 Azure DevOps CI/CD for Terraform Infrastructure

📌 Overview

This project implements a fully automated CI/CD pipeline using Azure DevOps and Terraform to provision and manage Azure resources securely and efficiently.
✅ Key Features


![Git-Terraform-Azure-DevOps-Azure-Resource.png](https://github.com/iam-siva-prasad/Git-Terraform-Azure-DevOps-Azure-Resource/blob/main/Git-Terraform-Azure-DevOps-Azure-Resource.png?raw=true)


**Continuous Integration (CI)**

Automatically triggered when changes are pushed and merged into the main branch in Azure Repos.
Runs Terraform validate and plan to ensure code quality and generate an execution plan.
Publishes the plan as an artifact for review.



**Continuous Delivery (CD)**

Includes approval gates for compliance and change control.
Applies the validated Terraform plan to Azure resources after approval.
Ensures deployments are predictable and auditable.




**🏗️ Architecture**

Source Control: Azure Repos (Git)
Pipeline: Azure DevOps YAML pipeline
Infrastructure as Code: Terraform
Backend: Azure Storage for remote state management
Secrets Management: Azure DevOps secure pipeline variables (or Azure Key Vault)
Environment Approvals: Azure DevOps Environments for gated deployments


**🔐 Security & Compliance**

All sensitive values (client IDs, secrets, subscription IDs, storage access keys) are stored in secure pipeline variables or Key Vault, never in code.
RBAC enforced:

Service Principal has Contributor on target subscription/resource groups.
Storage Blob Data Contributor on the state storage account.


Approval gates ensure manual validation before production changes.
Audit logs and artifacts retained for compliance.


⚙️ Workflow

**Developer Workflow**

Commit changes → Create PR → Merge to main.


**CI Stage**

Triggered on main merge.
Runs terraform init, validate, and plan.
Publishes tfplan.out artifact.


**CD Stage**

Requires approval.
Downloads plan artifact.
Runs terraform apply using the exact plan file.




**✅ Benefits**

Faster Delivery: Automates repetitive tasks, reducing manual effort.
Improved Security: Secrets stored securely; RBAC enforced.
Compliance & Auditability: Approval gates, artifact retention, and logs provide full traceability.
Reduced Risk: Eliminates manual errors and ensures consistent deployments.


**📦 Backend Configuration**

Terraform state is stored in Azure Storage:
Terraformterraform {  backend "azurerm" {    resource_group_name  = "1-ae2781de-playground-sandbox"    storage_account_name = "prodstoragesiva01"    container_name       = "state-file"    key                  = "prod.terraform.tfstate"  }}Show more lines

**🔧 How to Use**

Clone the repo.
Configure pipeline variables:

ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_TENANT_ID, ARM_SUBSCRIPTION_ID, ARM_ACCESS_KEY.
