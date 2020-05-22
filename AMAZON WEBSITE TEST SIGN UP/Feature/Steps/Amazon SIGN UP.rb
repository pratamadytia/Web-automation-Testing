require 'cucumber'
require 'watir'
require 'rspec'

Given('user goes to amazon sign up') do
  @browser = Watir::browser.new :ff
  @browser.goto 'https://www.amazon.com/ap/register?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com%2Fnew-account-sign-up%2Fs%2F%3F_encoding%3DUTF8%26k%3Dnew%2520account%2520sign%2520up%26ref_%3Dnav_newcust&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=usflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&'
end

Then('user fill in name') do
  @browser.text_field (:type= 'text').set #(arg)
  @browser.send_keys :return
end

Then('user fill in email') do
  @browser.text_field (:type= 'email').set
  @browser.send_keys :return
end

Then('user fill in password') do
  @browser.text_field (:type= 'password').set
  @browser.send_keys :return
end

Then('user fill in confirm password') do
  @browser.text_field (:type= 'password').set
  @browser.send_keys :return
end


Then('user see homepage') do
  @browser.div(:input type='password') wait_until_present
  page.output @browser.goto https://www.amazon.com/
  @browser.text_field (input type='password').set
  @browser.send_keys return    
  assert(page.output == true)
  @browser.close
end