require "test_helper"

class AnottationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anottation = anottations(:one)
  end

  test "should get index" do
    get anottations_url
    assert_response :success
  end

  test "should get new" do
    get new_anottation_url
    assert_response :success
  end

  test "should create anottation" do
    assert_difference("Anottation.count") do
      post anottations_url, params: { anottation: { body: @anottation.body } }
    end

    assert_redirected_to anottation_url(Anottation.last)
  end

  test "should show anottation" do
    get anottation_url(@anottation)
    assert_response :success
  end

  test "should get edit" do
    get edit_anottation_url(@anottation)
    assert_response :success
  end

  test "should update anottation" do
    patch anottation_url(@anottation), params: { anottation: { body: @anottation.body } }
    assert_redirected_to anottation_url(@anottation)
  end

  test "should destroy anottation" do
    assert_difference("Anottation.count", -1) do
      delete anottation_url(@anottation)
    end

    assert_redirected_to anottations_url
  end
end
