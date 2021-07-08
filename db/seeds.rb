# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artwork = Artwork.create({
             listing_name: 'Recycling - What else?',
             category: 'Digital',
             description: "I wonder how many of those capsules end up in landfills and elsewhere where they shouldn't. If you're using coffee capsules out of convenience - how do you feel about recycling them?",
             medium: '',
             height: '',
             width: '',
             year: '2016',
             status: 'For Sale',
             url: 'https://opensea.io/assets/0x495f947276749ce646f68ac8c248420045cb7b5e/40525126915916834544117793535314037258910228972250538345868954552158673436673/',
             tags: 'Digital Art, NFT'
           })
          artwork.images.attach(
            io: File.open('app/assets/images/recycling_what_else.jpg'),
            filename: 'recycling_what_else.jpg')
          artwork.save!
