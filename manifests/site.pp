# /etc/puppet/manifests/site.pp

import "classes/*"
import "nodes.pp"

Exec["apt-get-update"] -> Package <| |>

Exec {
    path => "/usr/bin:/usr/sbin:/bin"
}

exec { "apt-get-update" :
    command => "/usr/bin/apt-get update",
    require => File["/etc/apt/apt.conf.d/01proxy"]
}

file { "/etc/apt/apt.conf.d/01proxy":
    ensure => "file",
    source => "/tmp/vagrant-puppet/manifests/files/apt-conf"
}
