resource "aws_instance" "instance" {
  ami = "ami-090252cbe067a9e58"
  instance_market_options {
    market_type = "spot"
    spot_options {
      spot_instance_type = "persistent"
      instance_interruption_behavior = "stop"
    }
  }
}