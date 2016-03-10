class pi_profiles::ssh (
  $authorized_keys = {}
){
  ## Configure firewall access
  include ::ufw
  ufw::allow { "ssh-in":
    port => "22",
    ip => 'any',
  }
  if ($authorized_keys != {}) {
  	create_resources(ssh_authorized_key, $authorized_keys)
  }
}