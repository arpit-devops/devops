locals {
  endpoints_items = flatten([for k, v in var.platforms : [for s, t in v : {
    s1 = s
    t1 = t
    k1 = k
    
  }]])
}

# locals {
#   endpoints_items = flatten([for k, v in var.platforms : [for s, t in v : {
#     name              = "${s}-${var.env}"
#     url               = t.url
#     platform          = k
#     verify_ssl        = t.verify_ssl
#     locations         = t.locations
#     frequency         = t.frequency
#     status            = t.status
#     validation_string = lookup(t, "validation_string", null)
#   }]])
# }




resource "random_pet" "example" {
  for_each = { for i in local.endpoints_items : "${i.platform}-${i.name}" => i }
}