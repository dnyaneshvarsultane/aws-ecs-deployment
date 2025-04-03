# AWS ECS Deployment with GitHub Actions

This repository contains the Terraform configuration and GitHub Actions workflow to deploy a containerized application on Amazon ECS (EC2 launch type). Sensitive information is securely managed using GitHub Secrets.

---

## **How Sensitive Information is Stored**

Sensitive information, such as AWS credentials and database passwords, is stored in GitHub Secrets. These secrets are injected into the GitHub Actions workflow during runtime to ensure security.

### **Steps to Store Sensitive Information in GitHub Secrets**

1. Go to your GitHub repository.
2. Navigate to **Settings** > **Secrets and variables** > **Actions**.
3. Click **New repository secret**.
4. Add the following secrets:
   - `AWS_ACCESS_KEY_ID`: Your AWS access key ID.
   - `AWS_SECRET_ACCESS_KEY`: Your AWS secret access key.
   - `DB_PASSWORD`: The password for your MariaDB database.
   - `ECR_REPOSITORY_URL`: The URL of your Amazon ECR repository.

---

## **How Secrets Are Used in the Workflow**

The secrets are referenced in the GitHub Actions workflow (`deployment.yaml`) using the `${{ secrets.<SECRET_NAME> }}` syntax. For example:

```yaml
with:
  aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
  aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}