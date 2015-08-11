require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe ('places path'), {type: :feature} do
  it('displays all the places the user inputs in a list') do
    visit('/')
    fill_in('name', with: 'Not Portland')
    click_button('Save')
    click_link('back')
    expect(page).to have_content('Not Portland')
  end
end
