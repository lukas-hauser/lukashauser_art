# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artwork = Artwork.create({
             listing_name: 'This Guitar Does Not Exist - 1',
             category: 'Digital',
             description: "As a guitar nerd (let me confess: Gibson fanboy) and machine learning enthusiast, it was obvious for me to train a GAN (Generative Adversarial Network) with guitar images. None of these guitars actually exists, these are all fake images that the neural network generated. So you might call them Chibsons rather than Gibsons.",
             medium: '',
             height: '',
             width: '',
             year: '2021',
             status: 'For Sale',
             url: 'https://opensea.io/assets/0x495f947276749ce646f68ac8c248420045cb7b5e/40525126915916834544117793535314037258910228972250538345868954553258185064449/',
             tags: 'Digital Art, NFT'
           })
          artwork.images.attach(
            io: File.open('app/assets/images/ThisGuitarDoesNotExist1.png'),
            filename: 'ThisGuitarDoesNotExist1.png')
          artwork.videos.attach(
            io: File.open('app/assets/images/ThisGuitarDoesNotExist1.mp4'),
            filename: 'ThisGuitarDoesNotExist1.mp4')
          artwork.save!
