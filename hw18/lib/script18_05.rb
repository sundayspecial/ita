# ========================================================================
# Script 		=	script18_05
# ========================================================================
# Description 	=	"This script counts the average of 5 arguments
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'trollop'

opts = Trollop::options do
  opt:first, "first", :short => "-a", :type =>:int
  opt:second, "second", :short => "-b", :type =>:int
  opt:third, "second", :short => "-c", :type =>:int
  opt:fourth, "second", :short => "-d", :type =>:int
  opt:fifth, "second", :short => "-e", :type =>:int
  
end
puts "The average score of (#{opts[:first]}, #{opts[:second]}, #{opts[:third]}, #{opts[:fourth]}, #{opts[:fifth]}) is #{((opts[:first]+opts[:second]+opts[:third]+opts[:fourth]+opts[:fifth])/5)}"