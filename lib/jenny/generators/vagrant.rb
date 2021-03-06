require 'thor'
module Jenny
	module Generators
	  class Vagrant < Thor::Group
	  	include Thor::Actions

      argument :name, :type => :string, :desc => 'The name of your new Vagrant host'
      argument :domain, :type => :string, :default => 'local', :desc => 'Set the domain suffix for your hostname'



	  	# Creates the empty directory that will contain
	  	# all the vagrant, hiera, puppet etc source code
	    def create_proj
	    	empty_directory(name, :force =>true)
	    end

	    #Initialises the puppet source code by copying from
	    # the puppet subdirectory
	    def copy_puppet_kickstart
	    	directory( 'puppet', "#{name}/puppet")
	    end

	    #Create the Vagrantfile from the template provided
	  	def create_vagrantfile
				template("vagrantfile.erb", "#{name}/Vagrantfile")
	    end

	    # Create the hiera configuration file for this machine
	  	def create_hiera_config
				template("node_hiera_config.yaml.erb", "#{name}/puppet/manifests/configuration/#{name.downcase}.#{domain.downcase}.yaml")
	    end

	    def git_prepare
	    	inside (name) do
		    	run( "git init" )
		    	run( "git add ." )
		    	run( "git commit -m 'New project created by warmfusion/jenny for %s' " % ENV['USER'] )
		    end
	    end

	    # Tell Thor Generator where to find the templates
	    def self.source_root
	      File.dirname(__FILE__) + "/vagrant"
	    end
	  end
	end
end