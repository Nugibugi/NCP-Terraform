/*
variable access_key {
  default = "F8C51E40FAC626E3F099"
}

variable secret_key {
  default = "8F7E3845AFDF1C8384269D2C682D1C0AAB808283"
}

variable region {
  default = "FKR"
}
*/
variable "name" {
  description = "PJT Name"
  type        = string
  default     = "onepay-dev"
}

variable "zone" {
  description = "NCP PJT availability zone. FKR-1 index 0, FKR-2 index 1"
  type        = list(string)
  default     = ["FKR-1", "FKR-2"]
}

variable "vpc_no" {
  description = "NCP VPC NO"
  type        = string
  default     = "13546"
}

variable "cluster_type" {
  description = "NKS Cluster Type. 10ea index 0, 50ea index 1"
  type        = list(string)
  default     = ["SVR.VNKS.STAND.C002.M008.NET.SSD.B050.G002", "SVR.VNKS.STAND.C004.M016.NET.SSD.B050.G002"]
}

variable "nks_version" {
  type        = string
  default     = "1.21.9"
}

variable "nks_subnet" {
  type        = string
  default     = "20806"
}

variable "nks_lb_subnet" {
  description = "NKS Cluster Loadbalanver Only Subnet"
  type        = string
  default     = "20826"
}

variable "nks_network_plugin" {
  description = "NKS Cluster kube_network_plugin"
  type        = string
  default     = "cilium"
}


# NCP NKS Nodepool Variable

variable "node_count" {
  description = "NKS Cluster Nodepool Number of nodes."
  type        = string
  default     = "1"
}

variable "product_code" {
  description = "NKS Cluster Type. 10ea index 0, 50ea index 1"
  type        = list(string)
  default     = ["SVR.VNKS.STAND.C002.M008.NET.SSD.B050.G002", "SVR.VNKS.STAND.C004.M016.NET.SSD.B050.G002"]
}



