# ========================================================================
# Script 		=	script_23_01.rb
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
element=JSON.parse(json_file)
p "My ip address is #{element["octet_1"]}.#{element["octet_2"]}.#{element["octet_3"]}.#{element["octet_4"]}"