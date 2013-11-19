# ========================================================================
# Script 		=	script21_05
# ========================================================================
# Description 	=	"This script counts the average score of the numbers on text file using loop"
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
sum = lines[0].to_i+lines[1].to_i+lines[2].to_i+lines[3].to_i+lines[4].to_i
l = lines.size

p "Average score of #{lines.to_s.gsub(/[\"\[\]n\\]/, '')} is #{sum/l}"