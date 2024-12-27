variable "vpcName" {
  type    = string
  default = "Particle41"
}

variable "publicSubnetNames" {
  type        = list(string)
  default     = ["Public-Subnet-1", "Public-Subnet-2"]
  description = "Names of the public subnets"
}

variable "privateSubnetNames" {
  type        = list(string)
  default     = ["Private-Subnet-1", "Private-Subnet-2"]
  description = "Names of the private subnets"
}

variable "availabilityZones" {
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
  description = "Availability zones for the subnets"
}

variable "internetGatewayName" {
  type        = string
  default     = "Particle41-IGW"
  description = "Name of the Internet Gateway"
}

variable "publicRouteTableName" {
  type        = string
  default     = "Particle41-Public-RT"
  description = "Name of the public route table"
}

variable "privateRouteTableName" {
  type        = string
  default     = "Particle41-Private-RT"
  description = "Name of the private route table"
}

variable "natGatewayName" {
  type        = string
  default     = "Particle41-NAT"
  description = "Name of the NAT Gateway"
}

variable "natElasticIpName" {
  type        = string
  default     = "Particle41-NAT-EIP"
  description = "Elastic IP allocation name for NAT Gateway"
}