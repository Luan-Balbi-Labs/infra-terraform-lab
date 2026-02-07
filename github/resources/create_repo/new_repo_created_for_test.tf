resource "github_repository" "repo" {
  name        = new_repo_created_for_test
  description = "Repositório gerenciado pelo Terraform"
  visibility  = "public"
}
