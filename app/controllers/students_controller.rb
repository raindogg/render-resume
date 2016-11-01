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
        pdf.text @student.full_name, :size =>15, :style => :italic #['full_name']
        pdf.text @student.short_bio
        pdf.text "Email: #{@student.email}"
        pdf.text "LinkedIn: #{@student.linkedin_url}"
        pdf.text "Twitter: @#{@student.twitter_handle}"
        pdf.text ""


        
        send_data pdf.render 
      end
    end 
  end
end
