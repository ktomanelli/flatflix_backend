class VideosController < ApplicationController
    
    def index
        @movies = Video.all
        render json: @movies
    end

    def show
        @movie = Video.find(params[:id])
        render json: @movie
    end

end
