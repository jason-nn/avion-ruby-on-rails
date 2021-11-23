# rspec spec/models/category_spec.rb --format d

require 'rails_helper'

RSpec.describe Category, type: :model do
    before :all do
        @name = 'Test'
        @category = Category.new(name: @name)
    end

    it 'should not catch fire when you create an instance' do
        expect(@category).not_to eq nil
    end

    # Category is a class.
    # The Category class is indeed found in the category.rb file.
    # The Category.rb file doesn’t contain any really egregious Ruby syntax errors.
    # Category.new will take one argument.
    # Category.new actually returns something.
    # Category.new doesn’t throw an exception.

    it 'should hold and return name' do
        expect(@category.name).to eq @name
    end

    it 'should need a name to be valid' do
        expect(Category.new(name: nil)).not_to be_valid
    end

    it 'should not save duplicate category name' do
        @category.save
        expect(Category.new(name: @name)).not_to be_valid
    end
end
