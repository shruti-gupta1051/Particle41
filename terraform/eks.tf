module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "18.29.0"

  cluster_name    = "particle41-eks"
  cluster_version = "1.23"

  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = false 

  vpc_id     = aws_vpc.main_vpc.id
  subnet_ids = var.privateSubnetNames

  enable_irsa = true

  eks_managed_node_group_defaults = {
    disk_size = 50
  }

  eks_managed_node_groups = {
    general = {
      desired_size = 2  # Set the desired size to 2 nodes
      min_size     = 2  # Minimum of 2 nodes
      max_size     = 2  # Maximum of 2 nodes

      labels = {
        role = "general"
      }

      instance_types = ["m6a.large"]  # Use m6a.large instance type for the nodes
      capacity_type  = "ON_DEMAND"
    }
  }

  tags = {
    Environment = "staging"
  }
}