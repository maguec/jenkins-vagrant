class jenkins::services inherits jenkins {

  service { 'jenkins':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    require    => Class['jenkins::package'],
  }

}
