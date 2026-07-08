# Atlantis Demo

Small repository for learning Atlantis locally with ngrok and GitHub webhooks.

The Terraform configuration uses only the `hashicorp/local` provider, so it does
not create cloud resources.

Typical flow:

1. Open a pull request that changes `main.tf`.
2. Atlantis comments with a Terraform plan.
3. Approve the pull request.
4. Comment `atlantis apply` to apply the plan.
