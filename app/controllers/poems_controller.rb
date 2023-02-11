class PoemsController < ApplicationController
  

  def index
    @poems = Poem.all 
    # binding.pry
  end

  # def index
  #   render({json: Poem.all})
  #   binding.pry
  # end

  def new
    @poem = Poem.new 
    # @poem.lists.build(:owner_name => "name")
  end

  def create  
    @poem = Poem.new(poem_params)
    # byebug
    if @poem.save
      redirect_to @poem
    else
      render :new
    end
  end

  def show
    @poem = Poem.find(params[:id])
  end
  

  private
    def poem_params
      params.require(:poem).permit(:author_name, :title, :lines)
      # params.require(:poem).permit(:author_name, :title, :lines, :lists_attributes => [:owner_name])
    end

end
