output "repository_url" {
  value = github_repository.repo.html_url
}

output "team_id" {
  value = github_team.team.id
}