require 'rails_helper'

RSpec.describe User, :type => :model do

  let(:user) do
    User.create(:username => "hihi")
  end
end
