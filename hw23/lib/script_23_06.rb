#"" ========================================================================
# Script 		=	script_23_06.rb
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
element = JSON.parse(json_file)
$sum=0
element.each {|n, m| $sum+=m.to_i }
p "The average of elements in JSON file is #{$sum/element.size}"