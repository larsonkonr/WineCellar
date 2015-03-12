require 'rails_helper'

  describe 'the homepage' do
    it "has the correct content" do
      visit '/'
      expect(page).to have_content 'WineCellar'
      expect(page).to have_content 'Sign in with Twitter'
    end
  end
