# defined a ECS cluster with the name "my-cluster"
resource "aws_ecs_cluster" "nginx-cluster" {
  name = "nginx-cluster"
  tags = {
    Name = "nginx-cluster"
  }
}

# defined a ECS task definition with the name "nginx-task"
resource "aws_ecs_task_definition" "taskdef" {
  family = "nginx-task"
  network_mode = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu = "256"
  memory = "512"
  container_definitions = jsonencode([{
    name = "nginx"
    image = "nginx:latest"
    essential = true
    cpu = 256
    memory = 512
    portMappings = [
      {
        containerPort = 80
        hostPort = 80
        protocol = "tcp"
      }
    ]
  }])
  tags = {
    Name = "nginx-task"
  }
}

# defined a ECS service with the name "nginx-service"
resource "aws_ecs_service" "nginx-service" {
  name = "nginx-service"
  cluster = aws_ecs_cluster.nginx-cluster.id
  task_definition = aws_ecs_task_definition.taskdef.arn
  desired_count = 2
  launch_type = "FARGATE"
  network_configuration {
    subnets = [aws_subnet.public_subnet.id]
    security_groups = [aws_security_group.ecs-sg.id]
    assign_public_ip = true
  }
}
