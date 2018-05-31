resource "aws_key_pair" "ec2_keypair" {
  key_name = "ec2"
  public_key = "${file("${var.key_pair_name}")}"
  lifecycle {
    ignore_changes = ["public_key"]
  }
}


resource "aws_key_pair" "bastion_keypair" {
  key_name = "bastion"
  public_key = "${file("${var.bastion_key_pair_name}")}"
  lifecycle {
    ignore_changes = ["public_key"]
  }
}
