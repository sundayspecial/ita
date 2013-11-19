# ========================================================================
# Script 		=	script14_01
# ========================================================================
# Description 	=	"This script retrieves Mac address from users machine"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
mac = /\b([0-9a-fA-F]{2}(-|:)){5}[0-9a-fA-F]{2}\b/
  %x'ifconfig > ip.txt'
  file=File.read('ip.txt')
  match = file.scan(mac).to_s.gsub(/[\,\[\]\"\s]/, "")
  puts "Mac address is: #{match}"