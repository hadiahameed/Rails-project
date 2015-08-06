module ProductsHelper

  def is_allowed(id)
    current_user.id == id
  end

end
