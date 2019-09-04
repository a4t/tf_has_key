output "bool" {
  value = local.tmp_map[var.value] == local.dummy ? false : true
}
