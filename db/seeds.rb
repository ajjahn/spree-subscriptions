# def yaml_to_database(fixture, path)
#   ActiveRecord::Base.establish_connection(RAILS_ENV)
#   tables = Dir.new(path).entries.select{|e| e =~ /(.+)?\.yml/}.collect{|c| c.split('.').first}
#   Fixtures.create_fixtures(path, tables)
# end
# 
# fixture = "default"
# directory = "#{RAILS_ROOT}/vendor/extensions/subscriptions/db/#{fixture}"
# puts "=========#{directory}"
# puts "loading fixtures from #{directory}"
# yaml_to_database(fixture, directory)
# puts "done."



default_path = File.join(File.dirname(__FILE__), 'default')

Rake::Task['db:load_dir'].reenable
Rake::Task['db:load_dir'].invoke(default_path)