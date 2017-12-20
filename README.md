# AWS Private Subnet

This module can be used to deploy an AWS private subnet.

Module Input Variables
----------------------

- `region` - The region in which vpc resides
- `env` - The environment name
- `vpc_id` - The id of the vpc
- `name` - The name of the subnet
- `cidr_block` - The cidr block for the subnet
- `private_route_table_id` - The private route table id of the vpc

Usage 
-----

```hcl
module "public_subnet" {
  source = "github.com/fierceventures/terraform-public-subnet"
  region = "ap-southeast-2"
  env = "test"
  name = "primary"
  vpc_id = "${module.vpc.id}"
  cidr_block = "172.31.2.0/16"
  private_route_table_id = "${module.vpc.private_route_table_id}"
}
```

Outputs
-------
- `id` - The id of the subnet

Author
------
Created and maintained by [Fierce Ventures](https://github.com/fierceventures/)
