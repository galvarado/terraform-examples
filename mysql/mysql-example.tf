provider "mysql" {
  endpoint = "localhost:3306"
  username = "root"
  password = "Pb5c2.<:-Gf7vc4M"
}

# Crear base de datos
resource "mysql_database" "proyecto" {
  name = "proyecto"
}

# Crear usuario
resource "mysql_user" "demo" {
  user     = "demo"
  host     = "localhost"
  password = "Xd5c2.<:-Gf7vc5M"
}

