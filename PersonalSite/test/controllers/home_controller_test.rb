require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get home_name:string_url
    assert_response :success
  end

  test "should get image:string" do
    get home_image:string_url
    assert_response :success
  end

  test "should get description:text" do
    get home_description:text_url
    assert_response :success
  end

end
