class ComicsController < ApplicationController

  def new
  end

  def create
    render plain: params[:article].inspect
  end

  private
    def comic_params
      params.require(:comics).permit(:title, :author)
    end

end
