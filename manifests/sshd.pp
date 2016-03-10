class pi_profiles::sshd (){
  # Nothing special here
  # include ::ssh::server
  # Nothing else should be including this class, so hard-code it
  class { '::ssh::server':
    permit_root_login => 'no',
    password_authentication => 'no',
  }
}