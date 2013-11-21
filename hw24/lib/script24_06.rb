# ========================================================================
# Script 		=	script24_06.rb
# ========================================================================
# Description 	=	"This script outputs an average score of numbers from json file using loop"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'optparse'
require 'json'
OptionParser.new do |opts|
  opts.on("-i", "--input") do
    $file_name=ARGV[0]
  end
  opts.on("-j", "--j_option") do
    $selected=ARGV[0] #option for first or second parameter
  end
end.parse!

json_file=File.read($file_name)
element=JSON.parse(json_file)
scr=__FILE__.split("/").to_a.last
script_name=scr[0..-4]+"_"+$selected+".rb"

$values=[]
element[script_name].each {|k,v| $values<<v}
$sum=0
$values.each {|elem| $sum+=elem.to_i}
count=$values.size
p "The average score of #{$values.to_s.gsub(/[\"\\\[\]]/,'')} is #{$sum/count}"