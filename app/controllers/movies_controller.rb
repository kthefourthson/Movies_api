class MoviesController < ApplicationController
  def index
    movies = Movie.all

    render json: movies
  end 
  def show 
   movies = Movies.find(params[:id])

    render json: movies
  end 
  def create 
    movies = movies.create( 
    title = movies.title,
    rating = movies.rating
    )
      render json: movies
  end

  def update 
    movies = Movie.find(params[:id]) 
      movies.update( 
     title: params[:title] || movies.title,
      rating: params[:rating] || movies.rating,
      )
        render json: movies
    end

    def destroy
      movies = Movies.find(params[:id])
  
      movies.destroy
  
      render json: { message: "Movie Deleted..." }
    end


end
