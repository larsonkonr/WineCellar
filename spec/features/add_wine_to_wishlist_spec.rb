require 'rails_helper'

  describe 'add_to_wishlist' do
    it 'adds to wishlist' do
      visit '/cellar'
      click_button 'Add to Wishlist'
    end
  end
