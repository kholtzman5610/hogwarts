require 'test_helper'

class CohortControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cohort= cohorts(:one)
  end

  test "should get index" do
    get cohorts_url
    assert_response :success
  end

  test "should get new" do
    get new_cohort_url
    assert_response :success
  end

  test "should create cohort" do
    assert_difference('cohort.count') do
      post cohorts_url, params: { cohort: { name: @cohort.name, professor_id: @cohort.professor_id , course_id: @cohort.course_id  } }
    end

    assert_redirected_to cohort_url(cohort.last)
  end

  test "should show cohort" do
    get cohort_url(@cohort)
    assert_response :success
  end

  test "should get edit" do
    get edit_cohort_url(@cohort)
    assert_response :success
  end

  test "should update cohort" do
    patch cohort_url(@cohort), params: { cohort: { name: @cohort.name, professor_id: @cohort.professor_id , course_id: @cohort.course_id  } }
    assert_redirected_to cohort_url(@cohort)
  end

  test "should destroy cohort" do
    assert_difference('cohort.count', -1) do
      delete cohort_url(@cohort)
    end

    assert_redirected_to cohorts_url
  end
end
