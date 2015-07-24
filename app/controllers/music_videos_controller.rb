class MusicVideosController < ApplicationController

  def index
    @music_videos = Music_video.all
  end

  def new
    @music_video = Music_video.new
  end

  def show
    @music_video = Music_video.find(params[:id])
  end

  def edit
    @music_video = Music_video.find(params[:id])
  end

  def create
    @music_video = Music_video.new(music_video_params)
    if  music_video.save
    redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    @music_video = Music_video.find(params[:id])
    if music_video.update_attributes(music_video_params)
      redirect_to music_video_path
    else
      render 'edit'
    end
  end

  def destroy
    @music_video = Music_video.find(params[:id]).destroy
    redirect_to music_videos_path
  end
end

private

def music_video_params
  params.require(:music_video).permit(:title, :video_embed_url)
end