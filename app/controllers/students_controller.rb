class StudentsController < ApplicationController
# prawnto :prawn => { :top_margin => 75 }

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])

    respond_to do |format|

      format.html
      format.pdf do
        
        pdf = Prawn::Document.new
        pdf.text "Nightmare Developer, #{@student.first_name}!", :size => 30, :style => :bold
        pdf.text @student.first_name, :size =>15, :style => :italic #['full_name']
        pdf.text @student.short_bio
        pdf.text @student.photo

        
        send_data pdf.render 
      end
    end 
  end
end
