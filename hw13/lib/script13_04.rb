# ========================================================================
# Script 		=	script13_04.rb
# ========================================================================
# Description 	=	"This scrpits prints out the correct format of entered ip address"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
ip=""
ARGV.each do |a|
  ip+= a
  ip+= '.'
end
ip=ip.chop
puts "My IP address is #{ip}"