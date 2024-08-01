class FavoritesController < ApplicationController
  def create
    book_id = book_id.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: book_id)
    favorite.save
    redirect_to book_path(book_id)
  end

  def destroy
    book_id = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: book_id)
    favorite.destroy
    redirect_to book_path(book_id)
  end

end
