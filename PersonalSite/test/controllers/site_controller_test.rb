require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get site_name:string_url
    assert_response :success
  end

  test "should get image:string" do
    get site_image:string_url
    assert_response :success
  end

  test "should get description:text" do
    get site_description:text_url
    assert_response :success
  end

end
