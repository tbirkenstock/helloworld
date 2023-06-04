region = "eu-central-1"

availability_zones = ["eu-central-1a", "eu-central-1b"]

namespace = "bitly"

stage = "develop"

name = "helloworld"

default_security_group_deny_all = true
default_route_table_no_routes   = true
default_network_acl_deny_all    = true

ecs_launch_type = "FARGATE"

network_mode = "awsvpc"

ignore_changes_task_definition = false

assign_public_ip = true

propagate_tags = "TASK_DEFINITION"

deployment_minimum_healthy_percent = 100

deployment_maximum_percent = 200

deployment_controller_type = "ECS"

desired_count = 1

task_memory = 512

task_cpu = 256

container_name = "helloworld"

container_image = "106073365280.dkr.ecr.eu-central-1.amazonaws.com/helloworld:351ebe75cb522fc9bf502e31da539c575efd73c3"

container_memory = 256

container_memory_reservation = 128

container_cpu = 256

container_essential = true

container_readonly_root_filesystem = false

container_environment = [
  {
    name  = "string_var"
    value = "I am a string"
  },
  {
    name  = "true_boolean_var"
    value = true
  },
  {
    name  = "false_boolean_var"
    value = false
  },
  {
    name  = "integer_var"
    value = 42
  }
]

container_port_mappings = [
  {
    containerPort = 3000
    hostPort      = 3000
    protocol      = "tcp"
  }
]

force_new_deployment = true
redeploy_on_apply    = true