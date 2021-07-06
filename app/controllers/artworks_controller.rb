class ArtworksController < ApplicationController
  def show
    @artwork = Artwork.find(params[:id])
  end

  def index
    @artworks = Artwork.all
  end

  def paintings
    @artworks = Artwork.where('category = ?', 'Painting')
  end

  def photography
    @artworks = Artwork.where('category = ?', 'Photography')
  end

  def digital_art
    @artworks = Artwork.where('category = ?', 'Digital')
  end
end
