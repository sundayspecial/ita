# ========================================================================
# Script 		=	script17_02
# ========================================================================
# Description 	=	"This script shows entered arguments in the singular"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
  opts.on("-f", "--first") do
    $a=ARGV[0]
  end
  
  opts.on("-s", "--second") do
    $b=ARGV[0]
  end
end.parse!
puts "My favorite fruits are: #{$a.chop} and #{$b.chop}"