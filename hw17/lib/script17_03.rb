# ========================================================================
# Script 		=	script17_03
# ========================================================================
# Description 	=	"This script shows the result of division"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
  opts.on("-f", "--first_number") do
    $a=ARGV[0]
  end
  
  opts.on("-s", "--second_number") do
    $b=ARGV[0]
  end
end.parse!
puts "When I am dividing #{$a} by #{$b} I always have #{$a.to_f/$b.to_f}"