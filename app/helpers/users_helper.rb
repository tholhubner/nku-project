module UsersHelper
  def gravitar_url(user)
    if user.profileImgUrl.present?
      user.profileImgUrl
    else
      hash = Digest::MD5.hexdigest(user.email)
      profileImgUrl = "http://www.gravatar.com/avatar/#{hash}"
    end
  end
end
