# Configure the OpenStack Provider
provider "openstack" {
  user_name   = "admin"
  tenant_name = "admin"
  password    = "somepass"
  auth_url    = "http://controller01:5000/v3"
  region      = "RegionOne"
}

# Create a RHEL server
resource "openstack_compute_instance_v2" "basic" {
  name            = "vm_from_terraform"
  image_id        = "765887bd-2635-4c2e-9feb-248a1b7707ea"
  flavor_id       = "c98478b4-2d58-42f6-940e-15bdea5aa74f"
  
  metadata = {
    this = "that"
  }

  network {
    name = "Some_Network"
  }


}
