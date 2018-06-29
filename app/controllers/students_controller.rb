class StudentsController < ApplicationController
  require 'pry'
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    Student.create(first_name: params[:first_name], last_name: params[:last_name], created_at:DateTime.now, updated_at:DateTime.now)
    redirect_to student_path(Student.last.id)
  end

end
