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
    movies = Movie.create(

    title: params[:title],
    rating: params[:rating],
    year: params[:year]
    )
      render json: movies
  end

  def update
    movies = Movie.find(params[:id])
      movies.update(
      title: params[:title] || movies.title,
      rating: params[:rating] || movies.rating,
      year: params[:year] || movies.year
      )
        render json: movies
    end

    def destroy
      movies = Movie.find(params[:id])

      movies.destroy

      render json: { message: "Movie Deleted..." }
    end
end
