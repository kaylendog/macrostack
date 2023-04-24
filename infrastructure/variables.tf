variable "kubernetes_host" {
  type        = string
  description = "The host of the Kubernetes cluster"
}

variable "kubernetes_cluster_ca_certificate" {
  type        = string
  description = "The base64 encoded cluster CA certificate"
}

variable "postgres_version" {
  type        = string
  description = "Postgres version"
  default     = "9.6"
}

variable "postgres_password" {
  type        = string
  description = "The password for the default user"
  default     = "postgres"
}

variable "consul_version" {
  type        = string
  description = "Consul version"
  default     = "1.15.2"
}

