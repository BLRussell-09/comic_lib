class ComicsController < ApplicationController
  include ActiveModel::Model

  def index
    @comics = Comic.all
  end

  def new
    @comic = Comic.new
  end

  def create
    ActiveRecord::Base.transaction do
      @comic = Comic.create(comic_params)

      @author = Author.create name: params['comic']['author']['name']
      @artist = Artist.create name: params['comic']['artist']['name']
      @editor = Editor.create name: params['comic']['editor']['name']

      @author.comics << @comic
      @artist.comics << @comic
      @editor.comics << @comic

      @comic.authors << @author
      @comic.artists << @artist
      @comic.editors << @editor

      redirect_to @comic
    end
  end

  def show
    @comic = Comic.find(params[:id])
    @author = @comic.authors.first()
    @artist = @comic.artists.first()
    @editor = @comic.editors.first()
  end

  private
    def comic_params
      params.require(:comic).permit(:title, :issue,
        author_attributes: [:name],
        artist_attributes: [:name],
        editor_attributes: [:name]
      )
    end

end
