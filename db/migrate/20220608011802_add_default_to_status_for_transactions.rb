class AddDefaultToStatusForTransactions < ActiveRecord::Migration[6.1]
  def change
    change_column_default :transactions, :status, from: nil, to: 0
  end
end
