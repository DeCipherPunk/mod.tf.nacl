
resource "aws_network_acl" "mod_network_acl" {
  vpc_id = var.mod_network_vpc_id

  subnet_ids = var.mod_network_acl_subnet_ids


  tags = {
    Name = join("", [var.stack_prefix, "_nacl"])
    Environment = var.stack_environment
    Role = join("", [var.stack_prefix, "_network"])
    Cost_Center = var.stack_cost_center
  }
}