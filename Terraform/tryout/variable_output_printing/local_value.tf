variable list_ite {
  type        = list
  default     = ["1", 2, false]
  description = "description"
}


locals {
  count = length(var.list_ite)
  my_local = var.list_ite[count.index]
}

output print_local {
  value       = local.my_local
  #sensitive   = true
  #description = "description"
  #depends_on  = []
}

