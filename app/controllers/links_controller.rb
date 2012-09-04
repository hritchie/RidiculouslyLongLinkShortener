class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new 
    @link = Link.new
    @button_label = "Create Link!" 
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      redirect_to root_path
    else
      flash.now[:error] = "Invalid link/shortcode combination."
      render :new
    end
  end

  def destroy
    link = Link.find_by_id(params[:id])
    link.delete
    redirect_to root_path
  end

  def edit
    @link = Link.find_by_id(params[:id])
    @button_label = "Edit Link!" 
  end

  def update
    @link = Link.find_by_id(params[:id])
    if @link.update_attributes(params[:link])
      redirect_to root_path
    else
      flash.now[:error] = "Invalid link/shortcode combination."
      render :edit
    end
  end

  def show
    link = Link.find_by_shortcode(params[:shortcode])
    link ? (redirect_to link.location) : (redirect_to root_path)
  end
end
