# ========================================================================
# Script 		=	script17_04
# ========================================================================
# Description 	=	"This scrpits prints out the correct format of entered ip address"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
  opts.on("-a", "--first_number") do
    $a=ARGV[0]
  end
  
  opts.on("-b", "--second_number") do
    $b=ARGV[0]
  end
  
  opts.on("-c", "--third_number") do
    $c=ARGV[0]
  end
  
  opts.on("-d", "--fourth_number") do
    $d=ARGV[0]
  end
end.parse!

puts "My IP address is: #{$a + "." + $b  + "." + $c  + "." + $d}"