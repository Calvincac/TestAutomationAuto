module Auto
  # Base Page class responsible to include Capybara and RSpec
  class BasePage
    include RSpec::Matchers
    include Capybara::DSL
  end
end

World(Auto)
