data "aws_eks_cluster" "eks_cluster" {
  name = module.eks.cluster_id  
}

data "aws_caller_identity" "current" {}

resource "aws_iam_role" "eks_role" {
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRoleWithWebIdentity"
        Effect    = "Allow"
        Principal = {
          Federated = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/${data.aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer}"
        }
      }
    ]
  })
}

