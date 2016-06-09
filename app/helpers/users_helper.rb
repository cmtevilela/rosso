module UsersHelper
  def user_status(user)
    if user.is_married?
      "Casado"
    else
      "Vida Comum"
    end
  end
end
