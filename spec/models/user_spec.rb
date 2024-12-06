require 'rails_helper'

# RSpec.describe User, type: :model do
#   it "is valid with a name and email" do
#     user = User.new(name: "John Doe", email: "john@example.com")
#     expect(user).to be_valid
#   end

#   it "is invalid without a name" do
#     user = User.new(email: "john@example.com")
#     expect(user).to_not be_valid
#   end
# end


RSpec.describe User, type: :model do
  it "is valid with a name and email" do
    user = FactoryBot.create(:user)
    expect(user).to be_valid
  end

  it "is invalid without a email" do
    user = FactoryBot.create(:invalid_user)
    expect(user).to_not be_valid
  end
end