variable "github_token" {
  description = "GitHub token"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub organization"
  type        = string
}

variable "action" {
  description = "Ação desejada"
  type        = string
}

variable "repository_name" {
  description = "Nome do repositório"
  type        = string
}

variable "team_name" {
  description = "Nome do time"
  type        = string
}

variable "team_members" {
  description = "Lista de usuários do time"
  type        = string
  default     = ""
}

variable "team_permission" {
  description = "Permissão do time no repositório"
  type        = string
  default     = "push"
}

locals {
  team_members_list = (
    var.team_members == "" ? [] : split(",", var.team_members)
  )
}