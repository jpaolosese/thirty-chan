class BoardsController < ApplicationController
  
  # Back-of-house work, users will have only have access to boards#show
  
  def index
    @boards = Board.all
  end
  
  def show
    @board = Board.find_by_id([:board_id])
  end
  
  def new
    @board = Board.new
  end
  
  def create
    @board = Board.create(board_params)
  end
  
  def edit
  end
  
  def update
    @board.update(board_params)
  end
  
  def destroy
    @board.board_threads.destroy_all
    @board.destroy
  end
  
  private
  
  def board_params
    params.require(:board).permit(:name, :genre)
  end
  
end
