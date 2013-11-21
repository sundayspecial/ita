# ========================================================================
# Script 		=	script24_01.rb
# ========================================================================
# Description 	=	"This script outputs plural form from the JSON file"
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
puts "My favorite fruits are #{element[script_name]["fruit_a"]}s and #{element[script_name]["fruit_b"]}s"  