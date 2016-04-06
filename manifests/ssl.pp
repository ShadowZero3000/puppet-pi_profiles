
class pi_profiles::ssl (
  $certs = {}
){
  include ::letsencrypt

  if ($certs != {}) {
    create_resources(letsencrypt::certonly, $certs)
  }
}