# ========================================================================
# Script 		=	script13_07.rb
# ========================================================================
# Description 	=	"This script retrieves the name and presents it as an output"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
regex_name=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=ARGV.join(" ").match regex_name
puts "His name is #{name}"