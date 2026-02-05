resource "github_repository" "repo" {
  count       = var.action == "create_repo" && var.repository_name != "" ? 1 : 0
  name        = var.repository_name
  description = "Repositório gerenciado pelo Terraform"
  visibility  = "public"
}

resource "github_team" "team" {
  name        = var.team_name
  count       = var.action == "create_team" && var.team_name != "" ? 1 : 0
  description = "Time gerenciado pelo Terraform"
  privacy     = "closed"
}

resource "github_team_membership" "team_membership" {
  for_each = var.action == "add_member" && var.team_name != "" && length(local.team_members_list) > 0 ? toset(local.team_members_list) : []
  team_id  = github_team.team.id
  username = each.value
  role     = "member"
}

resource "github_team_repository" "team_repo" {
  count      = var.action == "add_team_repo" && var.team_name != "" && var.repository_name != "" ? 1 : 0
  team_id    = github_team.team.id
  repository = github_repository.repo.name
  permission = var.team_permission
}