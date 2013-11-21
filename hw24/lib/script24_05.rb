# ========================================================================
# Script 		=	script24_05.rb
# ========================================================================
# Description 	=	"This script outputs an average score of numbers from json file"
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
element[script_name].each {|k,v| $values<<v}
$sum=0
$values.each {|elem| $sum+=elem.to_i}
count=$values.size
v=$values.to_s.gsub(/[\"\\\[\]]/,'')
p "The average score of #{v} is #{$sum/count}"