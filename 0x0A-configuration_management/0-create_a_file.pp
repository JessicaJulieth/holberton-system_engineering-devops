# Create a file
file { '/tmp/school':                                                        # tipo de recurso y nombre de fichero
  ensure  => file,
  mode    => '0744',                                                      # permisos del fichero
  owner   => 'www-data'
  group   => 'www-data'
  content => 'I love Puppet',
}
