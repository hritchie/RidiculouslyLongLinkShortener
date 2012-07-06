class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new 
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      redirect_to links_path
    else
      render 'new'
    end
  end

  def destroy
    link = Link.find_by_id(params[:id])
    link.delete
    redirect_to root_path
  end

  def edit
    @link = Link.find_by_id(params[:id])
  end

  def update
    link = Link.find_by_id(params[:id])
    link.update_attributes(params[:link])
    redirect_to root_path
  end

  def show
    @location = Link.find_by_id(params[:id]).location
    redirect_to @location
  end
end
