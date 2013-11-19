# ========================================================================
# Script 		=	script18__03
# ========================================================================
# Description 	=	"This script shows the result of division"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'trollop'

opts = Trollop::options do
  opt:first, "first", :short => "-f", :type =>:int
  opt:second, "second", :short => "-s", :type =>:int
end

puts "When I am dividing #{opts[:first]} by #{opts[:second]}, I always get #{opts[:first]/opts[:second]}"