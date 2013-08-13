class ubuntu::setup inherits ubuntu {

  exec { 'apt_update':
    refreshonly => true,
    command     => '/usr/bin/apt-get update',
  }

  file { '/var/tmp/setup':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => '#Foo',
    notify  => Exec['apt_update'],
  }

}
       
