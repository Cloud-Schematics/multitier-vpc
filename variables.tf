##############################################################################
# Account Variables
##############################################################################

variable ibmcloud_api_key {
  description = "The IBM Cloud platform API key needed to deploy IAM enabled resources"
  type        = string
}

variable unique_id {
    description = "A unique identifier need to provision resources. Must begin with a letter"
    type        = string
    default     = "multitier"
}

variable ibm_region {
    description = "IBM Cloud region where all resources will be deployed"
    type        = string
}

variable resource_group {
    description = "Name of resource group to create VPC"
    type        = string
    default     = "asset-development"
}

variable generation {
  description = "generation for VPC"
  type        = number
  default     = 2
}

##############################################################################


##############################################################################
# Network variables
##############################################################################

variable classic_access {
  description = "Enable VPC Classic Access. Note: only one VPC per region can have classic access"
  type        = bool
  default     = false
}

variable enable_public_gateway {
  description = "Enable public gateways, true or false"
  type        = bool
  default     = false
}

variable tier_1_cidr_blocks {
  description = "A list of tier subnet IPs"
  type        = list(string)
  default     = [
    "172.16.10.128/27", 
    "172.16.30.128/27", 
    "172.16.50.128/27"
  ] 
}

variable tier_2_cidr_blocks {
  description = "A list of tier subnet IPs"
  type        = list(string)
  default     = [
    "172.16.40.0/25", 
    "172.16.20.0/25", 
    "172.16.0.0/25"
  ]  
}

variable tier_3_cidr_blocks {
  description = "A list of tier subnet IPs"
  type        = list(string)
  default     = [
    "172.16.10.0/26", 
    "172.16.30.0/26", 
    "172.16.50.0/26"
  ]  
}

variable acl_rules_tier_1 {
  description = "Access control list rule set"
  type        = list(object({
      name        = string
      action      = string
      source      = string
      destination = string
      direction   = string
  }))
  
  default = [
    {
      name        = "egress"
      action      = "allow"
      source      = "0.0.0.0/0"
      destination = "0.0.0.0/0"
      direction   = "inbound"
    },
    {
      name        = "ingress"
      action      = "allow"
      source      = "0.0.0.0/0"
      destination = "0.0.0.0/0"
      direction   = "outbound"
    }
  ]
}

variable acl_rules_tier_2 {
  description = "Access control list rule set"
    type        = list(object({
      name        = string
      action      = string
      source      = string
      destination = string
      direction   = string
  }))
  
  default = [
    {
      name        = "egress"
      action      = "allow"
      source      = "0.0.0.0/0"
      destination = "0.0.0.0/0"
      direction   = "inbound"
    },
    {
      name        = "ingress"
      action      = "allow"
      source      = "0.0.0.0/0"
      destination = "0.0.0.0/0"
      direction   = "outbound"
    }
  ]
}

variable acl_rules_tier_3 {
  description = "Access control list rule set"
    type        = list(object({
      name        = string
      action      = string
      source      = string
      destination = string
      direction   = string
  }))
  
  default = [
    {
      name        = "egress"
      action      = "allow"
      source      = "0.0.0.0/0"
      destination = "0.0.0.0/0"
      direction   = "inbound"
    },
    {
      name        = "ingress"
      action      = "allow"
      source      = "0.0.0.0/0"
      destination = "0.0.0.0/0"
      direction   = "outbound"
    }
  ]
}

##############################################################################