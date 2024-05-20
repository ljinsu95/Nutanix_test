# 클러스터 전체 조회
data "nutanix_clusters" "clusters" {}

# 클러스터 조회
### https://registry.terraform.io/providers/nutanix/nutanix/latest/docs/data-sources/cluster
data "nutanix_cluster" "cluster" {
  depends_on = [data.nutanix_clusters.clusters]
  
  cluster_id = data.nutanix_clusters.clusters.entities.0.metadata.uuid
}

