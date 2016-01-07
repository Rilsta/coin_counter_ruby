require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('coin combinations path', {:type => :feature}) do
  it ('user inputs monetary amount and redirect to page with change') do
    visit('/')
    fill_in('change', :with => '0.25')
    click_button('Submit')
    expect(page).to have_content('1 quarter')
  end
end
