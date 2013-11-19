# ========================================================================
# Script 		=	script18_08.rb
# ========================================================================
# Description 	=	"This scripts sorts arguments alphabetically"
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

opts.delete_if {|key, value| value.class != String }
$x=[]
opts.each {|key, value| $x<<value}
puts $x.sort