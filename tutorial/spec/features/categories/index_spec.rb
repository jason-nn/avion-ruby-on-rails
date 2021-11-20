require 'rails_helper'

RSpec.describe 'Category Feature: Index', type: :feature do
    it 'should show the categories header' do
        visit categories_path
        expect(page).to have_content ('Categories')
    end

    it 'should show created category names' do
        Category.create(name: 'Test Category')
        Category.create(name: 'Test Category 2')
        visit categories_path
        expect(page).to have_content ('Test Category')
        expect(page).to have_content ('Test Category 2')
    end

    it 'should go to the show path of the category when the category name is clicked' do
        category = Category.create(name: 'Test Category')
        visit categories_path
        click_on 'Test Category'
        expect(page).to have_current_path category_path(category)
    end

    it 'should show new category' do
        visit categories_path
        expect(page).to have_content ('New Category')
    end

    it 'should go to the new category path when new category is clicked' do
        visit categories_path
        click_on 'New Category'
        expect(page).to have_current_path new_category_path
    end
end
