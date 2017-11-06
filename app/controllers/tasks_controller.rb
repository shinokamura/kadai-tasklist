class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
  end
  
  def create
    @task = Task.new(task_params
    )
    if @task.save
      falash[:success] = 'タスクが正常に保存されました'
      redirect_to @task
    else
      flash.now[:danger] = 'タスクが保存されませんでした'
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end
  
  def update
     @task = Task.find(params[:id])

    if @task.update(task_params)
      flash[:success] = 'タスクは正常に更新されました'
      redirect_to @task
    else
      flash.now[:danger] = 'タスクは更新されませんでした'
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    flash[:success] = 'タスクは正常に削除されました'
    redirect_to tasks_url
  end
  
  private
  
  def task_params
  end
end

