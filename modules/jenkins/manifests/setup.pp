class jenkins::setup inherits jenkins {

  include jenkins::package
#  include jenkins::config
  include jenkins::services

}

