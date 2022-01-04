# Create a file
file {'/tmp/school':                                                        # tipo de recurso y nombre de fichero
        ensure  => present,                                                     # se asegura de que exista
        path  => '/tmp/school',
        mode    => '0744',                                                      # permisos del fichero
        owner   => 'www-data'
        group   => 'www-data'
        content => 'I love Puppet',
}
