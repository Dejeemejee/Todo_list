class TodoListsController < ApplicationController

  def index
    @todo_list = TodoList.all
  end

  def new
    @todo_list = TodoList.new
    @time = Time.now
  end

  def show
    @todo_list = TodoList.find(params[:id])
  end

  def create
    @todo_list = TodoList.new(todo_list_params)
    
   if @todo_list.save
     redirect_to action: :index
   else
    render :new, status: :unprocessable_entity
   end
  end

  def edit
    @todo_list = TodoList.find(params[:id])

  end

  def update
    @todo_list = TodoList.find(params[:id])
    
    if @todo_list.update(todo_list_params)
      redirect_to action: :index
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @todo_list = TodoList.find(params[:id])
    @todo_list.destroy
    redirect_to todo_lists_url, notice: 'Todo list was successfully deleted.'
  end

  private
  def todo_list_params
    params.require(:todo_list).permit(:title, :description, :due_date, :created_at)
  end
end
