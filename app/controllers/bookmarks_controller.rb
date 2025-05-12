class BookmarksController < ApplicationController
  before_action :set_category, only: [ :new, :create]

    def new
      @bookmark = Bookmark.new
    end

    def create
      @bookmark = Bookmark.new(bookmark_params)
      @bookmark.category = @category
      if @bookmark.save
        redirect_to category_path(@category)
      else
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
      # !!!! please do not put set_category here, otherwise the page wouldn't delete the bookmark !!!!
      # @category = Category.find(params[:category_id])
      @bookmark = Bookmark.find(params[:id])
      @bookmark.destroy
      redirect_to category_path(@bookmark.category), status: :see_other
    end

    private

    def set_category
      @category = Category.find(params[:category_id])
    end

    def bookmark_params
      params.require(:bookmark).permit(:comment, :recipe_id)
    end
end
