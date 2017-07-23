require 'rails_helper'

RSpec.describe Helpdesk, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before :each do
  	@item = Helpdesk.new
  end
  it "is valid with valid attributes" do
  	@item.name = "anything"
  	@item.phone_number ="anything"
  	expect(@item).to be_valid
  end
  it "is invalid without a name" do
  	@item.name = nil
  	expect(@item).to_not be_valid
  end
  it "is invalid without a phone_number" do
  	@item.phone_number = nil
  	expect(@item).to_not be_valid
  end
end
