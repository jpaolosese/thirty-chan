class BoardThreadController < ApplicationController
  
  # users will only be able to :show, :new, :create
  
  def index
    @threads = BoardThread.all
  end
  
  def show
    @board = Board.find_by_id(params[:board_id])
    @thread = BoardThread.find_by_id(params[:id])
  end
  
  def new
    @board = Board.find_by_id(params[:board_id])
    @thread = BoardThread.new
  end
  
  def create
    @board = Board.find_by_id(params[:board_id])
    @thread = BoardThread.create(thread_params)
  end
  
  def edit
    @board = Board.find_by_id(params[:board_id])
    @thread = BoardThread.find_by_id(params[:id])
  end
  
  def update
    @board = Board.find_by_id(params[:board_id])
    @thread = BoardThread.find_by_id(params[:id])
    @thread.update(thread_params)
  end
  
  def destroy
    @board = Board.find_by_id(params[:board_id])
    @thread = BoardThread.find(params[:id])
    @thread.destroy
  end
  
  private
  
  def thread_params
    params.require(:thread).permit(:title, :content, :image_url)
  end
  
end
