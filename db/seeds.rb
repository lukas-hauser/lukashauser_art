# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

CSV.foreach(Rails.root.join('lib/seed_csv/blog_posts.csv'), headers: true) do |row|
  blogpost = Blogpost.create({
               post_title: row['post_title'],
               created_at: row['created_at']
             })
             unless row['image_urls'].nil?
               row['image_urls'].split(" ").each do |image_url|
                 blogpost.images.attach(
                  io: URI.parse(image_url).open,
                  filename: 'photo.jpg',
                  content_type: 'image/jpg'
                )
                end
              end
            blogpost.save!
            ActionText::RichText.create!(record_type: 'Blogpost', record_id: blogpost.id, name: 'content', body: row['content'])
end

CSV.foreach(Rails.root.join('lib/seed_csv/lukas_hauser_art.csv'), headers: true) do |row|
  artwork = Artwork.create({
               listing_name: row['listing_name'],
               category: row['category'],
               description: row['description'],
               medium: row['medium'],
               height: row['height'],
               width: row['width'],
               year: row['year'],
               status: row['status'],
               url: row['created_at'],
               tags: row['tags']
             })
             unless row['image_urls'].nil?
               row['image_urls'].split(" ").each do |image_url|
                 artwork.images.attach(
                  io: URI.parse(image_url).open,
                  filename: 'photo.jpg',
                  content_type: 'image/jpg'
                )
                end
              end
            artwork.save!
end
