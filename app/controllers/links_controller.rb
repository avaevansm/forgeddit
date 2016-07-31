class LinksController < ApplicationController
  def index
    @links = Link.all
    render :index
  end

  def new
    @link = Link.new
  end

  def show
    @link = Link.find(params[:id])
  end

  def create
    @link = Link.create(link_params)
    redirect_to "/links#index"
  end

  def edit
  end


  private
  def link_params
    params.require(:link).permit(:url, :name)
  end

end
