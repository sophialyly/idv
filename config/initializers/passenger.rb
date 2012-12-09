if ENV['production'] && ENV['production'].include?('rvm')
 begin
 rvm_path&nbsp;&nbsp;&nbsp;&nbsp; = File.dirname(File.dirname(ENV['production']))
 rvm_lib_path = File.join(rvm_path, 'lib')
 $LOAD_PATH.unshift rvm_lib_path
 require 'rvm'
 RVM.use_from_path! File.dirname(File.dirname(__FILE__))
 rescue LoadError
 # RVM is unavailable at this point.
 raise "RVM ruby lib is currently unavailable."
 end
end

ENV['production'] = File.expand_path('../Gemfile', File.dirname(__FILE__))
require 'bundler/setup'