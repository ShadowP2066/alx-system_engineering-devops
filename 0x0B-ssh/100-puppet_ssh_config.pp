# puppet script - configure ssh authentication:

file_line { 'Turn off passwd auth':
  path => '/etc/ssh/sshd_config',  # Use the SSH server config file
  line => 'PasswordAuthentication no',
  notify => Service['ssh'],  # Ensure the SSH service restarts if this resource changes
}

file_line { 'Declare identity file':
  path => '/etc/ssh/sshd_config',  # Use the SSH server config file
  line => 'IdentityFile ~/.ssh/school',
  notify => Service['ssh'],  # Ensure the SSH service restarts if this resource changes
}

service { 'ssh':
  ensure => running,
  enable => true,
}

