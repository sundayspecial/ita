# ========================================================================
# Script 		=	script24_08.rb
# ========================================================================
# Description 	=	"This script outputs seasons from the JSON file in alphabetical order"
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
$values=[]
element[script_name].each {|k, v| $values<<v}
sorted=$values.sort.to_s.gsub(/[\"\\\[\]]/,'')
puts "Here are the seasons in alphabetical order: #{sorted}"