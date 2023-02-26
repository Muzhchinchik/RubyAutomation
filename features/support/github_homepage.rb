require 'site_prism'

class GitHubHomePage < SitePrism::Page
  set_url 'https://github.com'

  element :sign_in_button, 'a[href="/login"]'
  element :search_field, 'input[name="q"]'
  element :search_button, 'svg[title="Search"]'
  element :span, 'span[class="Button-label"]'
end
