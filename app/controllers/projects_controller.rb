class ProjectsController < ActionController::Base

def index
end


def new
  @non_profit = current_non_profit
  @project = Project.new
end

def create
  non_profit = current_non_profit
  @project = Project.create(non_profit_id: non_profit.id, name: params[:name], github_link: [:github_link], description: [:description] )
  redirect_to non_profit_projects_path
end

def show
end


end
