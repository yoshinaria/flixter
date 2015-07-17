class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_enrollment_for_lesson, :only => [:show]

  def show
    
  end

  private

  def require_enrollment_for_lesson
    this_course = current_lesson.section.course

    if current_user.enrolled_in?(this_course)
      return true
    else
      redirect_to course_path(this_course), alert: 'You need to be enrolled in this course to view lessons'
    end
  end

  helper_method :current_lesson

  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
