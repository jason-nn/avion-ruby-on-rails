# navigate to tutorial
# rspec spec/models/article_spec.rb --format d

require 'rails_helper'

describe Article, type: :model do
    before :all do
        @title = 'Hello Test!'
        @body = 'I am writing my first test.'
        @article = Article.new(title: @title, body: @body)
    end

    it 'should not catch fire when you create an instance' do
        expect(@article).not_to eq nil
    end

    # Document is a class.
    # The Document class is indeed found in the document.rb file.
    # The document.rb file doesn’t contain any really egregious Ruby syntax errors.
    # Document.new will take three arguments.
    # Document.new actually returns something.
    # Document.new doesn’t throw an exception.

    it 'should hold and return title' do
        expect(@article.title).to eq @title
    end

    it 'should hold and return body' do
        expect(@article.body).to eq @body
    end

    it 'should need a title to be valid' do
        expect(Article.new(body: @body)).not_to be_valid
    end

    it 'should need a body to be valid' do
        expect(Article.new(title: @title)).not_to be_valid
    end
end
