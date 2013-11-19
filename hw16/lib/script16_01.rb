# ========================================================================
# Script 		=	script16_01
# ========================================================================
# Description 	=	"This script counts all files in your home directory"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
files_all = /(\w+\.\w{2,3})/
list=[]
if RUBY_PLATFORM =~/32/ then
  %x'dir /s cd %HOMEDRIVE% > list.txt'
  sleep(10)
  
  file=File.read("list.txt")
  file.scan(files_all) do |all_match|
    list << all_match
  end
  
  puts "Your home directory contains: #{list.size} files"
  
else
  %x'cd $HOME ; ls -la > list.txt'
  sleep(10)
  file=File.read('/Users/kristina/list.txt')
  
  file.scan(files_all) do |all_match|
    list << all_match
  end
  
  puts "Your home directory contains: #{list.size} files"
end