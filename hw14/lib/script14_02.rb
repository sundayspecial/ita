# ========================================================================
# Script 		=	script14_02
# ========================================================================
# Description 	=	"This script retrieves ipv4 from users machine"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
ipv4 = /\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/
  %x'ifconfig > ip.txt'
  file=File.read('ip.txt')
  match = file.scan(ipv4).to_s.gsub(/[\[\]\"\s]/, "")
  puts "ipv4 are: #{match}"