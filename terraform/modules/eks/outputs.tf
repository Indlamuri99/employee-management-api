output "cluster_name" {

  description = "EKS Cluster Name"

  value = aws_eks_cluster.this.name

}


output "cluster_arn" {

  description = "EKS Cluster ARN"

  value = aws_eks_cluster.this.arn

}


output "cluster_endpoint" {

  description = "EKS Cluster Endpoint"

  value = aws_eks_cluster.this.endpoint

}


output "cluster_certificate_authority_data" {

  description = "Cluster Certificate Authority Data"

  value = aws_eks_cluster.this.certificate_authority[0].data

}


output "node_group_name" {

  description = "Managed Node Group Name"

  value = aws_eks_node_group.this.node_group_name

}