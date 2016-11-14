require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get page_name:string_url
    assert_response :success
  end

  test "should get image:string" do
    get page_image:string_url
    assert_response :success
  end

  test "should get description:text" do
    get page_description:text_url
    assert_response :success
  end

end
