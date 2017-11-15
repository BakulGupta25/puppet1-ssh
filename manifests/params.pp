class ssh::params {
  case $facts['os']['family']{
    'Debian': {
      $package_name = 'openssh-server'
      $service_name = 'ssh'  
    }
    'Redhat': {
      $package_name = 'openssh-server'
      $service_name = 'sshd'
    }
    default: {
      fail("${facts['operatingsystem']} is not supported")
    }
  }
}
