class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def devise_parameter_sanitizer
  #   if resource_class == NonProfit
  #     NonProfit::ParameterSanitizer.new(NonProfit, :non_profit, params)
  #   elsif resource_class == Student
  #     Student::ParameterSanitizer.new(Student, :student, params)
  #   end
  # end


end
