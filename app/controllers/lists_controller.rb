class ListsController < ApplicationController
   
  def index
    @lists = List.all 
  end

  # def index
  #   render({json: List.all})
  # end

  def show
    @list = List.find(params[:id])
  end
    
  def new
    @list = List.new  
    # @list.build_poem(:author_name => "name", :title => "title", :lines => "lines")
    # @list.poems.build(:author_name => "name", :title => "title", :lines => "lines")
    # @list.poems.build(author_name: 'name', title: 'title', lines: 'lines')
  end

  def create
    # raise params.inspect
    # @list = List.create(list_params)
    # redirect_to @list

    @list = List.new(list_params)
    if @list.save
      redirect @list
    else
      render :new
    end
  end
    
  private

    # def list_params
    #   params.require(:list).permit(:owner_name, poems_attributes: [:author_name, :title, :lines])
    #   # params.require(:list).permit(:author_name, :title, poems_attributes: [:author_name, :title, :lines])
    # end
    
end
