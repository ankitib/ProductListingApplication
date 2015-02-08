require 'rails_helper'

RSpec.describe Product, :type => :model do
  it 'has a valid factory' do
    expect(build(:product)).to be_valid
  end
  
 it 'is invalid without a name' do 
 	expect(build(:product,name:nil)).to_not be_valid
 end

 it 'is invalid without a price' do 
 	expect(build(:product,price:nil)).to_not be_valid
 end

 it 'is invalid without a description' do 
 	expect(build(:product,description:nil)).to_not be_valid
 end
end
