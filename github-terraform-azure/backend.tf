terraform{    
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "DucLe"

        workspaces {
          name ="docker-hub"
        }
    }
}