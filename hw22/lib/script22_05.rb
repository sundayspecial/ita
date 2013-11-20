# ========================================================================
# Script 		=	script22_05
# ========================================================================
# Description 	=	"This script outputs the average of numbers in csv file"
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
count=csv_file[$row_num].size
csv_file[$row_num].each {|k| $sum+=k.to_i}
p "The average of #{csv_file[$row_num].join(',')} is #{$sum/count}"