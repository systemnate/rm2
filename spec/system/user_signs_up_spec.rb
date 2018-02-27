require 'rails_helper'

RSpec.describe 'user signs up', type: :system do
  it 'allows a successful sign up' do
    visit root_url

    click_on 'Sign up'
    fill_in 'user[email]', with: 'nate@itsridic.com'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'

    click_button 'Sign up'

    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end
