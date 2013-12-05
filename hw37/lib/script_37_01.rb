# ========================================================================
# Script 		=	script_37_01.rb
# ========================================================================
# Description 	=	"This script evaluates expected results in Google search"
# Name 			=	"Kristina Rudzinskaya"
# Email 		=	"kristina.rudzinskaya@gmail.com"
# ========================================================================
require "selenium-webdriver"
require "trollop"
require 'csv'

@driver=Selenium::WebDriver.for :firefox
@url="http://www.google.com/advanced_search"
@driver.manage.timeouts.implicit_wait=30
@key=ARGV[0]
@expected_result=ARGV[1]
@key||="QA"
@expected_result||="11300000000"

opts = Trollop::options do
  opt :input, "input file", :short => "-i", :type =>String
  opt :output, "output file", :short => "-o", :type =>String
end
@input=opts[:input]
@report=opts[:output]
@re=/((\d+)?\,\d+)+/

def test_case(key, expected_result)
@driver.get(@url)
@driver.find_element(:name, "as_q").clear
@driver.find_element(:name, "as_q").send_keys key
@driver.find_element(:xpath, "//input[@value='Advanced Search']").click
@total=@driver.find_element(:id, "resultStats").text
@actual_result=@total.match(@re).to_s
expected_result=expected_result.to_s
if @actual_result == expected_result
  File.open(@report, 'a') do |file|
  file.puts "For keyword \"#{key}\" - Test Cases is passed :: Expected result: #{expected_result} MATCHES ActualResult: #{@actual_result}"
end
else
  File.open(@report, 'a') do |file|
  file.puts "For keyword \"#{key}\" - Test Cases is failed :: Expected result: #{expected_result} MISATCHES ActualResult: #{@actual_result}"
end
end
end
csv=CSV.read(@input)
csv.each do |values|
  key=values[1]
  expected_result=values[2..-1].join(',')
test_case(key, expected_result)
end
@driver.quit