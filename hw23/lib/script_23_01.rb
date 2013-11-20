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
puts "My favorite fruits are #{element["fruit_a"]}s and #{element["fruit_b"]}s"