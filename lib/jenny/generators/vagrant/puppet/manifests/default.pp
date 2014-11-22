
#	$myvariable = hiera(myvar)
#	notice("My variable is: ${myvariable}")


node default {

  # Ubuntu gets out of date real quick
  exec { "apt-update":
    command => "/usr/bin/apt-get update"
  }

  Exec["apt-update"] -> Package <| |>

}