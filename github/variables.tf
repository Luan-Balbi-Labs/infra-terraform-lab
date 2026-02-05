variable "github_token" {
  description = "GitHub token"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub organization"
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
  type        = list(string)
  default     = []
}

variable "team_permission" {
  description = "Permissão do time no repositório"
  type        = string
  default     = "push"
}