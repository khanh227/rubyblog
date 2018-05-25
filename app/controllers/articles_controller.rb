class ArticlesController < ApplicationController

  # http_basic_authenticate_with name: @name, password: @password, except: [:index, :show]
  add_breadcrumb "Articles", :articles_path

  def new
    @article = Article.new
    add_breadcrumb "New", "", :title => "Back to the Index"
  end

  def edit
    @article = Article.find(params[:id])

      add_breadcrumb "Edit", "", :title => "Back to the Index"
  end

  def index
    @articles  = Article.paginate(:page => params[:page])
  end

  def show
    @article = Article.find(params[:id])
    add_breadcrumb "Show", "", :title => "Back to the Index"
  end

  def create
    @article = Article.new(article_params)
    add_breadcrumb "Create", "", :title => "Back to the Index"

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
    add_breadcrumb "update", articles_path, :title => "Back to the Index"
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :attachment)
  end
end
