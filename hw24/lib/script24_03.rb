# ========================================================================
# Script 		=	script24_03.rb
# ========================================================================
# Description 	=	"This script divides two given numbers from json file"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'optparse'
require 'json'
OptionParser.new do |opts|
  opts.on("-i", "--input") do
    $file_name=ARGV[0]
  end
end.parse!

json_file=File.read($file_name)
element=JSON.parse(json_file)
script_name=__FILE__.split("/").to_a.last
a=element[script_name]["int_a"].to_i
b=element[script_name]["int_b"].to_i
puts "When i divide #{a} by #{b} i always get #{a/b}"