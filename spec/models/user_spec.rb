require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user){ User.new(name: name) }

    context "with valid value" do
        let(:name){ "aaaaaaaaaaaaaaaaaaaa" }
        it {expect(user).to be_valid }
    end
    
    context "with invalid value" do
        let(:name){ "aaaaaaaaaaaaaaaaaaaaa" }
        it { expect(user).to be_invalid }
    end
end