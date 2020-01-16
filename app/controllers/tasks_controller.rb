class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new
  end
  
  #newとcreateの違いを確認
  
  def create
    @task = Task.new(task_params)
    
    if @task.save
      flash[:success] = 'Task が正常に作成されました'
      redirect_to @task
    else
      flash.now[:danger] = 'Task が作成されませんでした'
      render :new
    end
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
  end
  
  def destroy
  end
end

def task_params
  params.require(:task).permit(:content)
end
