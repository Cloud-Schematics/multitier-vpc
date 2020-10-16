
##############################################################################
# Create an ACL for ingress/egress used by tier 1 subnets in VPC
##############################################################################

resource ibm_is_network_acl multizone_acl_tier_1 {
      name = "${var.unique_id}-acl-tier-1"
      vpc  = ibm_is_vpc.vpc.id
      dynamic rules {
            for_each = var.acl_rules_tier_1
            content {
                  name        = rules.value.name
                  action      = rules.value.action
                  source      = rules.value.source
                  destination = rules.value.destination
                  direction   = rules.value.direction
            }
      }
}

##############################################################################


##############################################################################
# Create an ACL for ingress/egress used by tier 2 subnets in VPC
##############################################################################

resource ibm_is_network_acl multizone_acl_tier_2 {
      name = "${var.unique_id}-acl-tier-2"
      vpc  = ibm_is_vpc.vpc.id
      dynamic rules {
            for_each = var.acl_rules_tier_2
            content {
                  name        = rules.value.name
                  action      = rules.value.action
                  source      = rules.value.source
                  destination = rules.value.destination
                  direction   = rules.value.direction
            }
      }
}

##############################################################################


##############################################################################
# Create an ACL for ingress/egress used by tier 3 subnets in VPC
##############################################################################

resource ibm_is_network_acl multizone_acl_tier_3 {
      name = "${var.unique_id}-acl-tier-3"
      vpc  = ibm_is_vpc.vpc.id
      dynamic rules {
            for_each = var.acl_rules_tier_3
            content {
                  name        = rules.value.name
                  action      = rules.value.action
                  source      = rules.value.source
                  destination = rules.value.destination
                  direction   = rules.value.direction
            }
      }
}

##############################################################################