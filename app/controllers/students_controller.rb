class StudentsController < ApplicationController
prawnto :prawn => { :top_margin => 75 }

  def index
    
  end

  def show
    @order = "Hello World "    
  end

end
