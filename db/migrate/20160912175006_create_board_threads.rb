class CreateBoardThreads < ActiveRecord::Migration
  def change
    create_table :board_threads do |t|
      t.string :title
      t.string :content
      t.string :image_url

      t.timestamps null: false
    end
  end
end
