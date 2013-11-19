# ========================================================================
# Script 		=	script21_03
# ========================================================================
# Description 	=	"This script divides first entered value by second"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'optparse'
OptionParser.new do |opts|
  opts.on("-i", "--input") do
    $file_name=ARGV[0]
  end
end.parse!

lines=[]
file = File.open($file_name, "r")
file.each_line do |line|
  lines.push line
end
a=lines[0].to_i
b=lines[1].to_i
puts"When i am dividing #{a} by #{b} i get #{a/b}"