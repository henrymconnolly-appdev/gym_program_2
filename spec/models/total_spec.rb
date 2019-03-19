require 'rails_helper'

RSpec.describe Total, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:feed) }

    it { should have_one(:breakdown) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
