class AuthorsController < ApplicationController

  # def index
  #   render({json: Author.all})
  # end

  def index
    @authors = Author.all 
  end

  def show
    @author = Author.find(params[:id])
  end

end
