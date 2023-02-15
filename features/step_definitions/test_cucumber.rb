Given(/^I visit GitHub.com$/) do
    visit 'https://github.com/'
end

And(/^Open 'Sign up' page$/) do
    find(:xpath, "//html/body/div[1]/div[4]/main/div[1]/div[2]/div/div/div[2]/div[2]/form/div/button").click
end

Then(/^Check if the 'Sign up' page is opened$/) do
    find(:xpath,"/html/body/div[1]/div[4]/main/div[2]/text-suggester/div[1]/typing-effect/span[1]")
end