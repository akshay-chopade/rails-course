class TasksController < ApplicationController
  def index
    @tasks = Task.order(:position => :desc)
  end

  
  def show
    @task = Task.find(params[:id]);
  end

  def new
    @count =  Task.count
    @task = Task.new(position: @count+1)
  end

  def create
    @task = Task.new(params.require(:task).permit(:name, :position, :completed, :description))
    if @task.save
      redirect_to tasks_path
    else
      redner('new')
    end
  end

  def edit
  end

  def update
  end

  def delete
  end
  
  def destroy
  end


end
