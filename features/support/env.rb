require 'rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'logger'
require 'byebug'
require 'date'

@timeout = ENV.key?('TIMEOUT') && ENV['TIMEOUT'] != '' ? ENV['TIMEOUT'] : 300
@default_max_wait_time = 90

if ENV.key?('DEFAULT_MAX_WAIT_TIME') && ENV['DEFAULT_MAX_WAIT_TIME'] != ''
  @default_max_wait_time = ENV['DEFAULT_MAX_WAIT_TIME']
end

client = Selenium::WebDriver::Remote::Http::Default.new
client.read_timeout = @timeout.to_i

caps = Selenium::WebDriver::Remote::Capabilities.chrome
caps[:unexpectedAlertBehaviour] = 'accept'
caps[:javascriptEnable] = false

prefs = {
  prompt_for_download: false
}

options = Selenium::WebDriver::Chrome::Options.new(args: ['start-maximized'])
options.add_preference(:download, prefs)
options.add_preference(:plugins, always_open_pdf_externally: true)

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: caps,
    http_client: client,
    options: options
  )
end
Capybara.default_driver = :chrome
Capybara.javascript_driver = :chrome
