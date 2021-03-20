class DropNegotiationsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :negotiations
  end
end
