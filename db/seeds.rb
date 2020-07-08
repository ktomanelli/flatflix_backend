# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.destroy_all
Video.destroy_all
VideoGenre.destroy_all
5.times {|i|
    res=RestClient.get "https://api.themoviedb.org/3/discover/movie?api_key=6ccb94cd2c533a5189819f3915add83d&page=#{i+1}"
    data = JSON.parse(res.body)
    data["results"].each do |movie|
        newRes = RestClient.get "http://www.omdbapi.com/?apikey=43e36491&t=#{URI.encode(movie["title"])}"
        newData = JSON.parse(newRes.body)
        yt = RestClient.get("http://youtube-scrape.herokuapp.com/api/search?q=#{newData["title"]} trailer&page=1")
        video = JSON.parse(yt.body)["results"][0]
        
        newGenre = newData["Genre"]
        vid = Video.create(
            title:newData["Title"],
            year:newData["Year"],
            rating:newData["Rated"],
            runtime:newData["Runtime"],
            released:newData["Released"],
            director:newData["Director"],
            poster_url:newData["Poster"],
            plot:newData["Plot"],
            imdb_rating:newData["imdbRating"],
            youtube:(video)
        )
        if newGenre
            if newGenre.include?(',')
                genreArray = newGenre.split(', ')
                genreArray.each do |genre|
                    if !Genre.find_by(name:genre)
                        gen = Genre.create(name:genre)
                        VideoGenre.create(video_id:vid.id,genre_id:gen.id)
                    else
                        gen = Genre.find_by(name:genre)
                        VideoGenre.create(video_id:vid.id,genre_id:gen.id)
                    end
                end
            else
                if !Genre.find_by(name:newGenre)
                    gen = Genre.create(name:newGenre)
                    VideoGenre.create(video_id:vid.id,genre_id:gen.id)
                else
                    gen = Genre.find_by(name:newGenre)
                    VideoGenre.create(video_id:vid.id,genre_id:gen.id)
                end
            end
        end
    end
}
