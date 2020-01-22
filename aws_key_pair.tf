resource "aws_key_pair" "developer" {
   key_name = "developer"
   public_key = "${file("~/.ssh/id_rsa.pub")}" 
} 

resource "aws_key_pair" "developer2" {
  key_name = "developer2"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
