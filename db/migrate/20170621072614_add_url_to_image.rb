class AddUrlToImage < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :url, :string
  end
end
