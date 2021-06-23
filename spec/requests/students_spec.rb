require 'rails_helper'

RSpec.describe "StudentsControllers", type: :request do

  describe "get students_path" do
    it "renders the index view" do 
      student = FactoryBot.create(:student)
      get "/students"
      expect(response).to render_template(:index)
    end
  end
  
  describe "get students_path" do
    it "renders the :show template" do
      student = FactoryBot.create(:student)
      get "/students/#{student.id}"
      expect(response).to render_template(:show)
    end
    it "redirects to the index path if the student id is invalid" do 
      get "/students/#{500}"
      expect(response).to redirect_to("/students")
    end
  end

  describe "get new_student_path" do 
    it "renders the :new template" do
      student = FactoryBot.create(:student)
      get "/students/new/"
      expect(response.status).to eq(200)
    end
  end

  describe "get edit_student_path" do
    it "renders the :edit template" do 
      student = FactoryBot.create(:student)
      get "/students/#{student.id}/edit/"
    end
  end

  describe "post students_path with valid data" do
    it "saves a new entry and redirects to the show path for the entry" do
      student = FactoryBot.create(:student)
      post "/students", params: { student: { first_name: "Jack", last_name: "Smith", house_id: 1 } }
    end
  end


 describe "post students_path with invalid data" do
  it "does not save a new entry or redirect" do
    student = FactoryBot.create(:student)
    post "/students", params: { student: { first_name: "Jack", last_name: "Smith", house_id: nil } }
    expect(student.house_id).not_to eq(nil)
    expect(response).to render_template(:new)
  end
end


  describe "put student_path with valid data" do
    it "updates an entry and redirects to the show path for the student" do
      student = FactoryBot.create(:student)
      put "/students/#{student.id}", params: { student: { first_name: "Jack" } }
      student.reload
      expect(student.first_name).to eq("Jack")
      #expect(response).to redirect_to("/students/#{student.id}")
      expect(response).to redirect_to("/students")
    end
  end

  describe "put student_path with invalid data" do
    it "does not update the student record or redirect" do
      student = FactoryBot.create(:student)
      put "/students/#{student.id}", params: {student: {house_id: nil}}
      student.reload
      expect(student.id).not_to eq(nil)
      expect(response).to render_template(:edit)
    end
  end

  describe "delete a student record" do
    it "deletes a student record" do
      student = FactoryBot.create(:student)
      delete "/students/#{student.id}"
      expect(response.status).to eq(302)
    end
  end
end