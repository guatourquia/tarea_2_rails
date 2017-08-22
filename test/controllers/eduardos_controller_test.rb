require 'test_helper'

class EduardosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eduardo = eduardos(:one)
  end

  test "should get index" do
    get eduardos_url
    assert_response :success
  end

  test "should get new" do
    get new_eduardo_url
    assert_response :success
  end

  test "should create eduardo" do
    assert_difference('Eduardo.count') do
      post eduardos_url, params: { eduardo: { descripcion: @eduardo.descripcion, nombre: @eduardo.nombre } }
    end

    assert_redirected_to eduardo_url(Eduardo.last)
  end

  test "should show eduardo" do
    get eduardo_url(@eduardo)
    assert_response :success
  end

  test "should get edit" do
    get edit_eduardo_url(@eduardo)
    assert_response :success
  end

  test "should update eduardo" do
    patch eduardo_url(@eduardo), params: { eduardo: { descripcion: @eduardo.descripcion, nombre: @eduardo.nombre } }
    assert_redirected_to eduardo_url(@eduardo)
  end

  test "should destroy eduardo" do
    assert_difference('Eduardo.count', -1) do
      delete eduardo_url(@eduardo)
    end

    assert_redirected_to eduardos_url
  end
end
