# ========================================================================
# Script 		=	script21_08
# ========================================================================
# Description 	=	"This script sorts seasons alphabetically"
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
lines.each {|k| p k.to_s.gsub(/[\"\\\n)]/,'')}