module Auto
  # Search Helper class responsible for processing data coming from the elements
  class SearchHelper
    include RSpec::Matchers
    include Capybara::DSL
  end
end

World(Auto)
