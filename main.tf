
resource "aws_instance" "my_vm" {
 ami           = var.ami //Ubuntu AMI
 instance_type = var.instance_type
#key_name      = "Oasis.pem" 
security_groups =["oasis-jenkins-4"]
#vpc_security_group_ids = [aws_security_group.example.id]
 tags = {
   Name = var.name_tag,
 }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install -y docker.io
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo usermod -a -G docker ubuntu
              sudo docker pull 123banzhang/nus_dmss_practicemodule_team3:0.1.0-SNAPSHOT # 拉取 Docker 镜像
              sudo docker run -d -p 8080:8080 123banzhang/nus_dmss_practicemodule_team3:0.1.0-SNAPSHOT # 运行容器
              EOF
}

