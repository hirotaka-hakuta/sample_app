class TodolistsController < ApplicationController
  def new
    @list=List.new
  end
  def create
    list=List.new(list_param)
    list.save
    redirect_to todolist_path(list.id)
    end
  def show
  @list=List.find(params[:id])
  end
  def index
    @lists =List.all
  end
  private
  def list_param
    params.require(:list).permit(:title, :body)
end
end
