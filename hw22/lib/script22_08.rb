# ========================================================================
# Script 		=	script22_07
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
puts "Here are seasons sorted alphabetically: #{csv_file[$row_num].sort.join(' ')}"