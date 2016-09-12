class AddBoardReferenceToBoardThreads < ActiveRecord::Migration
  def change
    add_reference :board_threads, :board, index: true, foreign_key: true
  end
end
