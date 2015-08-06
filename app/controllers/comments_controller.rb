class CommentsController < ApplicationController
  before_filter :load_product

  def create
    @comment = @product.comments.new(params[:comment])
    @comment.user_id = current_user.id
    respond_to do |format|
      if @product.save
        format.html { redirect_to(@product, :notice => 'Your comment has been added.') }
        format.js
      else
        format.html { redirect_to @product }
        format.js
      end
    end
  end

  private

  def load_product
    @product = Product.find(params[:product_id])
  end
end
