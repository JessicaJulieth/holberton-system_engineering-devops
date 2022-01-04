# Create a file
file {'/tmp/school':                                                        # tipo de recurso y nombre de fichero
        ensure  => present,                                                     # se asegura de que exista
        mode    => '0744',                                                      # permisos del fichero
        content => "I love Puppet.\n",
}
