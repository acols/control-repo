class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDk+EJRyqcYO+Rz34JEKJaiz40N9lsToN0rLeKM6YJNxfQ210MbXRaqE9dExVynZxa/38OdPu2EmAc4ZqQ21BtpyiI/vTh9T8zpMD2PNSjxUo9UO2hjK/82Ef0acvC6KGPns/GKNq/REhKKgCTWFzSECOzmhzQnRqeb2IcbRZRDg1WI95wAJAGtFeG+V+z3DD8Fp45+/Ii/3XPde4IX10pl+XS7aHuPpoO8y0uNgU1fOwkMUHXZm0mdXvF7KRgCxQThbYhwpx7KxvSCIZM39V0J1BYPQc4G2BIAH58SqQN8t+WlxqpNldpBiUS/pkWc8+lyo5SBC02MiXNenD56bBj1',
  }  
}
