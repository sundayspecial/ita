# ========================================================================
# Script 		=	script14_03
# ========================================================================
# Description 	=	"This script retrieves ipv6 from users machine"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
ipv6 = /[\dA-Fa-f]{1,4}(:[\dA-Fa-f]{1,4})*::([\dA-Fa-f]{1,4}(:[\dA-Fa-f]{1,4})*)?%\d{2}/
  %x'ifconfig > ip.txt'
  file=File.read('ip.txt')
  $match = file.scan(ipv6).to_s
  
  if $match.scan(/\w+/).length == 0
    p "No ipv6 found"
  else
  puts "ipv6 is: #{$match}"
end