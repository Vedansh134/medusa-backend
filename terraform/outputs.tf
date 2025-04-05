# output for vpc and ecs cluster
output "vpc_id" {
  value = aws_vpc.vpc_ecs.id
}

# output for ecs cluster name
output "cluster_name" {
  value = aws_ecs_cluster.nginx-cluster.name
}