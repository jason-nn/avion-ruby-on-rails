require 'rails_helper'

RSpec.describe 'Category Requests', type: :request do
    it 'GET /categories' do
        get '/categories'
        expect(response).to have_http_status(200)
    end

    it 'POST /categories' do
        expect do
            post categories_path, params: { category: { name: 'Test' } }
        end.to change(Category, :count).by(1)
    end

    it 'GET /categories/new' do
        get '/categories/new'
        expect(response).to have_http_status(200)
    end

    it 'GET /categories/:id/edit' do
        category = Category.create(name: 'Test')
        get edit_category_path(category)
        expect(response).to have_http_status(200)
    end

    it 'GET /articles/:id' do
        category = Category.create(name: 'Test')
        get category_path(category)
        expect(response).to have_http_status(200)
    end

    it 'PATCH /categories/:id' do
        category = Category.create(name: 'Test')
        patch category_path(category), params: { category: { name: 'Updated' } }
        expect(response).to redirect_to(category_path(category))
    end
end
