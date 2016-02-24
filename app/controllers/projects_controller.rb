class ProjectsController < ActionController::Base

def index
end


def new
  @non_profit = current_non_profit
  @project = Project.new
end

def create
  non_profit = current_non_profit
  @project = Project.create(non_profit: current_non_profit.id, name: params[:name], github_link: [:github_link], description: [:description] )
end

def show
end


end
