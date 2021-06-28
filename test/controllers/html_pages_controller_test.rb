require "test_helper"

class HtmlPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select 'title', 'Home | Lukas Hauser'
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select 'title', 'About | Lukas Hauser'
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select 'title', 'Contact | Lukas Hauser'
  end

  test "should get cookiepolicy" do
    get cookiepolicy_path
    assert_response :success
    assert_select 'title', 'Cookies | Lukas Hauser'
  end

  test "should get privacypolicy" do
    get privacypolicy_path
    assert_response :success
    assert_select 'title', 'Privacy | Lukas Hauser'
  end

  test "should get terms" do
    get terms_path
    assert_response :success
    assert_select 'title', 'Terms | Lukas Hauser'
  end
end
