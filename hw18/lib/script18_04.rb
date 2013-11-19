# ========================================================================
# Script 		=	script18_04.rb
# ========================================================================
# Description 	=	"This scrpits prints out the correct format of entered ip address"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'trollop'

opts = Trollop::options do
  opt:first, "first", :short => "-a", :type =>String
  opt:second, "second", :short => "-b", :type =>String
  opt:third, "third", :short => "-c", :type =>String
  opt:fourth, "fourth", :short => "-d", :type =>String
end

puts "My IP address is #{opts[:first] + "." + opts[:second] + "." + opts[:third] + "." + opts[:fourth]}"