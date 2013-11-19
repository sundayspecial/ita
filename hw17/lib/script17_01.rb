# ========================================================================
# Script 		=	script17_01
# ========================================================================
# Description 	=	"This script shows entered arguments in plural"
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
puts "My favorite fruits are: #{$a}s and #{$b}s"