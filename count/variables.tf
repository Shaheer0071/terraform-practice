variable "intsances" {
    default = ["mysql","backend","frontend"]
  
}
variable "zone_id" {
    default = "Z0303883E6ZLFMXCPUCZ"
  
}
variable "domain_name" {
    default = "mt15.store"
}
variable "coommon_tags" {
    type = map
    default = {
        project = "expense"
        environment = "dev"
        
    }
  
}