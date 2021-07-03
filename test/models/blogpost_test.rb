require "test_helper"

class BlogpostTest < ActiveSupport::TestCase
  def setup
    @blogpost = Blogpost.new(post_title: 'New post')
  end

  test 'should be valid' do
    assert @blogpost.valid?
  end

  test 'post title should be present' do
    @blogpost.post_title = ' '
    assert_not @blogpost.valid?
  end
end
