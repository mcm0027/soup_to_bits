class SoupsController < ApplicationController
  before_action :fetch_soup, only: [:show, :edit, :update, :destroy]

  def show
    @soup = Soup.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @soup}
    end
  end

  def index
    @soups = Soup.all

    respond_to do |format|
      format.html
      format.json { render json: @soups }
    end
  end
  def fetch_soup

  end

end
