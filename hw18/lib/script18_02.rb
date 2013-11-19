# ========================================================================
# Script 		=	script18_02
# ========================================================================
# Description 	=	"This script shows entered arguments in the singular"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'trollop'

opts = Trollop::options do
  opt:first, "first", :short => "-f", :type =>String
  opt:second, "second", :short => "-s", :type =>String
end

puts "My favorite fruits are #{opts[:first].chop} and #{opts[:second].chop}"