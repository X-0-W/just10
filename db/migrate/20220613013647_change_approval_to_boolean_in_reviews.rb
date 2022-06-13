class ChangeApprovalToBooleanInReviews < ActiveRecord::Migration[6.1]
  def up
    remove_column :reviews, :approval
    add_column :reviews, :approval, :boolean, default: false, null: false
  end

  def down
    remove_column :reviews, :approval, :integer
    add_column :reviews, :approval, :integer
  end
end
