# ========================================================================
# Script 		=	script_23_05.rb
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

score=(element["int_a"].to_i + element["int_b"].to_i + element["int_c"].to_i + element["int_d"].to_i + element["int_e"].to_i) / 5
puts"The averaga score of #{element["int_a"].to_i}, #{element["int_b"].to_i}, #{element["int_c"].to_i}, #{element["int_d"].to_i}, #{element["int_e"].to_i} is #{score}"