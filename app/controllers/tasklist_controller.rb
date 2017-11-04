class TasklistController < ApplicationController
 def index
      @tasklists = KADAI.all
  end

  def show
       @tasklists = KADAI.find(params[:id])
  end

  def new
       def new
    @tasklists = KADAI.new
  
  end

  def create
       @tasklists = KADAI.new(message_params)

    if @tasklists.save
      flash[:success] = 'タスクが正常に投稿されました'
      redirect_to @tasklists
    else
      flash.now[:danger] = 'タスクが投稿されませんでした'
      ren
  end

  def edit
  end

  def update
       @tasklists = TASK.find(params[:id])

    if @tasklists.update(tasklists_params)
      flash[:success] = 'Message は正常に更新されました'
      redirect_to @message
    else
      flash.now[:danger] = 'Message は更新されませんでした'
      render :edit
    end

  def destroy
  end
  
    private

   def tasklists_params
    params.require(:tasklists).permit(:content)
   end
end
