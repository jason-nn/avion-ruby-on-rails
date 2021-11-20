require 'rails_helper'

RSpec.describe 'Category Feature: Update', type: :feature do
    it 'should update a category' do
        category = Category.create(name: 'Test Category')
        visit edit_category_path(category)
        fill_in 'Name', with: 'Updated Category'
        click_on 'Update Category'
        visit categories_path
        expect(page).to have_content('Updated Category')
    end
end
