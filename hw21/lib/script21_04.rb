# ========================================================================
# Script 		=	script21_04
# ========================================================================
# Description 	=	"This script outputs the IP address stored in the text file"
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

puts "My Ip address is #{lines[0].chomp+"."+lines[1].chomp+"."+lines[2].chomp+"."+lines[3]}"