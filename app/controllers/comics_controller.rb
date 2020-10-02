class ComicsController < ApplicationController

  def new
    @comic = Comics.new
  end

  def create
    @article = Article.find(params[:id])

    if @article.save
      redirect_to @article
    else
      render 'new'
  end

  private
    def comic_params
      params.require(:comics).permit(:title, :author)
    end


end
