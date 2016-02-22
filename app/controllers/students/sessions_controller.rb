class Students::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # def create
  #   begin
  #     @student = Student.from_omniauth(request.env['omniauth.auth'])
  #     session[:student_id] = @student.id
  #     flash[:success] = "Welcome, #{@student.first_name}!"

  #   rescue
  #     flash[:warning] = "There was an error while trying to authenticate you..."
  #   end
  #     redirect_to root_path
  # end

  # def destroy
  #   session.delete(:student_id)
  #   redirect_to root_path
  # end

  private

  # The path used after sign in.
  def after_sign_in_path_for(resource)
    student_show_path(resource.email)
  end

  # You can put the params you want to permit in the empty array.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
