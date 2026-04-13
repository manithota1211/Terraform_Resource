# resource "aws_subnet" "public_subnet" {
#     vpc_id = var.vpc_id
#     count = 2
#     cidr_block = var.public_subnet_cidr_block
#     availability_zone = var.public_availability_zone
#     tags = {
#         Name = var.public_subnet_id
#     }
# }

# resource "aws_subnet" "private_subnet" {
#     vpc_id = var.vpc_id
#     count = 2
#     cidr_block = var.private_subnet_cidr_block
#     availability_zone = var.private_availability_zone
#     tags = {
#         Name = var.private_subnet_id
#     }
# }

# resource "aws_subnet" "db" {
#     vpc_id = var.vpc_id
#     count = 2
#     cidr_block = var.db_subnet_cidr_block
#     availability_zone = var.db_availability_zone
#     tags = {
#         Name = var.db_subnet_id
#     }
# }

resource "aws_subnet" "public_subnet" {
  vpc_id            = var.vpc_id
  count             = length(var.public_subnet_cidr_block)
  cidr_block        = var.public_subnet_cidr_block[count.index]
  availability_zone = var.public_availability_zone[count.index]
  tags = {
    Name = var.public_subnet_id[count.index]
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = var.vpc_id
  count             = length(var.private_subnet_cidr_block)
  cidr_block        = var.private_subnet_cidr_block[count.index]
  availability_zone = var.private_availability_zone[count.index]
  tags = {
    Name = var.private_subnet_id[count.index]
  }
}

resource "aws_subnet" "db" {
  vpc_id            = var.vpc_id
  count             = length(var.db_subnet_cidr_block)
  cidr_block        = var.db_subnet_cidr_block[count.index]
  availability_zone = var.db_availability_zone[count.index]
  tags = {
    Name = var.db_subnet_id[count.index]
  }
}
