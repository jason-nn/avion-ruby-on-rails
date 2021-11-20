require 'rails_helper'

RSpec.describe 'Category Feature: Edit', type: :feature do
    it 'should show the edit category header' do
        category = Category.create(name: 'Test Category')
        visit edit_category_path(category)
        expect(page).to have_content ('Edit Category')
    end

    it 'should go to the all categories path when all categories is clicked' do
        category = Category.create(name: 'Test Category')
        visit edit_category_path(category)
        click_on 'All Categories'
        expect(page).to have_current_path categories_path
    end
end
