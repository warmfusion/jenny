require 'thor'

module Jenny
  class CLI < Thor

    desc 'vagrant HOSTNAME', 'Create a new Vagrant configuration with HOSTNAME given'
    method_option "fqdn", :type => :string, :aliases => '-f', :default => 'local', :desc => 'The FQDN suffix for your hostname' 
    def vagrant(hostname)
    	require 'jenny/generators/vagrant'
    	Jenny::Generators::Vagrant.start( [ hostname, options[:fqdn] ])
    end

  end
end