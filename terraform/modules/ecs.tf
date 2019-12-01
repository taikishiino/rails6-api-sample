resource "aws_ecs_cluster" "ecs_cluster" {
  // terraform.workspaceにはterraform envが入る。今回の例ではpro
  name = "${var.name}-${terraform.workspace}" // variables.tfで定義した変数を参照
}