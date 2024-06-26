resource "aws_instance" "instance" {
  ami = "ami-031d574cddc5bb371"
  instance_type = var.instance_type
  instance_market_options {
    market_type = "spot"
    spot_options {
      spot_instance_type = "persistent"
      instance_interruption_behavior = "stop"
    }
  }
  tags = {
    Name = var.tagname
  }
}