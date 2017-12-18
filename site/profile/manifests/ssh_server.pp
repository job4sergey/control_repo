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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDVWU4zSc0Yya1sjGXYCVSVMTjCL998IX9oCBQtEprcF2b6REUI8JVpcRUjH3l53bnxJNrbcp5N+zAG+KMeCiqRRUIB12UqYwMSwC/nZxmLkyVK2sfPaDoYeHZ3V27PhscioQOj3x+D5kuWAi7MqcZSA2D/6VAY0Zbm2poEsi4o7C7+s1no6V+c+qJ+F6qsM7swJeF+QxK2wGyK4GCPNApvtaC6CKeYrCrqzTEr0a1ZFq5/syhMTHcAGapm9XAQojJIe/TlQObIhxsQ6oBbOGaZ8PURbw2E9C4SCKbbfsuhpCXN5/08juQNiHIK2DOXZmwZaDfMqjgczqCoLQdNixZZ',
  }  
} 
