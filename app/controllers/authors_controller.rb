class AuthorsController < ApplicationController

  # def index
  #   render({json: Author.all})
  # end

  def index
    @authors = Author.all 
    # binding.pry
  end

  def new
    @author = Author.new 
  end


  def create  
    @author = Author.new(author_params)
    # byebug
    if @author.save
      redirect_to @author
    else
      render :new
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  private
    def author_params
      params.require(:author).permit(:name)
    end

end
