class DropTableModels < ActiveRecord::Migration[5.1]
  def change
    drop_table :models
  end
end
