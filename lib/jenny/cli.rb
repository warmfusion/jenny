require 'thor'

module Jenny
  class CLI < Thor

    desc 'vagrant NAME', 'Create a new Vagrant configuration'
    method_option :name
    def vagrant
    	require 'jenny/cli/vagrant'
    	Jenny::CLI::Vagrant.run(options)
    end

  end
end