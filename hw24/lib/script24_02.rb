# ========================================================================
# Script 		=	script24_02.rb
# ========================================================================
# Description 	=	"This script takes plural from JSON file and outputs singular"
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
puts "My favorite fruit is #{element[script_name]["fruits_a"].chop} and #{element[script_name]["fruits_b"].chop}"