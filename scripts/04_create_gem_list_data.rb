require "active_record"
require "yaml"
require 'open3'
require "./app/models/repository"
require "./app/models/gem_list"
require "pry-rails"

config = YAML.load_file('./config/database.yml')
ActiveRecord::Base.establish_connection(config["development"])

is_gemfile = false
gemfile = nil

begin
  Repository.all.each do |repository|
    filename = repository.name.match(%r{/(.*)})[1]
    File.open("files/#{filename}.rb") do |file|
      file.each_line do |line|
        is_gem_file = true if line.include?("gem")
        # is_gem_file = false if line.include?("end")
        next unless is_gem_file
        if line.match(/^gem/)
          gemfile = GemList.find_or_create_by!(name: line.match(/gem ["'](.+?)["']/)[1], repository: repository)
        end
      end
    end
  end
rescue SystemCallError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
rescue IOError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
end
