# ========================================================================
# Script 		=	script17_08
# ========================================================================
# Description 	=	"This scripts sorts arguments alphabetically"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
  opts.on("-a", "--first_season") do
    $a=ARGV[0]
  end
  
  opts.on("-b", "--second_season") do
    $b=ARGV[0]
  end
  
  opts.on("-c", "--third_season") do
    $c=ARGV[0]
  end
  
  opts.on("-d", "--fourth_season") do
    $d=ARGV[0]
  end
end.parse!
puts "Here are the alphabetically sorted words: #{ARGV.sort.join(" ")}"