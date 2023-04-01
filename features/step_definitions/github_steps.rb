require_relative '../support/github_homepage'
require 'capybara-screenshot/cucumber'

Given('I am on the GitHub homepage') do
  @github_homepage = GitHubHomePage.new
  @github_homepage.load
end

When('I click the sign in button') do
  @github_homepage.sign_in_button.click
end

When('I search for {string}') do |query|
  @github_homepage.span.click
  @github_homepage.search_field.set(query)
  @github_homepage.search_button.click
end

Then('I should see {string} in the search results') do |result|
  expect(page).to have_content(result)
end
