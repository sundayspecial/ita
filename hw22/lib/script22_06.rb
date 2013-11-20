# ========================================================================
# Script 		=	script22_06
# ========================================================================
# Description 	=	"This script loops through numbers and counts the average"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'optparse'
require 'csv'
OptionParser.new do |opts|
  opts.on("-i", "--input") do
    $file_name=ARGV[0]
  end
  
  opts.on("-r", "--row") do
    $row_num=ARGV[0].to_i-1
  end
end.parse!

csv_file=CSV.read($file_name)
$sum=0
csv_file[$row_num].each {|m| $sum+=m.to_i}
count=csv_file[$row_num].size
puts "The average of #{csv_file[$row_num].join(',')} is #{$sum/count}"