# ========================================================================
# Script 		=	script22_03
# ========================================================================
# Description 	=	"This script divides two numbers from csv file and outputs the result"
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

csv_file = CSV.read($file_name)
a= csv_file[$row_num][0].to_i
b= csv_file[$row_num][1].to_i
puts "When i am dividing #{a} by #{b} i get #{a/b}"