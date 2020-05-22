require 'rubygems'
require 'rspec'
require 'watir'
 
include Selenium
 
#Creating Remote WebDriver
browser = Watir::Browser.new(:chrome, :url =&gt; "https://www.amazon.com/sign/s?k=sign+in",
                              :desired_capabilities =&gt; WebDriver::Remote::Capabilities.chrome)
#If you want to run it locally, use Watir::Browser.new :firefox
							  
Before do
  @browser = browser
end
