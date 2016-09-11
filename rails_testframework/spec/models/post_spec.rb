require 'rails_helper'

RSpec.describe Post, :type => :model do

  let(:post){build(:post)}
  let(:user){ build(:user)}

  describe "Posts" do
    
    before do
      user.save
      post.save
    end

    it "Creates a valid post" do 
      expect(post).to be_valid
    end

    it "has a title of first post" do 
      expect(post.title).to eq("first post")
    end

    it "only builds one post" do
      expect(Post.all.count).to eq(1)
    end

    specify "linking a valid Author succeeds" do
      author = User.new
      author.username = "bye"
      author.save
      post.user_id = author.id
      expect( post ).to be_valid
    end
  end
end
