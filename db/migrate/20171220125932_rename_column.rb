class RenameColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :kind, :string
    remove_column :movies, :type
  end
end
