class jenkins::package inherits jenkins {

  package { 'jenkins':
    ensure  => installed,
    require => Class['ubuntu::setup'],
  }

}
