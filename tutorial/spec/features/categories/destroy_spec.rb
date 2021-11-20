require 'rails_helper'

RSpec.describe 'Category Feature: Destroy', type: :feature do
    it 'should destroy a category' do
        category = Category.create(name: 'Test Category')
        visit category_path(category)
        click_on 'Destroy'
        visit categories_path
        expect(page).not_to have_content('Test Category')
    end
end
