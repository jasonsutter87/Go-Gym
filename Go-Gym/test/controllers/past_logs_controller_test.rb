require 'test_helper'

class PastLogsControllerTest < ActionController::TestCase
  setup do
    @past_log = past_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:past_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create past_log" do
    assert_difference('PastLog.count') do
      post :create, past_log: { Date: @past_log.Date, Workout: @past_log.Workout }
    end

    assert_redirected_to past_log_path(assigns(:past_log))
  end

  test "should show past_log" do
    get :show, id: @past_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @past_log
    assert_response :success
  end

  test "should update past_log" do
    patch :update, id: @past_log, past_log: { Date: @past_log.Date, Workout: @past_log.Workout }
    assert_redirected_to past_log_path(assigns(:past_log))
  end

  test "should destroy past_log" do
    assert_difference('PastLog.count', -1) do
      delete :destroy, id: @past_log
    end

    assert_redirected_to past_logs_path
  end
end
