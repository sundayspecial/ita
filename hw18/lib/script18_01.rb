# ========================================================================
# Script 		=	script18_01
# ========================================================================
# Description 	=	"This script shows entered arguments in plural"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'trollop'

opts = Trollop::options do
  opt:first, "first", :short => "-f", :type =>String
  opt:second, "second", :short => "-s", :type =>String
end

puts "My favorite fruits are #{opts[:first]}s and #{opts[:second]}s"
