class ProjectsController < ActionController::Base

def index
  @projects = Project.all
end


def new
  @non_profit = current_non_profit
  @project = Project.new
end

def create
  non_profit = current_non_profit
  @project = Project.new(project_params)
  if @project.save
  redirect_to non_profit_projects_path
  end
end

def show
end

def project_params
   params.require(:project).permit(current_non_profit.id, :name, :github_link, :description)
end

end
# non_profit_id: non_profit.id, name: [:name], github_link: [:github_link], description: [:description] )
