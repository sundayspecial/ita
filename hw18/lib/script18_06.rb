# ========================================================================
# Script 		=	script18_06
# ========================================================================
# Description 	=	"This script counts the average using loop"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'trollop'

opts = Trollop::options do
  opt:first, "first", :short => "-a", :type =>:int
  opt:second, "second", :short => "-b", :type =>:int
  opt:third, "third", :short => "-c", :type =>:int
  opt:fourth, "fourth", :short => "-d", :type =>:int
  opt:fifth, "fifth", :short => "-e", :type =>:int
  opt:sixth, "sixth", :short => "-f", :type =>:int
  opt:seventh, "seventh", :short => "-g", :type =>:int
  opt:eighth, "eighth", :short => "-h", :type =>:int
  opt:ninth, "ninth", :short => "-i", :type =>:int
  opt:tenth, "tenth", :short => "-j", :type =>:int
  
end

opts.delete_if {|key, value| value.class != Fixnum } #getting rid of all other elements which are not the entered by us numbers
$sum=0
opts.each {|key, value| $sum+=value}
count=opts.size 

puts "The average using loop is #{$sum/count}"