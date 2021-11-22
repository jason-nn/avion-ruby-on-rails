require 'rails_helper'

RSpec.describe 'Category Feature: New', type: :feature do
    it 'should show the new category header' do
        visit new_category_path
        expect(page).to have_content ('New Category')
    end

    it 'should go to the all categories path when all categories is clicked' do
        visit new_category_path
        click_on 'All Categories'
        expect(page).to have_current_path categories_path
    end
end
