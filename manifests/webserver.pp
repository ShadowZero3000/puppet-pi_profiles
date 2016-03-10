class pi_profiles::webserver(){
  include ::pi_profiles::nginx
  include ::pi_profiles::mysql
  file { '/var/www':
    ensure => 'directory',
  }
  file { '/var/www/hosts':
    ensure => 'link',
    target => '/opt/webhosts',
    require => File['/var/www']
  }
  # TODO: Put in r10k cronjob to pull from a control repo
}