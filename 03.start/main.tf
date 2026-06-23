variable "my_var" {
  default="var2"
}

resource "local_file" "abc" {
  content = var.my_var
  filename = "${path.module}/abc.txt"
}



# variable "my_password" {
#   default = "password"
#   sensitive = true 
# }

# resource "local_file" "abc" {
#   content  = var.my_password
#   filename = "${path.module}/abc.txt"
# }


# data "local_file" "abc" {
#   filename = local_file.abc.filename
# }

# resource "local_file" "def" {
#   content = data.local_file.abc.content
#   filename = "${path.module}/def.txt"
# }

# variable "string" {
#   type = string 
#   description = "var string"
#   default = "myString"
# }

# variable "number"{
#   type = number
#   default = 123
# }

# variable "boolean"
# {
#   default = true
# }

# variable "list" {
#   default = [
#     "google",
#     "vmware",
#     "amazon",
#     "microsoft"
#   ]
# }


# output "list_index_0" {
#   value = var.list.0
# }

# output "list_all"{
#   value = [
#     for name in var.list :
#     upper(name)
#   ]
# }

# variable "map" {
#   default = {
#     aws = "amazon",
#     azure = "microsoft",
#     gcp = "google"
#   }
# }

# variable "set" {
#   type = set(string)
#   default = [
#     "google",
#     "vmware",
#     "amazon",
#     "microsoft"
#   ]
# }

# variable "object" {
#   type = object({name=string, age=number})
#   default = {
#     name = "abc"
#     age = 12
#   }
# }

# variable "tuple" {
#   type = tuple([string, number, bool])
#   default = ["abc", 12, true]
# }

# variable "ingress_rules" {
#   type = list(object({
#     port = number,
#     description = optional(string)
#     protocol = optional(string, "tcp"),
#   }))
#   default = [
#     { port = 80, description = "web"},
#     { port = 53, protocol = "udp"}
#   ]
# }

# resource "local_file" "def" {
#   content  = "lifecycle - step 5"
#   filename = "${path.module}/def.txt"
#   lifecycle {
#     #create_before_destroy = true
#     #prevent_destroy = true
#     ignore_changes = [content]
#   }
# }

# variable "file_name" {
#   default = "step6.txt"
# }

# resource "local_file" "step6" {
#   content = "lifecycle - step 6"
#   filename = "${path.module}/${var.file_name}"

#   lifecycle {
#     precondition {
#       condition = var.file_name == "step6.txt"
#       error_message = "file name is not \" step6.txt \" "
#     }
#   }

# }

# resource "local_file" "step7" {
# content = ""
# filename = "${path.module}/step7.txt"

# lifecycle {
#   postcondition {
#     condition = self.content != ""
#     error_message = "content cannot empty"
#   }
# }
# }

# output "step7_content" {
# value = local_file.step7.id
# }


# data "aws_availability_zones" "available" {
#   state = "available"
# }

# resource "aws_subnet" "primary" {
#   availability_zone = data.aws_availability_zones.available.names[0]
# }

# resource "aws_subnet" "secondary" {
#   availability_zone = data.aws_availability_zones.available.names[1]
# }


