# ========================================================================
# Script 		=	script24_04.rb
# ========================================================================
# Description 	=	"This script outputs IP address from json file"
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
script_name=__FILE__.split("/").to_a.last
$ip_add=""
element[script_name].each {|k, v| $ip_add+=v.to_s+"."}
puts "My ip address is #{$ip_add.chop}"