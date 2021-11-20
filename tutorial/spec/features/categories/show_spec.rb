require 'rails_helper'

RSpec.describe 'Category Feature: Show', type: :feature do
    it 'should show the category name' do
        category = Category.create(name: 'Test Category')
        visit category_path(category)
        expect(page).to have_content ('Test Category')
    end

    it 'should show edit' do
        category = Category.create(name: 'Test Category')
        visit category_path(category)
        expect(page).to have_content ('Edit')
    end

    it 'should show destroy' do
        category = Category.create(name: 'Test Category')
        visit category_path(category)
        expect(page).to have_content ('Destroy')
    end

    it 'should go to the edit path when edit is clicked' do
        category = Category.create(name: 'Test Category')
        visit category_path(category)
        click_on 'Edit'
        expect(page).to have_current_path edit_category_path(category)
    end

    it 'should go to the all categories path when all categories is clicked' do
        category = Category.create(name: 'Test Category')
        visit category_path(category)
        click_on 'All Categories'
        expect(page).to have_current_path categories_path
    end
end
