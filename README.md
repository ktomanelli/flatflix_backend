# Flatflix

A netflix clone, built with React frontend and Rails backend, which allows users to sign in and watch trailers of their favorite movies.

_Made by [Jessica Kim](https://github.com/dbsk11) and [Kyle Tomanelli](https://github.com/ktomanelli) for their Flatiron School Mod 4 project._

![](public/Flatflix.png)

## How It Works

A user is able to browse available movies separated by category and select individual movies to see information on particular movies as well as watch the trailers for each.

## Built Using?

Flatflix was built with a Rails backend which handles user authentication as well as collection/provision of movie data and trailers. The frontend is built with React which handles neatly displaying the movies of each genre and relevant movie data.

## Software Requirements

- Ruby on Rails
- Node.JS

## How to Run (backend)

- Clone this repo as well as the [frontend repo](https://github.com/dbsk11/flatflix_frontend), navigate to the project root in your terminal.
- Create environment variables for [TMDB_API_KEY](https://developers.themoviedb.org/3/getting-started/authentication) and [OMDB_API_KEY](http://www.omdbapi.com/apikey.aspx?__EVENTTARGET=freeAcct&__EVENTARGUMENT=&__LASTFOCUS=&__VIEWSTATE=%2FwEPDwUKLTIwNDY4MTIzNQ9kFgYCAQ9kFgICBw8WAh4HVmlzaWJsZWhkAgIPFgIfAGhkAgMPFgIfAGhkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYDBQtwYXRyZW9uQWNjdAUIZnJlZUFjY3QFCGZyZWVBY2N0x0euvR%2FzVv1jLU3mGetH4R3kWtYKWACCaYcfoP1IY8g%3D&__VIEWSTATEGENERATOR=5E550F58&__EVENTVALIDATION=%2FwEdAAU5GG7XylwYou%2BzznFv7FbZmSzhXfnlWWVdWIamVouVTzfZJuQDpLVS6HZFWq5fYpioiDjxFjSdCQfbG0SWduXFd8BcWGH1ot0k0SO7CfuulN6vYN8IikxxqwtGWTciOwQ4e4xie4N992dlfbpyqd1D&at=freeAcct&Email=)
- Run `rails db:create`
- Run `rails db:seed`
- Run `rails s`
