require 'test_helper'

class DistributorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distributor = distributors(:one)
  end

  test "should get index" do
    get distributors_url
    assert_response :success
  end

  test "should get new" do
    get new_distributor_url
    assert_response :success
  end

  test "should create distributor" do
    assert_difference('Distributor.count') do
      post distributors_url, params: { distributor: { name: @distributor.name, parent_id: @distributor.parent_id, status: @distributor.status } }
    end

    assert_redirected_to distributor_url(Distributor.last)
  end

  test "should show distributor" do
    get distributor_url(@distributor)
    assert_response :success
  end

  test "should get edit" do
    get edit_distributor_url(@distributor)
    assert_response :success
  end

  test "should update distributor" do
    patch distributor_url(@distributor), params: { distributor: { name: @distributor.name, parent_id: @distributor.parent_id, status: @distributor.status } }
    assert_redirected_to distributor_url(@distributor)
  end

  test "should destroy distributor" do
    assert_difference('Distributor.count', -1) do
      delete distributor_url(@distributor)
    end

    assert_redirected_to distributors_url
  end
end
