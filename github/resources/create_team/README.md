resource "github_team" "team" {
    name        = ${{ github.event.inputs.team_name }}
    description = "Time gerenciado pelo Terraform"
    privacy     = "closed"
}