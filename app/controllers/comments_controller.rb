class CommentsController < ApplicationController
  before_filter :load_product

  def create
    @comment = @product.comments.new(params[:comment])
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to @product, notice: "Your comment has been added"
    else
      render :new
    end
  end

  private

  def load_product
    @product = Product.find(params[:product_id])
  end
end
