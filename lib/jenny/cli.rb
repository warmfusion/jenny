require 'thor'

module Jenny
  class CLI < Thor

    desc 'vagrant NAME', 'Create a new Vagrant configuration'
    method_option :name
    def vagrant
    	puts 'Creating new Vagrant : #{options[:name]' 
    end

  end
end