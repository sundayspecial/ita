# ========================================================================
# Script 		=	script6_02
# ========================================================================
# Description 	=	"This script counts text files in your home directory"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
files_txt = /(\w+\.(txt))/
list=[]
if RUBY_PLATFORM =~/32/ then
  %x'dir /s cd %HOMEDRIVE% > list_txt.txt'
  sleep(10)
  
  file=File.read("list_txt.txt")
  file.scan(files_txt) do |all_match|
    list << all_match
  end
  
  puts "Your home directory contains: #{list.size} files"
  
else
  %x'cd $HOME ; ls -la > list_txt.txt'
  sleep(10)
  file=File.read('/Users/kristina/list_txt.txt')
  
  file.scan(files_txt) do |all_match|
    list << all_match
  end
  
  puts "Your home directory contains: #{list.size} text files"
end