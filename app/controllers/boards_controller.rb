class BoardsController < ApplicationController
  
  def index
    @boards = Board.all
  end
  
  def show
    @board = Board.find_by_id([:board_id])
  end
  
  def new
    
  end
  
  def create
    
  end
  
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
end
