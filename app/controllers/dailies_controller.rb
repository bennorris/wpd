class DailiesController < ApplicationController

  def new
    @daily = Daily.new
    @project = Project.find_by_id(params[:project_id])
  end

  def create
    @project = Project.find_by_id(params[:project_id])
    @daily = Daily.new(daily_params)
    @daily.project_id = @project.id
    if @daily.save
      redirect_to project_path(@project)
    end
  end

private

def daily_params
  params.require(:daily).permit(:word_count)
end

end
