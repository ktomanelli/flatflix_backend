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
        genres = Genre.all.sort
        genres.each do |genre|
            if genre.videos.count>=7
                movies[genre.name] = genre.videos
            end
        end
        render json: movies
    end
end
