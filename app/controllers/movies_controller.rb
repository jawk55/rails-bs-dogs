class MoviesController < ApplicationController
  before_action :asign_movie, only: [:edit,:show,:update,:destroy]

  def index
    @movies = Movie.all
    @genres = Genre.all
    var = 0
    var = var-1

    @var = var
  end

  def new
    @movie  = Movie.new
    @genres = Genre.all
  end

  def edit
  end

  def show
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    #redirect_to action: :index, notice: "The movie created #{@movie.title}"
    redirect_to({ :action => "index" }, {:notice => "The painter: #{@movie.title} was created"})
  end

  def update
    @movie.update(movie_params)
    #redirect_to action: :index, notice: "The movie created #{@movie.title}"
    redirect_to({ :action => "index" }, {:notice => "The painter: #{@movie.title} was updated"})
  end

  def destroy
    @movie.destroy
    #redirect_to action: :index, notice: "The movie created #{@movie.title}"
    redirect_to({ :action => "index" }, {:notice => "The painter: #{@movie.title} was eliminated!"})
  end

  #protected

  private
  def movie_params
    params.require(:movie).permit(:title, :duration, genres_ids: [])
  end

  def asign_movie
    @movies = Movie.find(params[:id])
    @genres = Genre.all
  end


end