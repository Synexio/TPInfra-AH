// Nginx
//Container
resource "docker_container" "Nginx" {
  name  = "nginx"
  image = docker_image.Nginx.image_id
  networks_advanced {
    name = "mybridgednetwork"
  }
}

//Image
resource "docker_image" "Nginx" {
  name = "nginx:latest"
}

//Network
resource "docker_network" "MyBridgedNetwork" {
  name = "mybridgednetwork"
}



// Noeud ethereum
//Container
resource "docker_container" "Eth" {
  name  = "eth"
  image = docker_image.Eth.image_id
  networks_advanced {
    name = "bcnetwork"
  }
}

//Image
resource "docker_image" "Eth" {
  name = "ethereum/client-go:latest"
}

//Network
resource "docker_network" "BCNetwork" {
  name = "bcnetwork"
}