# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'rest-client'
require 'json'



def get_poems
    url = "https://poetrydb.org/author/all"
    # url = "https://poetrydb.org/title"
    response = RestClient.get(url) 
    response_array = JSON.parse(response)
    response_array.each do |poem|
      # byebug
     author = Author.find_or_create_by(name: poem["author"])
    #  author = Author.create(name: poem["author"])
    #  byebug

    # list = List.create([ {owner_name: "Dan Suarez" }, {owner_name: "Agus Roap" }, {owner_name: "Los Vega" } ])
    #  list = List.create(owner_name: "owner_name")
    #  list.sample["owner_name"]


     poem = Poem.create(author_name: poem["author"], title_name: poem["title"], lines: poem["lines"].join(", "), author_id: author.id) 
    # poem = Poem.create(author_name: poem["author"], title_name: poem["title"], lines: poem["lines"].join(", ")) 
    #  byebug 
    end
end
  get_poems

  
  def get_authors
    url = "https://poetrydb.org/author"
    response = RestClient.get(url)

    response_array = JSON.parse(response)
    response_array["authors"].each do |author|
    # response_array.each do |author|
    # response_array.each do |authors|
    #   authors[1].each do |author|
      # byebug
      a = Author.create(name: author)    
      # a = Author.create(name: author["name"])  
      # byebug 
      # response_array["authors"][0]
      # author[1][0] 
    #   end
    end
  end
  get_authors


  

