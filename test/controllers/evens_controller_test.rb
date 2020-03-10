require 'test_helper'

class EvensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @even = evens(:one)
  end

  test "should get index" do
    get evens_url
    assert_response :success
  end

  test "should get new" do
    get new_even_url
    assert_response :success
  end

  test "should create even" do
    assert_difference('Even.count') do
      post evens_url, params: { even: { start: @even.start, title: @even.title } }
    end

    assert_redirected_to even_url(Even.last)
  end

  test "should show even" do
    get even_url(@even)
    assert_response :success
  end

  test "should get edit" do
    get edit_even_url(@even)
    assert_response :success
  end

  test "should update even" do
    patch even_url(@even), params: { even: { start: @even.start, title: @even.title } }
    assert_redirected_to even_url(@even)
  end

  test "should destroy even" do
    assert_difference('Even.count', -1) do
      delete even_url(@even)
    end

    assert_redirected_to evens_url
  end
end
