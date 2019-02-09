class Activities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities,:dificult,:string 
  end
end
