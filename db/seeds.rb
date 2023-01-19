# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'rest-client'
require 'json'

Author.destroy_all
List.destroy_all
Poem.destroy_all

shakes = Author.create({ name: "William Shakespeare" })
poe = Author.create({ name: "Edgar Allen Poe" })

roandjul = Poem.create({ author_name: "William Shakespeare", title: "Romeo and Juliet", lines: "Parting is such sweet sorrow." })
raven = Poem.create({ author_name: "Edgar Allen Poe", title: "The Raven", lines: "Quoth the Raven, Nevermore." })


List.create([
  {owner_name: "Dan Suarez", author: shakes, poem: roandjul },
  {owner_name: "Agus Roap", author: poe, poem: raven },
])



# poem1 = Poem.create([{ author_name: "William Shakespeare", title: "Romeo and Juliet", lines: "Parting is such sweet sorrow."  }])
# poem2 = Poem.create([{ author_name: "Edgar Allen Poe", title: "The Raven", lines: "Quoth the Raven, Nevermore."  }])


# shakespeare_data = get_authors.each do |author|
# Author.create(name: shakespeare_data["name"])

# poe_data = get_authors
# Author.create(name: poe_data["name"])

# def get_poems
  #   url = "https://poetrydb.org//author/all"
  #   response = RestClient.get(url)
    
  #   response_array = JSON.parse(response)
  #   response_array.each do |poem|
  #    Poem.create(author_name: poem["author"], title: poem["title"], lines: poem["lines"])  
  #     # byebug
  #   end
  # end
  # get_poems()

  # def get_lists
  #   url = "https://poetrydb.org//author/all"
  #   response = RestClient.get(url)
  #   # byebug
  #   response_array = JSON.parse(response)
  #   response_array.each do |list|
  #     # byebug
  #    List.create(author_name: list["author"], title: list["title"], lines: list["lines"])    
  #   #  byebug
  #   end
  # end
  # get_lists()

  # def get_authors
  #   url = "https://poetrydb.org/author"
  #   response = RestClient.get(url)
  #   # byebug
  #   response_array = JSON.parse(response)
  #   # byebug
  #   response_array.each do |author|
  #       byebug
  #     Author.create(name: author["author"])  
  #   end
  #   # byebug
  # end
  #   get_authors()
