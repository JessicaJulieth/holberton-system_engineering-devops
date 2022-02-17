# find out why Apache is returning a 500 error. Once you find the issue, 
exec { 'fix_settings_error':
    command => 'sudo sed -i s/phpp/php/g /var/www/html/wp-settings.php',
    path    => ['/usr/bin', '/usr/sbin', '/usr/local/bin', '/usr/local/sbin'],
}
