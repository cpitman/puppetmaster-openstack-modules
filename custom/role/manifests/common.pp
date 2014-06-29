class role::common
{
  user { 'cpitman':
    ensure   => present,
    password => '$6$3xEmbtIKz4R1ivAp$rOcUwwY5bm6G8YKwYaLrEM61mRZ2hQDFnZJVY.k6dISdOkix/KNLTLI/N4.SpAJ0/IOEZZr4sMtpWh67vC4jJ.',
    groups   => 'wheel'
  }
  
  user { 'jculleton':
    ensure   => present,
    password => '',
    groups   => 'wheel'
  }
  
  service { 'iptables':
    ensure => stopped,
    enable => false
  }
  
  service { 'NetworkManager':
    ensure => stopped,
    enable => false
  }
  
}