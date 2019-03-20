module Auto
  # Search Helper class responsible for processing data coming from the elements
  class SearchHelper
    include RSpec::Matchers
    include Capybara::DSL

    def parsed_years_from_string(years_array)
      parsed_years = []
      years_array.each do |year|
        byebug
        parsed_years << year.split('/').last.to_i
      end
      parsed_years      
    end
  end
end

World(Auto)
