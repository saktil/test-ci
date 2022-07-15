resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {

    edit                 = "leo"
    env                  = "master"
    git_commit           = "a23c01dff2cd47df15f6323d80808d7ad0f13449"
    git_file             = "main.tf"
    git_last_modified_at = "2022-07-15 05:49:33"
    git_last_modified_by = "leosaragih001@gmil.com"
    git_modifiers        = "leosaragih001"
    git_org              = "saktil"
    git_repo             = "test-ci"
    team_ownership       = "sre-intern"
    upload-to-gcb        = "cloud-build"
    yor_trace            = "22c0e5cc-60ad-4217-8d92-706b536395fe"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-west-2a"

  tags = {

    edit                 = "leo"
    env                  = "master"
    git_commit           = "a23c01dff2cd47df15f6323d80808d7ad0f13449"
    git_file             = "main.tf"
    git_last_modified_at = "2022-07-15 05:49:33"
    git_last_modified_by = "leosaragih001@gmil.com"
    git_modifiers        = "leosaragih001"
    git_org              = "saktil"
    git_repo             = "test-ci"
    team_ownership       = "sre-intern"
    upload-to-gcb        = "cloud-build"
    yor_trace            = "87256e52-bab9-4634-ac2b-5f311b40e261"
  }
}

resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {

    edit                 = "leo"
    env                  = "master"
    git_commit           = "a23c01dff2cd47df15f6323d80808d7ad0f13449"
    git_file             = "main.tf"
    git_last_modified_at = "2022-07-15 05:49:33"
    git_last_modified_by = "leosaragih001@gmil.com"
    git_modifiers        = "leosaragih001"
    git_org              = "saktil"
    git_repo             = "test-ci"
    team_ownership       = "sre-intern"
    upload-to-gcb        = "cloud-build"
    yor_trace            = "21b3935d-700d-44bb-a3af-043350d5fee1"
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

    edit                 = "leo"
    env                  = "master"
    git_commit           = "a23c01dff2cd47df15f6323d80808d7ad0f13449"
    git_file             = "main.tf"
    git_last_modified_at = "2022-07-15 05:49:33"
    git_last_modified_by = "leosaragih001@gmil.com"
    git_modifiers        = "leosaragih001"
    git_org              = "saktil"
    git_repo             = "test-ci"
    team_ownership       = "sre-intern"
    upload-to-gcb        = "cloud-build"
    yor_trace            = "e53ecbd8-5352-4012-bd19-f70a736e950e"
  }

}

