# ========================================================================
# Script 		=	script17_05
# ========================================================================
# Description 	=	"This script counts the average of 5 arguments
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
  opts.on("-a", "--first") do
    $a=ARGV[0]
  end
  
  opts.on("-b","--second") do
    $b=ARGV[0]
  end
  
  opts.on("-c","--third") do
    $c=ARGV[0]
  end
  
  opts.on("-d","--fourth") do
    $d=ARGV[0]
  end
  
  opts.on("-e","--fifth") do
    $e=ARGV[0]
  end
end.parse!
puts "The average score for #{$a}, #{$b}, #{$c}, #{$d}, #{$e} is #{($a.to_f + $b.to_f + $c.to_f + $d.to_f + $e.to_f)/5}"