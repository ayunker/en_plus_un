class AuthorsController < ApplicationController
  def unoptimized
    @authors = Author.all.order(:name)
    render :index
  end

  def partially_optimized
    @authors = Author.includes(:posts).all.order(:name)
    render :index
  end

  def optimized
    @authors = Author.includes(posts: [:tags]).all.order(:name)
    render :index
  end
end
