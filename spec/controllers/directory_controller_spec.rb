require 'spec_helper'

describe DirectoryController do

  describe "GET 'streams'" do
    it "returns http success" do
      get 'streams'
      response.should be_success
    end
  end

end
