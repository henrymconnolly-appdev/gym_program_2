require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_one(:profile) }

    it { should have_one(:feed) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
