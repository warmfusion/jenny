
#	$myvariable = hiera(myvar)
#	notice("My variable is: ${myvariable}")

node basenode {}

node default inherits basenode {

  # Ubuntu gets out of date real quick
  exec { "apt-update":
    command => "/usr/bin/apt-get update"
  }

  Exec["apt-update"] -> Package <| |>

  # Create the classes defined by the yaml
  hiera_include( 'classes' )

}