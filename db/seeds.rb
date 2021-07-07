# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artwork = Artwork.create({
             listing_name: 'Solar Eclipse',
             category: 'Digital',
             description: '',
             medium: '',
             height: '',
             width: '',
             year: '2021',
             status: 'For Sale',
             url: 'https://opensea.io/assets/0x495f947276749ce646f68ac8c248420045cb7b5e/40525126915916834544117793535314037258910228972250538345868954549959650181121/',
             tags: 'Digital Art, NFT'
           })
          artwork.images.attach(
            io: File.open('app/assets/images/solar_eclipse_nft.png'),
            filename: 'solar_eclipse_nft.png')
          artwork.videos.attach(
            io: File.open('app/assets/images/solar_eclipse_nft.mp4'),
            filename: 'solar_eclipse_nft.mp4')
          artwork.save!
