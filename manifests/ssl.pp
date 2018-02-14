
class pi_profiles::ssl (
  $certs = {}
){
  # This module depends on the package being available. I've just installed from scratch and am now using
  # certbot. When I have more time, it'd be good to fix this.
  # include ::letsencrypt

  # if ($certs != {}) {
  #   create_resources(letsencrypt::certonly, $certs)
  # }
}