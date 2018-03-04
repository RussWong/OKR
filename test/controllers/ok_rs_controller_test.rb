require 'test_helper'

class OkRsControllerTest < ActionController::TestCase
  setup do
    @okr = okrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:okrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create okr" do
    assert_difference('Okr.count') do
      post :create, okr: { COF_INDEX: @okr.COF_INDEX, KR1: @okr.KR1, KR1_G: @okr.KR1_G, KR1_T: @okr.KR1_T, KR2: @okr.KR2, KR2_G: @okr.KR2_G, KR2_T: @okr.KR2_T, KR3: @okr.KR3, KR_COMPLETENESS: @okr.KR_COMPLETENESS, KR_G_COF_INDEX: @okr.KR_G_COF_INDEX, KR_G_COMPLETENESS: @okr.KR_G_COMPLETENESS, KR_G_WEIGHT: @okr.KR_G_WEIGHT, KR_T_COF_INDEX: @okr.KR_T_COF_INDEX, KR_T_COMPLETENESS: @okr.KR_T_COMPLETENESS, KR_T_WEIGHT: @okr.KR_T_WEIGHT, MISSION: @okr.MISSION, Objects: @okr.Objects, Objects_G: @okr.Objects_G, Objects_T: @okr.Objects_T, Objects_num: @okr.Objects_num, STRATEGY: @okr.STRATEGY, VISION: @okr.VISION, WEIGHT: @okr.WEIGHT }
    end

    assert_redirected_to okr_path(assigns(:okr))
  end

  test "should show okr" do
    get :show, id: @okr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @okr
    assert_response :success
  end

  test "should update okr" do
    patch :update, id: @okr, okr: { COF_INDEX: @okr.COF_INDEX, KR1: @okr.KR1, KR1_G: @okr.KR1_G, KR1_T: @okr.KR1_T, KR2: @okr.KR2, KR2_G: @okr.KR2_G, KR2_T: @okr.KR2_T, KR3: @okr.KR3, KR_COMPLETENESS: @okr.KR_COMPLETENESS, KR_G_COF_INDEX: @okr.KR_G_COF_INDEX, KR_G_COMPLETENESS: @okr.KR_G_COMPLETENESS, KR_G_WEIGHT: @okr.KR_G_WEIGHT, KR_T_COF_INDEX: @okr.KR_T_COF_INDEX, KR_T_COMPLETENESS: @okr.KR_T_COMPLETENESS, KR_T_WEIGHT: @okr.KR_T_WEIGHT, MISSION: @okr.MISSION, Objects: @okr.Objects, Objects_G: @okr.Objects_G, Objects_T: @okr.Objects_T, Objects_num: @okr.Objects_num, STRATEGY: @okr.STRATEGY, VISION: @okr.VISION, WEIGHT: @okr.WEIGHT }
    assert_redirected_to okr_path(assigns(:okr))
  end

  test "should destroy okr" do
    assert_difference('Okr.count', -1) do
      delete :destroy, id: @okr
    end

    assert_redirected_to okrs_path
  end
end
