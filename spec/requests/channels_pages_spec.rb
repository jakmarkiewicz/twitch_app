require 'spec_helper'

describe "ChannelsPages" do

  describe "Home page" do
    it "should have the content 'Channels Home'" do
      visit '/channels_page/home'
      page.should have_content('Channels Home')
    end
  end

end