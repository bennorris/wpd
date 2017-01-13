class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to project_url(@project)
    end
  end

  def show
    @project = Project.find_by_id(params[:id])

    if @project.dailies
      sum = @project.goal
      @project.dailies.each do |daily|
        sum -= daily.word_count
      end
      @words_this_week = sum
    else
      @words_this_week = @project.goal
    end
  end

private

def project_params
  params.require(:project).permit(:name, :goal, :period)
end

end
