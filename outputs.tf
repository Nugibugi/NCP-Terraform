output "Cluster_ID" {
    value = ncloud_nks_cluster.PRD_ONEPAY_Cluster.id   
}

output "Cluster_Endpoint" {
    value = ncloud_nks_cluster.PRD_ONEPAY_Cluster.endpoint   
}

output "Nodepool_ID" {
    value = ncloud_nks_node_pool.PRD_ONEPAY_NODEPOOL.id   
}

output "Nodepool_Instance_No" {
    value = ncloud_nks_node_pool.PRD_ONEPAY_NODEPOOL.instance_no   
}