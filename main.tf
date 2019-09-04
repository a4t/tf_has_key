locals {
  dummy = "This local is empty dummy string."
  tmp_map = merge({
    "${var.value}" : local.dummy
  }, var.map)
}
