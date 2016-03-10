class pi_profiles::nginx (
  $vhosts,
  $locations
){
  include ::ufw
  include ::nginx
  include ::php::fpm

  ## Configure firewall access
  ufw::allow { "nginx-http(s)":
    port => "80,443",
    ip => 'any',
  }

  ## Instantiate vhosts
  create_resources('::nginx::resource::vhost', $vhosts)
  create_resources('::nginx::resource::location', $locations)
}