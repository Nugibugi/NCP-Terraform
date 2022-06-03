terraform {
  required_providers {
    ncloud = {
      source = "NaverCloudPlatform/ncloud"
    }
  }
  required_version = ">= 0.13"
}

provider "ncloud" {}

# NCP NKS Login Key Create
resource "ncloud_login_key" "loginkey" {
  key_name = format("%s-test-key", var.name)
}

# NCP NKS Cluster Create
resource "ncloud_nks_cluster" "PRD_ONEPAY_Cluster" {
    cluster_type            = var.cluster_type[0]
    k8s_version             = var.nks_version
    login_key_name          = ncloud_login_key.loginkey.key_name
    name                    = format("%s-test-c", var.name)
    subnet_no_list          = [var.nks_subnet]
    lb_private_subnet_no    = var.nks_lb_subnet
    kube_network_plugin     = var.nks_network_plugin
    vpc_no                  = var.vpc_no
    zone                    = var.zone[0]
}

# NCP NKS Nodepool Create
resource "ncloud_nks_node_pool" "PRD_ONEPAY_NODEPOOL" {
    cluster_uuid            = ncloud_nks_cluster.PRD_ONEPAY_Cluster.id
    node_pool_name          = format("%s-test-n", var.name)
    node_count              = var.node_count
    product_code            = var.product_code[0]
    subnet_no               = var.nks_subnet
}