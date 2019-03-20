module Auto
  # Search Page Objects responsible for mapping Search Page elements
  class SearchPage < BasePage
    SEARCH_REG_BUTTON = 'div[data-qa-selector="filter-year"]'
    MIN_YEAR          = 'select[name="yearRange.min"]'
    SORT_SELECT       = 'select[name="sort"]'
    YEAR_BY_CAR       = 'ul[data-qa-selector="spec-list"] > li:nth-child(1)'

    def search_registration_button
      page.find(SEARCH_REG_BUTTON)
    end

    def min_year_select
      page.find(MIN_YEAR)
    end

    def sort_select
      page.find(SORT_SELECT)
    end

  end
end

World(Auto)
