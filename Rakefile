require File.expand_path("../lib/digispark/version.rb", __FILE__)

def system_exec(cmd)
  puts "Executing: #{cmd}"
  results = %x[#{cmd}]
  puts results unless results.strip.empty?
end

task :build do
  puts "Building Digispark Gem"
  system_exec "gem build digispark.gemspec"
end

task :install => :build do
  puts "Installing Digispark Gem"
  system_exec "gem install --no-ri --no-rdoc digispark-#{Digispark::Version}.gem"
end
