require 'rubygems/dependency_installer'
 
dependency_installer = Gem::DependencyInstaller.new
 
begin
  if RUBY_VERSION < '2.1.0'
    puts "Installing nokogiri ~> 1.6.0 with Ruby version:#{RUBY_VERSION}"    
    dependency_installer.install 'nokogiri', '~> 1.6.0'
  elsif RUBY_VERSION < '2.2.0'
    puts "Installing nokogiri ~> 1.7.0 with Ruby version:#{RUBY_VERSION}"
    dependency_installer.install 'nokogiri', '~> 1.7.0'
  else
    puts "Installing nokogiri ~> 1.8 with Ruby version:#{RUBY_VERSION}"
    dependency_installer.install 'nokogiri', '~> 1.8'
  end
rescue => e
  warn "#{$0}: #{e}"
  exit!
end