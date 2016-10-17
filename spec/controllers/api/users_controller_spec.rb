require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do

  describe "GET #current_user" do
    it "returns http success" do
      get :current_user
      expect(response).to have_http_status(:success)
    end
  end

end
