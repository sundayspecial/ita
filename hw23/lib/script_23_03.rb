# ========================================================================
# Script 		=	script_23_03.rb
# ========================================================================
# Description 	=	"Input JSON files"
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

result = element["int_a"].to_i/element["int_b"].to_i
puts "When I am dividing #{element["int_a"]} by #{element["int_b"]} I always get #{result}"