# create a manifest that kills a process named killmenow

exec { 'pkill killmenow':
    command => "ps -ef | grep nrpe | grep -v pts/1 | /bin/awk '{print ${2}}' | xargs kill -9",
    path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
}
