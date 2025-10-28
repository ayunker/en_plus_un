class AuthorsController < ApplicationController
  def index
    @authors = Author.all.order(:name)
  end
end
