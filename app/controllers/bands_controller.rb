class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def show
    @band = Band.find(params[:id])
  end

  def edit
    @band = Band.find(params[:id])
  end

def create
  @band = Band.new(band_params)
  if @band.save
    redirect_to root_path
  else
  render 'new'
  end
end

def update
  @band = Band.find(params[:id])
  if @bands.update_attributes(band_params)
  redirect_to band_path
  else 
  render 'edit'
  end
end

def destroy
  @band = Band.find(params[:id]).destroy 
  redirect_to bands_index_path  
end
  
end 

private

def band_params
  params.require(:band).permit(:name, :genre)
end


