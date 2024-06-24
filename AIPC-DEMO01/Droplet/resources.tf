resource "digitalocean_droplet" "myaipcdemo" {
    name = "myaipc"
    region = "sgp1"
    size = "s-1vcpu-1gb"
    image = "ubuntu-20-04-x64"
    ssh_keys = [
        "b0:01:dc:b3:a7:1f:2e:51:3a:c4:ce:32:1b:30:f2:70"
    ]

    connection {
        type = "ssh"
        user = "root"
        private_key = file("~/.ssh/id_rsa")
        host = self.ipv4_address
    }

    provisioner "remote-exec" {
        inline = [
            "sudo apt update"
        ]
    }

}