# ========================================================================
# Script 		=	script21_06
# ========================================================================
# Description 	=	"This script counts the average score of the numbers on text file"
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
$sum=0
count=lines.size
lines.each {|l| $sum+=l.to_i}
p "The avergage of numbers using loop is #{$sum/count}"