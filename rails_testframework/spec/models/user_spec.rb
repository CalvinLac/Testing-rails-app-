require 'rails_helper'

RSpec.describe User, :type => :model do

  let(:user){ build(:user) }
  let(:post){build(:post)}

  describe "User and Poste" do
  
    before do
      post.save
      user.save
    end

    it "is valid with default attributes" do
      expect(user).to be_valid
    end

    it "has an id of 1" do 
      expect(user.id).to eq(1)
    end

    it "saves with default attributes" do
      expect{ user.save! }.not_to raise_error
    end

    it "doesn't allow identical usernames" do
      new_user = build(:user, :username => user.username)
      expect(new_user).not_to be_valid
    end

    it "has posts counts" do
      expect(user.post_count).to eq(1)
    end

    it "responds to the posts association" do
      expect(user).to respond_to(:posts)
    end

    it "able to visit landing page" do 
      visit users_path
      expect(current_path).to eq(users_path)
    end
  end
end
