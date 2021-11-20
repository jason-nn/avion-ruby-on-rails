require 'rails_helper'

RSpec.describe 'Category Feature: Create', type: :feature do
    it 'should create a category' do
        visit new_category_path
        fill_in 'Name', with: 'Test Category'
        click_on 'Create Category'
        visit categories_path
        expect(page).to have_content ('Test Category')
    end
end
