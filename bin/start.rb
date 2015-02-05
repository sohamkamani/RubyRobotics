#!/Users/sohamchetan/.rvm/rubies/ruby-2.2.0/bin/ruby

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), "..", "lib")

require "robotscanner"
Application.new.start