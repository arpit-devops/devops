variable list1 {
  type        = list(string)
  default     = ["one", "two", "three"]
  description = "description"
}

output print_list {
  
  count = length(var.list1)
  value       = count.index
  
}

locals {
  name = value
}
