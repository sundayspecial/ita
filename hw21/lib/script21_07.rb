# ========================================================================
# Script 		=	script21_07
# ========================================================================
# Description 	=	"This script retrieves persons name from a text file"
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
sentence = lines.to_s.gsub(/[\[\]\"]/, '')
regex_name=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=sentence.match regex_name
puts "His name is #{name}"