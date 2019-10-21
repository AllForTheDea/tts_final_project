require 'test_helper'

class CharacterlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @characterline = characterlines(:one)
  end

  test "should get index" do
    get characterlines_url
    assert_response :success
  end

  test "should get new" do
    get new_characterline_url
    assert_response :success
  end

  test "should create characterline" do
    assert_difference('Characterline.count') do
      post characterlines_url, params: { characterline: { character: @characterline.character, line: @characterline.line, project_id: @characterline.project_id } }
    end

    assert_redirected_to characterline_url(Characterline.last)
  end

  test "should show characterline" do
    get characterline_url(@characterline)
    assert_response :success
  end

  test "should get edit" do
    get edit_characterline_url(@characterline)
    assert_response :success
  end

  test "should update characterline" do
    patch characterline_url(@characterline), params: { characterline: { character: @characterline.character, line: @characterline.line, project_id: @characterline.project_id } }
    assert_redirected_to characterline_url(@characterline)
  end

  test "should destroy characterline" do
    assert_difference('Characterline.count', -1) do
      delete characterline_url(@characterline)
    end

    assert_redirected_to characterlines_url
  end
end
