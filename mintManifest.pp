schedule { 'everyday':
  period => daily,
  range  => "2 - 4",
}
# execute 'apt-get update'
exec { 'apt-update':                    # exec resource named 'apt-update'
  command => '/usr/bin/apt-get update',  # command this resource will run
  schedule => 'everyday'
}

$applications = [ 'vim', 'chromium-browser', 'htop', 'git' ]
  package { $applications: ensure => 'latest' }

