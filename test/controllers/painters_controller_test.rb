require "test_helper"

class PaintersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @painter = painters(:one)
  end

  test "should get index" do
    get painters_url
    assert_response :success
  end

  test "should get new" do
    get new_painter_url
    assert_response :success
  end

  test "should create painter" do
    assert_difference("Painter.count") do
      post painters_url, params: { painter: { name: @painter.name } }
    end

    assert_redirected_to painter_url(Painter.last)
  end

  test "should show painter" do
    get painter_url(@painter)
    assert_response :success
  end

  test "should get edit" do
    get edit_painter_url(@painter)
    assert_response :success
  end

  test "should update painter" do
    patch painter_url(@painter), params: { painter: { name: @painter.name } }
    assert_redirected_to painter_url(@painter)
  end

  test "should destroy painter" do
    assert_difference("Painter.count", -1) do
      delete painter_url(@painter)
    end

    assert_redirected_to painters_url
  end
end
