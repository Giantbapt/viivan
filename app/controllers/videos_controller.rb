class VideosController < ApplicationController
   skip_before_action :authenticate_user!, only: [ :index, :show ]

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    @video.save!
    redirect_to videos_path, notice:"Nouvelle Video ajouté, bien ouej!"
  end

  def edit
    @video = Video.find(params[:id])
  end
  def update
    @video = Video.find(params[:id])
    @video.update(video_params)

    redirect_to video_path(@video)
  end

  def index
    @videos = Video.all.sort_by{|e| e[:time_ago]}.reverse()
  end

  def show
    @video = Video.find(params[:id])

  end


  private

  def video_params
    params.require(:video).permit(:id, :title, :url, :slug, :meta_title, :meta_image, :meta_description)
  end
end
