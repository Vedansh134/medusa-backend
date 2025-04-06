# output for vpc and ecs cluster
output "vpc_id" {
  value = aws_vpc.vpc_ecs.id
}

# output for ecs cluster name
output "cluster_name" {
  value = aws_ecs_cluster.medusa-backend-cluster.name
}

# output for ecs task definition arn
output "task_definition_arn" {
  value = aws_ecs_task_definition.medusa-backend-task.arn
}
