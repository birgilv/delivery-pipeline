require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'System Acceptance Test', type: :feature do
  before do
    Capybara.app_host = ENV['WEB_URL'] || 'http://localhost:3000'
  end

  it 'loads the main page successfully' do
    visit '/'
    expect(page.status_code).to eq(200)
    expect(page).to have_content('Welcome') # Adjust this based on your homepage content
  end

  it 'checks health endpoint' do
    visit '/health'
    expect(page.status_code).to eq(200)
    expect(page).to have_content('Healthy') # Check expected response in /health endpoint
  end
end