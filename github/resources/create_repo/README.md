resource "github_repository" "repo" {
    name        = ${{ github.event.inputs.repository_name }}
    description = "Repositório gerenciado pelo Terraform"
    visibility  = "public"
}