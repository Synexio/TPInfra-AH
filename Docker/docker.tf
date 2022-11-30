// Nginx

//Image
resource "docker_image" "Nginx" {
  name = "nginx:latest"
}

//Network
resource "docker_network" "MyBridgedNetwork" {
  name = "MyBridgedNetwork"
}

//Container
resource "docker_container" "Nginx" {
  name  = "nginx"
  image = docker_image.Nginx.image_id
  networks_advanced {
    name = "MyBridgedNetwork"
  }
}



// Noeud ethereum

//Image
resource "docker_image" "Eth" {
  name = "ethereum/client-go:latest"
}

//Network
resource "docker_network" "BCNetwork" {
  name = "BCNetwork"
}

//Container
resource "docker_container" "Eth" {
  name  = "eth"
  image = docker_image.Eth.image_id
  networks_advanced {
    name = "BCNetwork"
  }
}