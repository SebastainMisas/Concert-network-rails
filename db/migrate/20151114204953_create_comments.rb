class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :description
      t.integer :concert_id

      t.timestamps
    end
  end
end
