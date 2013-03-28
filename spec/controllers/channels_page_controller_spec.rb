require 'spec_helper'

describe ChannelsPageController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "should recieve channel/viewer number API info with JSON" do
  	it "responds with JSON" do
  		get 'home'
		pending "add JSON tests"
  	end
  end

end
