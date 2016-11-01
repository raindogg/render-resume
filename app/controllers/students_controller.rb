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

        pdf.image open(@student.photo)
        pdf.text @student.first_name @student.last_name, :size =>15, :style => :italic #['full_name']
        pdf.text @student.short_bio
        pdf.text "Capstone", :size => 20, :style => :bold
        pdf.image open(student.capstones(@student.id)["screenshot"])
        
        pdf.text @student.capstones(@student.id)["name"]

        pdf.text @student.capstones(@student.id)["description"]

        send_data pdf.render 
      end
    end 
  end
end
