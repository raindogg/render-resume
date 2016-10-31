class StudentsController < ApplicationController
prawnto :prawn => { :top_margin => 75 }

  def index
    @students = Student.all
  end

  def show
    @order = "Hello World "    
  end

end
