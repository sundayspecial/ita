# ========================================================================
# Script 		=	script13_06.rb
# ========================================================================
# Description 	=	"This script counts the average of the arguments"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
sum = 0
ARGV.each do |a|
  sum = a.to_f+sum
end
size=ARGV.length
puts "The average of the following numbers #{ARGV.join(",")} is #{sum/size}"