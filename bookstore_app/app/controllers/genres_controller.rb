class GenresController < ApplicationController

    def index
        @genres=Genre.all
    end

    def show
        @genre=Genre.find(params[:id])
    end

    def new
        @genre=Genre.new
        @novel=Novel.new
    end

    def create
        @genre = Genre.new(genre_params)

        #redirecting to genre url when successfully created
        if @genre.save
            redirect_to genres_path
        else
            render 'new'
        end

    end

    def update
    end

    def edit
    end

    def destroy
    end

    private 
    def genre_params
        params.require(:genre).permit(:name)
    end
    
end
