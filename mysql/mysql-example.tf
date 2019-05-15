provider "mysql" {
  endpoint = "localhost:3306"
  username = "root"   #Some user with privileges
  password = "Pb5c2.<:-Gf7vc4M"  #Some strong pass
}

# Crear base de datos
resource "mysql_database" "proyecto" {
  name = "proyecto"
}

# Crear usuario
resource "mysql_user" "demo" {
  user     = "demo"  #Some user
  host     = "localhost"
  password = "Xd5c2.<:-Gf7vc5M"    #Some strong pass
}

