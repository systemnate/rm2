require 'rails_helper'

RSpec.describe 'user signs in', type: :system do
  it 'allows a successful sign in' do
    user = create(:user)
    visit root_url

    click_on 'Sign in'
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password

    click_button 'Log in'

    expect(page).to have_content I18n.t('devise.sessions.signed_in')
  end
end
