require 'thor'

module GemGenerator
  class CLI < Thor
    include Thor::Actions

    def self.source_root
      File.dirname(File.dirname(__FILE__))
    end

    argument :name, :type => :string
    method_option :license,    :type => :string, :aliases => "-l", :desc => "Select a license",    :default => "apache"
    method_option :class,      :type => :string, :aliases => "-c", :desc => "Class name"
    method_option :class_file, :type => :string, :aliases => "-f", :desc => "Filename for class"
    method_option :template,   :type => :string, :aliases => "-t", :desc => "Gem template to use", :default => "simple"
    desc "create!", "Create/Gemify a new cinch gemified plugin"
    def create!
      template('templates/licenses/#{options[:license].downcase}', "cinch-#{name}/LICENSE")
      say "create!"
    end

    def gemify!
      say "gemify!"
    end
  end
end
