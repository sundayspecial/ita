# ========================================================================
# Script 		=	script21_01
# ========================================================================
# Description 	=	"This script outputs plural of the entered values"
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

puts"My favorite fruits are #{lines[0].chomp}s and #{lines[1].chomp}s"