search_page   = Auto::SearchPage.new
search_helper = Auto::SearchHelper.new

When /^i apply search registration filter to '(.*)'$/ do |year|
  search_page.search_registration_button.click
  search_page.min_year_select.find(:option, year).select_option
end

Given /^I open Auto 1 search page$/ do
  visit 'https://www.autohero.com/de/search/'
end

And /^i sort cars to '(.*)' order$/ do |order|
  search_page.sort_select.find(:option, order, wait: 2).select_option
end

Then /^i should see cars filtered from '(.*)' ahead$/ do |year|
  byebug
end

And /^I should see price in descending order$/ do 
  byebug
end
