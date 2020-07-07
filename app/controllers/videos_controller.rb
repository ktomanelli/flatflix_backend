class VideosController < ApplicationController
    
    def index
        @movies = Video.all
        render json: @movies
    end

    def show
        @movie = Video.find(params[:id])
        render json: @movie
    end
    
    def movies
        movies = {}
        genres = Genre.all
        genres.each do |genre|
            movies[genre.name] = genre.videos
        end
        render json: movies
    end
end
