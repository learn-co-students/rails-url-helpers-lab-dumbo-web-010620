class Student < ActiveRecord::Base
  
  def to_s
    self.first_name + " " + self.last_name
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Studnet.find(params[:id])
    @student.active = !@student.active
    @student.save

    redirect_to student_path(@studnet)
  end

end