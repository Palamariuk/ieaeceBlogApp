class ArticlesController < ApplicationController

  attr_reader :article
  #http_basic_authenticate_with name: "root", password: "root", except: [:index, :show]

  before_action :authenticate_account!, only: %i[new create edit update destroy]
  before_action :set_article, only: %i[show edit destroy update]

  ARTICLES_PER_PAGE = 3

  def index
    authorize Article

    @page = params.fetch(:page, 0).to_i
    @sortorder = params.fetch(:sort, 'desc')
    @category = params.fetch(:category, 'All')
    @query = "created_at #{@sortorder}"

    @articles = if @category == 'All'
                  Article.order(@query)
                         .with_authors
                         .paginate(page: params[:page], per_page: ARTICLES_PER_PAGE)
                         .search(params[:query])
                else
                  Article.order(@query)
                         .where(category: @category)
                         .with_authors
                         .paginate(page: params[:page], per_page: ARTICLES_PER_PAGE)
                         .search(params[:query])
                end

  end

  def show
    authorize @article

    @article = Article.find(params[:id])
  end

  def new
    authorize Article

    @article = Article.new
  end

  def create
    authorize Article

    @article = Article.new
    @article.title = article_params[:title]
    @article.body = article_params[:body]
    @article.status = article_params[:status]
    @article.category = article_params[:category]
    @article.author = current_account
    @article.author.username = current_account.username

    unless article_params[:image].nil?
      image = Cloudinary::Uploader.upload(article_params[:image], options = {})
      @article.image = image['secure_url']
    end

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    authorize @article

    @article = Article.find(params[:id])
  end

  def update
    authorize @article

    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    authorize @article

    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private

  def authenticate_account!
    # code here
  end

  def article_params
    params.require(:article).permit(:title, :body, :status, :image, :category)
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
