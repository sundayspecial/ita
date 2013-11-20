# ========================================================================
# Script 		=	script22_01
# ========================================================================
# Description 	=	"This script shows entered arguments in plural"
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

puts "My favorite fruits are #{csv_file[$row_num][0]}s and #{csv_file[$row_num][1]}s"