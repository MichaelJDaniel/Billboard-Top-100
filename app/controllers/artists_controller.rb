class ArtistsController < ApplicationController
  before_action :set_board , except: [:index, :new, :create]
  def index
  @artist = Artist.new
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def edit
    # render :edit
  end

  def create
    @artist = Artist.new[artist_params]
    if @artist.save
      redirect_to artists_path
    else
      render :new
    end
  end


  def update
    if @artist.update[artist_params]
      redirect_to artists_path
    else
      render :edit
  end



  private
  
  def set_artist
    @artist = Artist.find(params[:id])
  end

  def board_params
    params.require(:artist).permit(:name)
