class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
