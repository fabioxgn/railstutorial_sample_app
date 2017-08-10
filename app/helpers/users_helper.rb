module UsersHelper

  def gravatar_for(email, name, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{options[:size]}"
    image_tag(gravatar_url, alt: name, class: "gravatar")
  end
end
