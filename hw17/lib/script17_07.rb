# ========================================================================
# Script 		=	script17_07
# ========================================================================
# Description 	=	"This script retrieves the name and presents it as an output"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
  opts.on("--sentence") do
    $a=ARGV
end
end.parse!
regex_name=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=$a.join(" ").match regex_name
puts "His name is #{name}"
