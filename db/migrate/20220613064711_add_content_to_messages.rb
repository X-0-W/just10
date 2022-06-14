class AddContentToMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :content, :string
  end
end
