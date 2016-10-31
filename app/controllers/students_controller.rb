class StudentsController < ApplicationController
# prawnto :prawn => { :top_margin => 75 }

  def index
    @students = Student.all
  end

  def show
    respond_to do |format|

      format.html
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text 'Hello World'

        send_data pdf.render  
      end
    end 
  end
end
