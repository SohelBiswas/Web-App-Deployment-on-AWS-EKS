provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "sohel-vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_eks_cluster" "sohel-cluster" {
  name     = "sohel-cluster"
  role_arn = aws_iam_role.eks.arn
}
