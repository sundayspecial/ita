# ========================================================================
# Script 		=	script22_04
# ========================================================================
# Description 	=	"This script retrieves digits from csv file to display the IP address"
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
puts csv_file[$row_num].join('.')