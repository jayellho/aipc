packer {
    required_plugins {
        digitalocean = {
            source = "github.com/hashicorp/digitalocean"
            version = ">=1.0.4"
        }

        ansible = {
            version = ">= 1.1.0"
            source = "github.com/hashicorp/ansible"
        }
    }
}