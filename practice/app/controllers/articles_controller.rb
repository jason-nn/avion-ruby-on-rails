class ArticlesController < ApplicationController
    layout 'double', only: [:new]
    
    def index
        @number = 20
        @articles = Article.all
    end

    def show; end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to articles_path
        else
            render :new
        end
    end

    def edit; end

    def update; end

    def delete; end

    private

    def article_params
        params.require(:article).permit(:name, :body)
    end
end
