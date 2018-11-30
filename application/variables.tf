variable "region" {
  description = "AWS region"
  default     = "eu-central-1"
}

variable "operation_aws_account_number" {
  description = "AWS operation account number (without hyphens)"
}

variable "application_aws_account_number" {
  description = "AWS application account number (without hyphens)"
}

variable "product_domain_name" {
  description = "Name of product domain, will be used to create other names"
  default     = "pdname"
}

variable "environment_type" {
  description = "Type of environment (e.g. test, production)"
  default     = "test"
}

variable "k8s_cluster_name_postfix" {
  description = "Domain name of Kubernetes cluster (currently only k8s.local is supported)"
  default     = "k8s.local"
}

variable "ouputs_directory" {
  description = "Local directory where jsons will be saved"
  default     = "outputs"
}

variable "logs_not_resource" {
  description = "List of resources that log police will NotResource, empty least mean that Resource * is set"
  default     = []
  type        = "list"
}

variable "auto_IAM_mode" {
  description = "Create IAM Policy in AWS (default false)"
  default     = false
}

variable "auto_IAM_path_prefix" {
  description = "IAM path prefix for auto_IAM_mode"
  default     = "/"
}
