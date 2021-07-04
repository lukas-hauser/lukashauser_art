module ApplicationHelper
  def full_title(page_title = ' ')
    base_title = 'Lukas Hauser'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def background_image(image_url)
    base_url = asset_path('thunderstruck.jpg')
    if image_url.empty?
      base_url
    else
      image_url
    end
  end
end
