require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  describe "show" do
    let(:user){build(:user)}
    
    before do
      user.save
    end

    it "sets the correct instance variable" do
      get :show, :id => user.id
    end

    # it "has the title of the correct user" do
    #   user.save
    #   visit user_path(user)

  end

end
