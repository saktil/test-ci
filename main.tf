resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {

    edit           = "leo"
    env            = "master"
    tambah-tag     = "tagnya-nambah"
    team_ownership = "sre-intern"
    upload-to-gcb  = "cloud-build"
    yor_trace      = "22097c1d-f034-47fa-a131-4a121dd3beb6"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-west-2a"

  tags = {


    edit           = "leo"
    env            = "master"
    tambah-tag     = "tagnya-nambah"
    team_ownership = "sre-intern"
    upload-to-gcb  = "cloud-build"
    yor_trace      = "e6538754-9aae-46d3-baf1-0cbcb3ff351b"
  }
}

resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {


    edit           = "leo"
    env            = "master"
    tambah-tag     = "tagnya-nambah"
    team_ownership = "sre-intern"
    upload-to-gcb  = "cloud-build"
    yor_trace      = "ad6cc389-31e5-49ac-9a9a-6f61346b4e0d"
  }
}

resource "aws_instance" "foo" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }
  tags = {

    edit           = "leo"
    env            = "master"
    tambah-tag     = "tagnya-nambah"
    team_ownership = "sre-intern"
    upload-to-gcb  = "cloud-build"
    yor_trace      = "df106c0d-18f7-4626-a0f0-da5b3b920240"
  }

}

