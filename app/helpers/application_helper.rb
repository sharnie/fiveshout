module ApplicationHelper
  
  def flash_class(level)
    case level
      when 'notice'  then "alert alert-info"
      when 'success' then "alert alert-success"
      when 'error'   then "alert alert-danger"
      when 'alert'   then "alert alert-warning"
    end
  end

  def avatar_url(user, size)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  end

end
