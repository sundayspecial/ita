#"""" ========================================================================
# Script 		=	script_23_07.rb
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
regex_name=/[A-Z][a-z]+\s[A-Z][a-z]+/
name = element["sentence"].match(regex_name)
p "His name is #{name}"