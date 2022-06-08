class ChangeScoreToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :score, :float
  end
end
