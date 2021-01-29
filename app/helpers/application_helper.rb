module ApplicationHelper

  def user_avatar(user, size=40)
    if user.avatar.attached?
      user.avatar.variant(resize: "#{size}x#{size}!")
    else
      gravatar_image_url(user.email, size: size)
    end
  end

  def logged_in?
    !!current_user
  end

  def resource_nombre
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def devise_mapping
     @devise_mapping ||= Devise.mappings[:user]
   end

   def user_avatar(user, size=40)
     if user.avatar.attached?
       user.avatar.variant(resize: "#{size}x#{size}!")
     else
       gravatar_image_url(user.email, size: size)
     end
   end
end
