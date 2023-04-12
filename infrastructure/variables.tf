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
