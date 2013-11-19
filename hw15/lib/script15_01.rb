# ========================================================================
# Script 		=	script15_01
# ========================================================================
# Description 	=	"Retrieves Subnet Mask"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
ip_pc=/\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/
ip_mac=/[^(?:0x)]?([\da-fA-F]{8})/

if RUBY_PLATFORM =~ /32/ then
  %x'ipconfig/all > ip.txt'
  file=File.read('ip.txt')
  match=file.scan(ip_pc)
  subnet_mask=match[1]
  puts "Subnet mask: #{subnet_mask}"
  
else
  %x'ifconfig > ip.txt'
  file=File.read('ip.txt')
  match = file.scan(ip_mac)
  subnet_mask=match[1].to_s.gsub(/(\[\")([\da-fA-F]{8})(\"\])/, '\2')
  puts "Subnet mask: #{subnet_mask.scan(/../).map {|i| i.to_i(16)}.join(".")}"
end