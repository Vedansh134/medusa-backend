# defined a ECS cluster with the name "my-cluster"
resource "aws_ecs_cluster" "medusa-backend-cluster" {
  name = "medusa-backend-cluster"
  tags = {
    Name = "medusa-backend"
  }
}

# defined a ECS task definition with the name "nginx-task"
resource "aws_ecs_task_definition" "medusa-backend-task" {
  family = "medusa-backend-task"
  network_mode = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu = "256"
  memory = "512"
  container_definitions = jsonencode([{
    name      = "medusa-backend"
    image     = "637423477239.dkr.ecr.ap-south-1.amazonaws.com/medusa-backend:latest"
    essential = true
    cpu = 256
    memory = 512
    portMappings = [
      {
        containerPort = 9000
        hostPort = 9000
        protocol = "tcp"
      }
    ]
  }])
  tags = {
    Name = "nginx-task"
  }
}

# defined a ECS service with the name "nginx-service"
resource "aws_ecs_service" "medusa-backend-service" {
  name = "medusa-backend-service"
  cluster = aws_ecs_cluster.medusa-backend-cluster.id
  task_definition = aws_ecs_task_definition.medusa-backend-task.arn
  desired_count = 2
  launch_type = "FARGATE"
  network_configuration {
    subnets = [aws_subnet.public_subnet.id]
    security_groups = [aws_security_group.ecs-sg.id]
    assign_public_ip = true
  }
}
