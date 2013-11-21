#"" ========================================================================
# Script 		=	script24_07.rb
# ========================================================================
# Description 	=	"This script outputs the name of the person from the sentence in JSON file"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'optparse'
require 'json'
OptionParser.new do |opts|
  opts.on("-i", "--input") do
    $file_name=ARGV[0]
  end
  opts.on("-j", "--j_option") do
    $selected=ARGV[0] #option for first or second parameter
  end
end.parse!

json_file=File.read($file_name)
element=JSON.parse(json_file)
scr=__FILE__.split("/").to_a.last
script_name=scr[0..-4]+"_"+$selected+".rb"

regex_name=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=element[script_name]["sentence"].match(regex_name)

p "His name is #{name}"