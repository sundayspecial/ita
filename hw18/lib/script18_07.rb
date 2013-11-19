# ========================================================================
# Script 		=	script18_07.rb
# ========================================================================
# Description 	=	"This script retrieves the name and presents it as an output"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'trollop'

opts = Trollop::options do
  opt:sentence, "sentence", :type =>String
end

c = opts[:sentence]
regex_name=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=c.match regex_name
puts "His name is #{name}"