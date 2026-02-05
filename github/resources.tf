resource "github_repository" "repo" {
  name        = var.repository_name
  description = "Repositório gerenciado pelo Terraform"
  visibility  = "private"
}

resource "github_team" "team" {
  name        = var.team_name
  description = "Time gerenciado pelo Terraform"
  privacy     = "closed"
}

resource "github_team_membership" "team_membership" {
  for_each = toset(var.team_members)
  team_id  = github_team.team.id
  username = each.value
  role     = "member"
}

resource "github_team_repository" "team_repo" {
  team_id    = github_team.team.id
  repository = github_repository.repo.name
  permission = var.team_permission
}