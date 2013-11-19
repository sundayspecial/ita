# ========================================================================
# Script 		=	script17_06
# ========================================================================
# Description 	=	"This script counts the average of the arguments"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
    opts.on("-a", "--first_number") do
      $a=ARGV[0]
    end

    opts.on("-b", "--second_number") do
      $b=ARGV[0]
    end

    opts.on("-c", "--third_number") do
      $c=ARGV[0]
    end

    opts.on("-d", "--fourth_number") do
      $d=ARGV[0]
    end
    
    opts.on("-e", "--fifth_number") do
      $d=ARGV[0]
    end
    
    opts.on("-f", "--sixth_number") do
      $d=ARGV[0]
    end
    
    opts.on("-g", "--seventh_number") do
      $d=ARGV[0]
    end
    
    opts.on("-h", "--eighth_number") do
      $d=ARGV[0]
    end
    
    opts.on("-i", "--ninth_number") do
      $d=ARGV[0]
    end
    
    opts.on("-j", "--tenth_number") do
      $d=ARGV[0]
    end
end.parse!
$sum=0
ARGV.each {|value| $sum+=value.to_i}
count = ARGV.size/2
puts "The summary of the following numbers is: #{$sum/count}"