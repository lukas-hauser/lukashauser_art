require "test_helper"

class ArtworkTest < ActiveSupport::TestCase
  def setup
    @artwork = Artwork.new(listing_name: 'Moana Lisa',
      description: 'This is the Hawaiian version of Mona Lisa',
      height: '60',
      width: '50',
      year: '2020',
      category: 'Painting',
      medium: 'Oil on Canvas',
      tags: 'Mona Lisa, Art',
      url: 'www.exhybyt.com/art',
      status: 'For Sale')
  end

  test 'should be valid' do
    assert @artwork.valid?
  end

  test 'listing name should be present' do
    @artwork.listing_name = ' '
    assert_not @artwork.valid?
  end

  test 'Listing name should be no more than 60 characters ' do
    @artwork.listing_name = 'a' * 61
    assert_not @artwork.valid?
  end

  test 'Description should be no more than 1000 characters ' do
    @artwork.description = 'a' * 1001
    assert_not @artwork.valid?
  end

  test 'Category should be present' do
    @artwork.category = '   '
    assert_not @artwork.valid?
  end

  test 'Category should be no more than 60 characters ' do
    @artwork.category = 'a' * 61
    assert_not @artwork.valid?
  end

  test 'tags should be present' do
    @artwork.tags = '   '
    assert_not @artwork.valid?
  end

  test 'Tags should be no more than 60 characters ' do
    @artwork.tags = 'a' * 61
    assert_not @artwork.valid?
  end

  test 'Height should be a positive number' do
    @artwork.height = -5
    assert_not @artwork.valid?
    @artwork.height = 0
    assert_not @artwork.valid?
  end

  test 'Width should be a positive number' do
    @artwork.width = -5
    assert_not @artwork.valid?
    @artwork.width = 0
    assert_not @artwork.valid?
  end
end
