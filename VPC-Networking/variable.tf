variable "cidr_block" {
  description = "Enter the CIDR range required for VPC"
  type        = string
  default     = "192.168.0.0/16"
}


variable "enable_dns_hostnames" {
  description = "Enable DNS Hostname"
  type        = bool
  default     = null
}

variable "enable_dns_support" {
  description = "Enable DNS Support"
  type        = bool
  default     = null
}

variable "vpc_name" {
  description = "Tag Name to be assigned with VPC"
  type        = string
  default     = "art-prod-vpc"
}

variable "create_igw" {
  description = "Whether IGW needs to be created"
  type        = bool
  default     = null
}
variable "igw_tag" {
  description = "Mention Tag needs to be associated with internet gateway"
  type        = string
  default     = "art-prod-igw"
}

variable "public_subnet" {
  description = "enter the number of public subnets you need"
  type        = number
  default     = null
}

variable "public_subnets_cidr_1" {
  description = "Cidr Blocks"
  type        = string
  default     = "192.168.1.0/24"
}

variable "public_subnets_cidr_2" {
  description = "Cidr Blocks"
  type        = string
  default     = "192.168.2.0/24"
}

variable "map_public_ip_on_launch" {
  description = "It will map the public ip while launching resources"
  type        = bool
  default     = null
}

variable "public_subnet_tag_1" {
  description = "Tag for public subnet"
  type        = string
  default     = "art-public_subnet-1a"
}

variable "public_subnet_tag_2" {
  description = "Tag for public subnet"
  type        = string
  default     = "art-public_subnet-1b"
}

variable "database_subnets" {
  description = "CIDR block for database subnet"
  type        = list(any)
  default     = null
}

variable "database_subnets_cidr_1" {
  description = "mention the CIDR block for database subnet"
  type        = string
  default     = "192.168.3.0/24"
}
variable "database_subnets_cidr_2" {
  description = "mention the CIDR block for database subnet"
  type        = string
  default     = "192.168.4.0/24"
}

variable "database_subnet_tag_1" {
  description = "Tag for Private Subnet"
  type        = string
  default     = "art-private_subnet-1a"
}
variable "database_subnet_tag_2" {
  description = "Tag for Private Subnet"
  type        = string
  default     = "art-private_subnet-1b"
}

variable "public_route_table" {
  description = "Tag name for public route table"
  type        = string
  default     = "art-public_route"
}

variable "database_route_table" {
  description = "Tage for database route table"
  type        = string
  default     = "database_route_table"
}